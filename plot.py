import matplotlib.pyplot as plt
import numpy as np
import h5py
import argparse
import os

def get_data(path, l2, l1):
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
        for string in l2:
            try:
                current_data.append(dset[-1]['l2_wimpy'][0][string])
            except:
                 current_data.append(0)
        
        for string in l1:
            try:
                current_data.append(np.sum(dset[-1]['l1_wimpy'][string]))
            except:
                 current_data.append(0)
        
        
        print(current_data)
        data.append(current_data)
        
    return data, cores



def create_bar_graph(coup_path, regular_path, name, l2, l1):
    
    script_dir = os.path.dirname(os.path.abspath(__file__))
    
    coup_path = os.path.join(script_dir, coup_path)
    regular_path = os.path.join(script_dir, regular_path)
    
    if not os.path.exists(coup_path):
        print(coup_path, 'was not reconized as a path')
        return
    if not os.path.exists(regular_path):
        print(regular_path, 'was not reconized as a path')
        return
    
    coup_data, coup_cores = get_data(coup_path, l2, l1)
    regular_data, regular_cores = get_data(regular_path, l2, l1)

    sorted_index = np.argsort(coup_cores)
    coup_cores = [coup_cores[i] for i in sorted_index]
    coup_data = [coup_data[i] for i in sorted_index]

    sorted_index = np.argsort(regular_cores)
    regular_cores = [regular_cores[i] for i in sorted_index]
    regular_data = [regular_data[i] for i in sorted_index]
    
    # l2 data
    for k in range(len(l2)):
        fig = plt.figure()
        fig.suptitle(name+' '+l2[k], fontsize=16)
        ax = fig.add_subplot(111)

        cData = [coup_data[j][k] for j in range(len(coup_data))]
        rData = [regular_data[j][k] for j in range(len(regular_data))]
        ax.plot(coup_cores, cData, label='coup')  # Plot the chart
        ax.plot(regular_cores, rData, label='regular')  # Plot the chart
        ax.set_xticks(regular_cores)
        fig.legend(loc=2, prop={'size': 8})
        
        
        print('should be saving a file')
        fig.tight_layout()
        if(not os.path.exists('plots')):
            os.mkdir('plots')
        fig.savefig('plots/l2_'+name+'_'+l2[k]+".png", format='png', dpi=600)

    # L1 data
    for i in range(len(l1)):
        fig = plt.figure()
        fig.suptitle(name+' '+l1[i], fontsize=16)
        ax = fig.add_subplot(111)
        

        cData = [coup_data[j][i] for j in range(len(coup_data))]
        rData = [regular_data[j][i] for j in range(len(regular_data))]
        ax.plot(coup_cores, cData, label='coup')  # Plot the chart
        ax.plot(regular_cores, rData, label='regular')  # Plot the chart
        ax.set_xticks(regular_cores)
        fig.legend(loc=2, prop={'size': 8})
        
        
        print('should be saving a file')
        fig.tight_layout()
        if(not os.path.exists('plots')):
            os.mkdir('plots')
        fig.savefig('plots/l1_'+name+'_'+l1[i]+".png", format='png', dpi=600)


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("coup", help="The relative path to the folder with the coup stats h5 files", type=str)
    parser.add_argument("regular", help="The relative path to the folder with the non-coup stats h5 files", type=str)
    parser.add_argument("name", help="Name that the png that will be created", type=str)
    parser.add_argument("-l2", nargs='+', help="all the l2 arguments you want to make graphs for")
    parser.add_argument("-l1", nargs='+', help="all the l1 arguments you want to make graphs for")
    
    args = parser.parse_args()
    create_bar_graph(args.coup, args.regular, args.name, args.l2, args.l1)


    # i = 0

    # for j, core in enumerate(coup_cores):
    #     if coup_cores[j] != regular_cores[j]:
    #         print("Benchmarks don't have the same cores")
    #     ax.bar(i, coup_data[j], color='C'+str(1))
    #     i +=1
    #     ax.bar(i, regular_data[j], color='C'+str(2))
    #     i+=2

    # def create_fig(cCores, rCores, cData, rData, index, ax):
    
    # #ax.title.set_text(data_labels[index%3])
    # cData = [cData[i][index] for i in range(len(cData))]
    # rData = [rData[i][index] for i in range(len(rData))]
    # ax.plot(cCores, cData, label='coup')  # Plot the chart
    # ax.plot(rCores, rData, label='regular')  # Plot the chart
    # ax.set_xticks(cCores, rCores)
    # ax.legend(loc=2, prop={'size': 8})
    # return

    # print('coup data and cores')
    # print(coup_data, coup_cores)
    # print('regular data and cores')
    # print(regular_data, regular_cores)




    # row = int(len(data)/2)
        # col = len(data) - row
        # axs = fig.subplots(1, len(data))
        # 
        #     axs[i].title.set_text(data[i])
        #     cData = [coup_data[j][i] for j in range(len(coup_data))]
        #     rData = [regular_data[j][i] for j in range(len(regular_data))]
        #     axs[i].plot(coup_cores, cData, label='coup')  # Plot the chart
        #     axs[i].plot(regular_cores, rData, label='regular')  # Plot the chart
        #     print(coup_cores, regular_cores)
        #     axs[i].set_xticks(regular_cores)
        #     axs[i].legend(loc=2, prop={'size': 8})
        #     axs[i].set_box_aspect(1)