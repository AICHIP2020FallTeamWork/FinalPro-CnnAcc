import numpy as np
import math

pewt = np.zeros((3,3))
memwt = np.zeros((64,32,3,3))
buffer = np.zeros((3,18))
memin = np.zeros((32,18,18))
pein = np.zeros((3,3))
peout = np.zeros((3,3))
memout = np.zeros((64,18,18))
memout0 = np.zeros((64,18,18))

memining = np.fromfile('D:/OneDrive/course/Grade2_Autumn/FPGA/final-project/data/im1/conv2.input.dat', dtype=np.int8)
for a in range(32):
    for b in range(16):
        for c in range(16):
            memin[a][b+1][c+1] = memining[256*a+16*b+c]

# print(len(memining))

# for a in range(32):
#     for b in range(16):
#         print(memin[a][b])

# print(memin)


memwting = np.fromfile('D:/OneDrive/course/Grade2_Autumn/FPGA/final-project/data/parameters/conv2.dat', dtype=np.int8)
for a in range(64):
    for b in range(32):
        for c in range(3):
            for d in range(3):
                memwt[a][b][c][d] = memwting[288*a+9*b+3*c+d]

# print(memwt)

memouting = np.fromfile('D:/OneDrive/course/Grade2_Autumn/FPGA/final-project/data/im1/conv2.output.dat', dtype=np.int8)
for a in range(64):
    for b in range(16):
        for c in range(16):
            memout0[a][b+1][c+1] = memouting[256*a+16*b+c]

# print(len(memouting))

# for a in range(64):
#     for b in range(18):
#         print(memout0[a][b])


for k in range(64):
    for wcha in range(32):
        for wrow in range(3):
            for wcol in range(3):
                pewt[wrow][wcol] = memwt[k][wcha][wrow][wcol]
        for row in range(18):
            for col in range(18):
                buffer[0][col] = buffer[1][col]
                buffer[1][col] = buffer[2][col]
                buffer[2][col] = memin[wcha][row][col]
            # print(buffer[0][15])
            if row > 1:
                for col in range(18):
                    groupout = np.zeros((3))
                    setout = 0
                    for group in range(3):
                        pein[group][0] = pein[group][1]
                        pein[group][1] = pein[group][2]
                        pein[group][2] = buffer[group][col]
                        # if col == 17:
                        #     print(pein)
                        if col > 1:
                            for pe in range(3):
                                peout[group][pe] = pein[group][pe] * pewt[group][pe]
                                groupout[group] += peout[group][pe]
                        setout += groupout[group]
                    memout[k][row-1][col-1] += setout
                    # if memout[k][row-1][col-1] > 3.96875:
                    #     memout[k][row-1][col-1] = 3.96875
                    # if memout[k][row-1][col-1] < -4:
                    #     memout[k][row-1][col-1] = -4 
    for row in range(18):
        for col in range(18):
            memout[k][row][col] = math.floor(memout[k][row][col]/2**8)
            if memout[k][row][col] > 127:
                memout[k][row][col] = 127
            if memout[k][row][col] < -128:
                memout[k][row][col] = -128

false = 0
for a in range(64):
    for b in range(18):
        for c in range(18):
            if (memout[a][b][c]-memout0[a][b][c]) != 0:
                false += 1
print(false)

# for a in range(64):
#     for b in range(18):
#             print(memout[a][b]-memout0[a][b])



