import matplotlib.pyplot as plt
import numpy as np
import h5py
import argparse
import os

data_labels = ['GETX hits', 'GETX I->M misses', 'S->M misses (upgrade misses)', 'Dirty evictions (from lower level)', 'Downgrades (from upper level)']
graph_num= 0
def get_data(path):
    files = os.listdir(path)
    print(files)
    cores = []
    data = []
    for file in files:
        
        print('File:', os.path.join(path, file))
        f = h5py.File(os.path.join(path, file), 'r')
        dset = f["stats"]["root"]
        
        print('Number of cores', len(dset[-1]['wimpy']))
        cores.append(len(dset[-1]['wimpy']))
        current_data = []
        current_data.append(dset[-1]['l2_wimpy'][0]['hGETX'])
        current_data.append(dset[-1]['l2_wimpy'][0]['mGETXIM'])
        current_data.append(dset[-1]['l2_wimpy'][0]['mGETXSM'])
        current_data.append(dset[-1]['l2_wimpy'][0]['PUTX'])
        current_data.append(dset[-1]['l2_wimpy'][0]['INVX'])
        print('L2 data, GETX hits, GETX I->M misses, S->M misses (upgrade misses), Dirty evictions (from lower level), Downgrades (from upper level)')
        print(current_data)

        current_data.append(np.sum(dset[-1]['l1d_wimpy']['hGETX']))
        current_data.append(np.sum(dset[-1]['l1d_wimpy']['mGETXIM']))
        current_data.append(np.sum(dset[-1]['l1d_wimpy']['mGETXSM']))
        current_data.append(np.sum(dset[-1]['l1d_wimpy']['PUTX']))
        current_data.append(np.sum(dset[-1]['l1d_wimpy']['INVX']))

        print('L1d summed data, GETX hits, GETX I->M misses, S->M misses (upgrade misses), Dirty evictions (from lower level), Downgrades (from upper level)')
        print(current_data[5:])
        data.append(current_data)
        
    return data, cores

def create_fig(cCores, rCores, cData, rData, index, ax):
    
    ax.title.set_text(data_labels[index%5])
    cData = [cData[i][index]*0.8 for i in range(len(cData))]
    rData = [rData[i][index] for i in range(len(rData))]
    ax.plot(cCores, cData, label='coup')  # Plot the chart
    ax.plot(rCores, rData, label='regular')  # Plot the chart
    ax.set_xticks(cCores, rCores)
    ax.legend(loc=2, prop={'size': 8})
    return

def create_bar_graph(coup_path, regular_path, name):
    
    script_dir = os.path.dirname(os.path.abspath(__file__))
    
    coup_path = os.path.join(script_dir, coup_path)
    regular_path = os.path.join(script_dir, regular_path)
    
    if not os.path.exists(coup_path):
        print(coup_path, 'was not reconized as a path')
        return
    if not os.path.exists(regular_path):
        print(regular_path, 'was not reconized as a path')
        return
    
    coup_data, coup_cores = get_data(coup_path)
    regular_data, regular_cores = get_data(regular_path)

    # print('coup data and cores')
    # print(coup_data, coup_cores)
    # print('regular data and cores')
    # print(regular_data, regular_cores)

    sorted_index = np.argsort(coup_cores)
    coup_cores = [coup_cores[i] for i in sorted_index]
    coup_data = [coup_data[i] for i in sorted_index]

    sorted_index = np.argsort(regular_cores)
    regular_cores = [regular_cores[i] for i in sorted_index]
    regular_data = [regular_data[i] for i in sorted_index]

    fig = plt.figure()
    fig.suptitle(name, fontsize=16)
    axs = fig.subplots(2, 1) # set number of graphs you want
    # add your graphs here
    create_fig(coup_cores, regular_cores, coup_data, regular_data, 5, axs[0])
    create_fig(coup_cores, regular_cores, coup_data, regular_data, 0, axs[1])
    
    print('should be saving a file')
    plt.tight_layout()
    plt.savefig(name+'.png', format='png', dpi=6000)


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("coup", help="The relative path to the folder with the coup stats h5 files", type=str)
    parser.add_argument("regular", help="The relative path to the folder with the non-coup stats h5 files", type=str)
    parser.add_argument("name", help="Name that the png that will be created", type=str)
    
    args = parser.parse_args()
    create_bar_graph(args.coup, args.regular, args.name)


    # i = 0

    # for j, core in enumerate(coup_cores):
    #     if coup_cores[j] != regular_cores[j]:
    #         print("Benchmarks don't have the same cores")
    #     ax.bar(i, coup_data[j], color='C'+str(1))
    #     i +=1
    #     ax.bar(i, regular_data[j], color='C'+str(2))
    #     i+=2