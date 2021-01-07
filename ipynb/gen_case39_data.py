import os
import matlab.engine
import os

# generate the dataset by COSMIC
print("> start generating N-2 Contingency Dastaset")

current_dir = os.getcwd()
os.chdir("../matlab/")

eng = matlab.engine.start_matlab()

for i in range(1, 25):
    for j in range(1, 25):
        if i == j:
            pass
        else:
            print()
            print("- tripped branch index: {} & {}".format(i, j))
            print()
            eng.sim_case39_n_2(1, 2, False)

os.chdir(current_dir)
