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


// Non-terminal CC; accepts GETS/X and PUTS/X accesses
class MEUSICC : public CC {
    private:
        MEUSITopCC* tcc;
        MEUSIBottomCC* bcc;
        uint32_t numLines;
        bool nonInclusiveHack;
        g_string name;

    public:
        //Initialization
        MEUSICC(uint32_t _numLines, bool _nonInclusiveHack, g_string& _name) : tcc(nullptr), bcc(nullptr),
            numLines(_numLines), nonInclusiveHack(_nonInclusiveHack), name(_name) {}

        void setParents(uint32_t childId, const g_vector<MemObject*>& parents, Network* network) {
            bcc = new MEUSIBottomCC(numLines, childId, nonInclusiveHack);
            bcc->init(parents, network, name.c_str());
        }

        void setChildren(const g_vector<BaseCache*>& children, Network* network) {
            tcc = new MEUSITopCC(numLines, nonInclusiveHack);
            tcc->init(children, network, name.c_str());
        }

        void initStats(AggregateStat* cacheStat) {
            //no tcc stats
            bcc->initStats(cacheStat);
        }

        //Access methods
        bool startAccess(MemReq& req) {
            assert((req.type == GETS) || (req.type == GETX) || (req.type == PUTS) || (req.type == PUTX) || (req.type == GETU) || (req.type == PUTU));

            /* Child should be locked when called. We do hand-over-hand locking when going
             * down (which is why we require the lock), but not when going up, opening the
             * child to invalidation races here to avoid deadlocks.
             */
            if (req.childLock) {
                futex_unlock(req.childLock);
            }

            tcc->lock(); //must lock tcc FIRST
            bcc->lock();

            /* The situation is now stable, true race-wise. No one can touch the child state, because we hold
             * both parent's locks. So, we first handle races, which may cause us to skip the access.
             */
            bool skipAccess = CheckForMESIRace(req.type /*may change*/, req.state, req.initialState);
            return skipAccess;
        }

        bool shouldAllocate(const MemReq& req) {
            if ((req.type == GETU) || (req.type == GETS) || (req.type == GETX)) {
                return true;
            } else {
                assert((req.type == PUTS) || (req.type == PUTX)  || (req.type == PUTU));
                if (!nonInclusiveHack) {
                    panic("[%s] We lost inclusion on this line! 0x%lx, type %s, childId %d, childState %s", name.c_str(),
                            req.lineAddr, AccessTypeName(req.type), req.childId, MESIStateName(*req.state));
                }
                return false;
            }
        }

        uint64_t processEviction(const MemReq& triggerReq, Address wbLineAddr, int32_t lineId, uint64_t startCycle) {
            bool lowerLevelWriteback = false;
            uint64_t evCycle = tcc->processEviction(wbLineAddr, lineId, &lowerLevelWriteback, startCycle, triggerReq.srcId); //1. if needed, send invalidates/downgrades to lower level
            evCycle = bcc->processEviction(wbLineAddr, lineId, lowerLevelWriteback, evCycle, triggerReq.srcId); //2. if needed, write back line to upper level
            return evCycle;
        }

        uint64_t processAccess(const MemReq& req, int32_t lineId, uint64_t startCycle, uint64_t* getDoneCycle = nullptr) {
            uint64_t respCycle = startCycle;

            //Handle non-inclusive writebacks by bypassing
            //NOTE: Most of the time, these are due to evictions, so the line is not there. But the second condition can trigger in NUCA-initiated
            //invalidations. The alternative with this would be to capture these blocks, since we have space anyway. This is so rare is doesn't matter,
            //but if we do proper NI/EX mid-level caches backed by directories, this may start becoming more common (and it is perfectly acceptable to
            //upgrade without any interaction with the parent... the child had the permissions!)
            if (lineId == -1 || (((req.type == PUTS) || (req.type == PUTX)) && !bcc->isValid(lineId))) { //can only be a non-inclusive wback
                assert(nonInclusiveHack);
                assert((req.type == PUTS) || (req.type == PUTX) );
                respCycle = bcc->processNonInclusiveWriteback(req.lineAddr, req.type, startCycle, req.state, req.srcId, req.flags);
            } else {
                //Prefetches are side requests and get handled a bit differently
                bool isPrefetch = req.flags & MemReq::PREFETCH;
                assert(!isPrefetch || req.type == GETS || req.type == GETU);
                uint32_t flags = req.flags & ~MemReq::PREFETCH; //always clear PREFETCH, this flag cannot propagate up

                //if needed, fetch line or upgrade miss from upper level
                respCycle = bcc->processAccess(req.lineAddr, lineId, req.type, startCycle, req.srcId, flags);
                if (getDoneCycle) *getDoneCycle = respCycle;
                if (!isPrefetch) { //prefetches only touch bcc; the demand request from the core will pull the line to lower level
                    //At this point, the line is in a good state w.r.t. upper levels
                    bool lowerLevelWriteback = false;
                    //change directory info, invalidate other children if needed, tell requester about its state
                    respCycle = tcc->processAccess(req.lineAddr, lineId, req.type, req.childId, bcc->isExclusive(lineId), req.state,
                            &lowerLevelWriteback, respCycle, req.srcId, flags);
                    if (lowerLevelWriteback) {
                        //Essentially, if tcc induced a writeback, bcc may need to do an E->M transition to reflect that the cache now has dirty data
                        bcc->processWritebackOnAccess(req.lineAddr, lineId, req.type);
                    }
                }
            }
            return respCycle;
        }

        void endAccess(const MemReq& req) {
            //Relock child before we unlock ourselves (hand-over-hand)
            if (req.childLock) {
                futex_lock(req.childLock);
            }

            bcc->unlock();
            tcc->unlock();
        }

        //Inv methods
        void startInv() {
            bcc->lock(); //note we don't grab tcc; tcc serializes multiple up accesses, down accesses don't see it
        }

        uint64_t processInv(const InvReq& req, int32_t lineId, uint64_t startCycle) {
            uint64_t respCycle = tcc->processInval(req.lineAddr, lineId, req.type, req.writeback, startCycle, req.srcId); //send invalidates or downgrades to children
            bcc->processInval(req.lineAddr, lineId, req.type, req.writeback); //adjust our own state

            bcc->unlock();
            return respCycle;
        }

        //Repl policy interface
        uint32_t numSharers(uint32_t lineId) {return tcc->numSharers(lineId);}
        bool isValid(uint32_t lineId) {return bcc->isValid(lineId);}
};

// Terminal CC, i.e., without children --- accepts GETS/X, but not PUTS/X
class MEUSITerminalCC : public CC {
    private:
        MEUSIBottomCC* bcc;
        uint32_t numLines;
        g_string name;

    public:
        //Initialization
        MEUSITerminalCC(uint32_t _numLines, const g_string& _name) : bcc(nullptr), numLines(_numLines), name(_name) {}

        void setParents(uint32_t childId, const g_vector<MemObject*>& parents, Network* network) {
            bcc = new MEUSIBottomCC(numLines, childId, false /*inclusive*/);
            bcc->init(parents, network, name.c_str());
        }

        void setChildren(const g_vector<BaseCache*>& children, Network* network) {
            panic("[%s] MESITerminalCC::setChildren cannot be called -- terminal caches cannot have children!", name.c_str());
        }

        void initStats(AggregateStat* cacheStat) {
            bcc->initStats(cacheStat);
        }

        //Access methods
        bool startAccess(MemReq& req) {
            assert((req.type == GETS) || (req.type == GETX) || req.type == GETU); //no puts!

            /* Child should be locked when called. We do hand-over-hand locking when going
             * down (which is why we require the lock), but not when going up, opening the
             * child to invalidation races here to avoid deadlocks.
             */
            if (req.childLock) {
                futex_unlock(req.childLock);
            }

            bcc->lock();

            /* The situation is now stable, true race-wise. No one can touch the child state, because we hold
             * both parent's locks. So, we first handle races, which may cause us to skip the access.
             */
            bool skipAccess = CheckForMESIRace(req.type /*may change*/, req.state, req.initialState);
            return skipAccess;
        }

        bool shouldAllocate(const MemReq& req) {
            return true;
        }

        uint64_t processEviction(const MemReq& triggerReq, Address wbLineAddr, int32_t lineId, uint64_t startCycle) {
            bool lowerLevelWriteback = false;
            uint64_t endCycle = bcc->processEviction(wbLineAddr, lineId, lowerLevelWriteback, startCycle, triggerReq.srcId); //2. if needed, write back line to upper level
            return endCycle;  // critical path unaffected, but TimingCache needs it
        }

        uint64_t processAccess(const MemReq& req, int32_t lineId, uint64_t startCycle,  uint64_t* getDoneCycle = nullptr) {
            
            assert(lineId != -1);
            assert(!getDoneCycle);
            //if needed, fetch line or upgrade miss from upper level
            uint64_t respCycle = bcc->processAccess(req.lineAddr, lineId, req.type, startCycle, req.srcId, req.flags);
            //at this point, the line is in a good state w.r.t. upper levels
            return respCycle;
        }

        void endAccess(const MemReq& req) {
            //Relock child before we unlock ourselves (hand-over-hand)
            if (req.childLock) {
                futex_lock(req.childLock);
            }
            bcc->unlock();
        }

        //Inv methods
        void startInv() {
            bcc->lock();
        }

        uint64_t processInv(const InvReq& req, int32_t lineId, uint64_t startCycle) {
            bcc->processInval(req.lineAddr, lineId, req.type, req.writeback); //adjust our own state
            bcc->unlock();
            return startCycle; //no extra delay in terminal caches
        }

        //Repl policy interface
        uint32_t numSharers(uint32_t lineId) {return 0;} //no sharers
        bool isValid(uint32_t lineId) {return bcc->isValid(lineId);}
};

#endif