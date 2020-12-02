import numpy as np
import math

pewt = np.zeros((6,6))
memwt = np.zeros((64,32,5,5))
buffer = np.zeros((6,36))
memin = np.zeros((1,36,36))
pein = np.zeros((6,6))
peout = np.zeros((6,6))
memout = np.zeros((32,32,32))
memout0 = np.zeros((32,32,32))
temp = np.zeros((5))

memining = np.fromfile('/scorpio/home/chenqihang/malaoshi/data/im2/conv1.input.dat', dtype=np.int8)
for a in range(1):
    for b in range(32):
        for c in range(32):
            memin[a][b+2][c+2] = memining[1024*a+32*b+c]

# print(len(memining))

# for a in range(1):
#     for b in range(36):
#         print(memin[a][b])

# print(memin)


memwting = np.fromfile('/scorpio/home/chenqihang/malaoshi/data/parameters/conv1.dat', dtype=np.int8)
for a in range(32):
    for b in range(1):
        for c in range(5):
            for d in range(5):
                memwt[a][b][c][d] = memwting[25*a+25*b+5*c+d]

# print(memwt)

memouting = np.fromfile('/scorpio/home/chenqihang/malaoshi/data/im2/conv1.output.dat', dtype=np.int8)
for a in range(32):
    for b in range(32):
        for c in range(32):
            memout0[a][b][c] = memouting[1024*a+32*b+c]

# print(len(memouting))

# for a in range(1):
#     for b in range(36):
#         print(memout0[a][b])


for k in range(32):
    for d_wcha in range(1):
        for group in range(5):
            for multier in range(5):
                pewt[group][multier] = memwt[k][0][group][multier]
        for c in range(20):
            for group in range(5):
                for colset in range(4):
                    if colset != 3:    
                        for col in range(9):
                            buffer[group][9*colset+col] = buffer[group][9*(colset+1)+col]
                    else:
                        for col in range(9):
                            if group != 4:
                                buffer[group][9*colset+col] = buffer[group+1][col]
                            else:
                                buffer[group][9*colset+col] = memin[0][int(c/4)][9*(c%4)+col]

        for c in range(1152):
            for group in range(5):
                pein[group][0] = pein[group][1]
                pein[group][1] = pein[group][2]
                pein[group][2] = pein[group][3]
                pein[group][3] = pein[group][4]
                pein[group][4] = buffer[group][0]  
                for col in range(0,35):
                    buffer[group][col] = buffer[group][col+1]
            # for group in range(5):    
                if group != 4:
                    buffer[group][35] = buffer[group+1][0]
                else:
                    if ((c%9) == 8):
                        for col in range(9):
                            if c < 1117:
                                buffer[4][27+col] = memin[0][5+int(c/36)][c%36-8+col]

                if (c%36) > 3:
                    for i in range(5):
                        peout[group][i] = pein[group][i] * pewt[group][i]
                    groupout = peout[group][0] + peout[group][1] + peout[group][2] + peout[group][3] + peout[group][4]
                    memout[k][int(c/36)][c%36-4] += groupout

                
            

    for row in range(32):
        for col in range(32):
            memout[k][row][col] = math.floor(memout[k][row][col]/2**9)
            if memout[k][row][col] > 127:
                memout[k][row][col] = 127
            if memout[k][row][col] < -128:
                memout[k][row][col] = -128


nottrue = np.zeros((32,32))
false = 0
for a in range(32):
    for b in range(32):
        for c in range(32):
            if (memout[a][b][c]-memout0[a][b][c]) != 0:
                false += 1
                nottrue[a][b] += 1
    print(nottrue[a])
print(false)


# for a in range(32):
#     for b in range(32):
#             print(memout[a][b])
#             print(memout0[a][b])
#             print('\n')



