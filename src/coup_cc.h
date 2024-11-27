#ifndef COUP_CC_H
#define COUP_CC_H

#include <bitset>
#include "constants.h"
#include "g_std/g_string.h"
#include "g_std/g_vector.h"
#include "locks.h"
#include "memory_hierarchy.h"
#include "pad.h"
#include "stats.h"
#include "coherence_ctrls.h"

class MEUSIBottomCC : public GlobAlloc {
    private:

        MESIState* array;    /* called MESI state to stay portable with coherence_ctrls, but it should be MEUSIState since it has the U state
                                check memory hierarchy for more info */

        g_vector<MemObject*> parents;
        g_vector<uint32_t> parentRTTs;
        uint32_t numLines;
        uint32_t selfId;

        //Profiling counters
        Counter profGETSHit, profGETSMiss, profGETXHit, profGETXMissIM /*from invalid*/, profGETXMissSM /*from S, i.e. upgrade misses*/;
        Counter profGETUHit, profGETUMiss, profPUTU;        // profile coup stuff
        Counter profPUTS, profPUTX /*received from downstream*/;
        Counter profINV, profINVX, profFWD /*received from upstream*/;
        //Counter profWBIncl, profWBCoh /* writebacks due to inclusion or coherence, received from downstream, does not include PUTS */;
        // TODO: Measuring writebacks is messy, do if needed
        Counter profGETNextLevelLat, profGETNetLat;

        bool nonInclusiveHack;

        PAD();
        lock_t ccLock;
        PAD();
    public:
        MEUSIBottomCC(uint32_t _numLines, uint32_t _selfId, bool _nonInclusiveHack) : numLines(_numLines), selfId(_selfId), nonInclusiveHack(_nonInclusiveHack) {
            array = gm_calloc<MESIState>(numLines);
            for (uint32_t i = 0; i < numLines; i++) {
                array[i] = I;
            }
            futex_init(&ccLock);
        }

        void init(const g_vector<MemObject*>& _parents, Network* network, const char* name);

        inline bool isExclusive(uint32_t lineId) {
            MESIState state = array[lineId];
            return (state == E) || (state == M);
        }

        void initStats(AggregateStat* parentStat) {
            profGETSHit.init("hGETS", "GETS hits");
            profGETXHit.init("hGETX", "GETX hits");
            profGETSMiss.init("mGETS", "GETS misses");

            profGETUHit.init("hGETU", "GETU hits");
            profGETUMiss.init("mGETU", "GETU miss");
            profPUTU.init("PUTU", "Reduce writeback");

            profGETXMissIM.init("mGETXIM", "GETX I->M misses");
            profGETXMissSM.init("mGETXSM", "GETX S->M misses (upgrade misses)");
            profPUTS.init("PUTS", "Clean evictions (from lower level)");
            profPUTX.init("PUTX", "Dirty evictions (from lower level)");
            profINV.init("INV", "Invalidates (from upper level)");
            profINVX.init("INVX", "Downgrades (from upper level)");
            profFWD.init("FWD", "Forwards (from upper level)");
            profGETNextLevelLat.init("latGETnl", "GET request latency on next level");
            profGETNetLat.init("latGETnet", "GET request latency on network to next level");

            parentStat->append(&profGETSHit);
            parentStat->append(&profGETXHit);
            parentStat->append(&profGETSMiss);
            parentStat->append(&profGETXMissSM);
            parentStat->append(&profPUTS);
            parentStat->append(&profPUTX);
            parentStat->append(&profINV);
            parentStat->append(&profINVX);
            parentStat->append(&profFWD);
            parentStat->append(&profGETNextLevelLat);
            parentStat->append(&profGETNetLat);

            // profile coup msgs
            parentStat->append(&profGETUHit);
            parentStat->append(&profGETUMiss);
            parentStat->append(&profPUTU);
        }

        uint64_t processEviction(Address wbLineAddr, uint32_t lineId, bool lowerLevelWriteback, uint64_t cycle, uint32_t srcId);

        uint64_t processAccess(Address lineAddr, uint32_t lineId, AccessType type, uint64_t cycle, uint32_t srcId, uint32_t flags);

        void processWritebackOnAccess(Address lineAddr, uint32_t lineId, AccessType type);

        void processInval(Address lineAddr, uint32_t lineId, InvType type, bool* reqWriteback);

        uint64_t processNonInclusiveWriteback(Address lineAddr, AccessType type, uint64_t cycle, MESIState* state, uint32_t srcId, uint32_t flags);

        inline void lock() {
            futex_lock(&ccLock);
        }

        inline void unlock() {
            futex_unlock(&ccLock);
        }

        /* Replacement policy query interface */
        inline bool isValid(uint32_t lineId) {
            return array[lineId] != I;
        }

        //Could extend with isExclusive, isDirty, etc, but not needed for now.

    private:
        uint32_t getParentId(Address lineAddr);

};

class MEUSITopCC : public GlobAlloc {
    private:
        struct Entry {
            uint32_t numSharers;
            std::bitset<MAX_CACHE_CHILDREN> sharers;
            bool exclusive;
            bool coupState;

            void clear() {
                coupState = false;
                exclusive = false;
                numSharers = 0;
                sharers.reset();
            }

            bool isEmpty() {
                return numSharers == 0;
            }

            bool isExclusive() {
                return (numSharers == 1) && (exclusive);
            }
        };

        Entry* array;
        g_vector<BaseCache*> children;
        g_vector<uint32_t> childrenRTTs;
        uint32_t numLines;

        bool nonInclusiveHack;

        PAD();
        lock_t ccLock;
        PAD();

    public:
        MEUSITopCC(uint32_t _numLines, bool _nonInclusiveHack) : numLines(_numLines), nonInclusiveHack(_nonInclusiveHack) {
            array = gm_calloc<Entry>(numLines);
            for (uint32_t i = 0; i < numLines; i++) {
                array[i].clear();
            }

            futex_init(&ccLock);
        }

        void init(const g_vector<BaseCache*>& _children, Network* network, const char* name);

        uint64_t processEviction(Address wbLineAddr, uint32_t lineId, bool* reqWriteback, uint64_t cycle, uint32_t srcId);

        uint64_t processAccess(Address lineAddr, uint32_t lineId, AccessType type, uint32_t childId, bool haveExclusive,
                MESIState* childState, bool* inducedWriteback, uint64_t cycle, uint32_t srcId, uint32_t flags);

        uint64_t processInval(Address lineAddr, uint32_t lineId, InvType type, bool* reqWriteback, uint64_t cycle, uint32_t srcId);

        inline void lock() {
            futex_lock(&ccLock);
        }

        inline void unlock() {
            futex_unlock(&ccLock);
        }

        /* Replacement policy query interface */
        inline uint32_t numSharers(uint32_t lineId) {
            return array[lineId].numSharers;
        }

    private:
        uint64_t sendInvalidates(Address lineAddr, uint32_t lineId, InvType type, bool* reqWriteback, uint64_t cycle, uint32_t srcId);
};

#endif