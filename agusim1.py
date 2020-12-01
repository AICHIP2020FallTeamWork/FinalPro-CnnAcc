import numpy as np
import math

pewt = np.zeros((6,6))
memwt = np.zeros((64,32,5,5))
buffer = np.zeros((6,36))
memin = np.zeros((1,36,36))
pein = np.zeros((6,6))
peout = np.zeros((6,6))
memout = np.zeros((64,32,32))
memout0 = np.zeros((64,32,32))
temp = np.zeros((5))

memining = np.fromfile('D:/OneDrive/course/Grade2_Autumn/FPGA/final-project/data/im1/conv1.input.dat', dtype=np.int8)
for a in range(1):
    for b in range(32):
        for c in range(32):
            memin[a][b+2][c+2] = memining[1024*a+32*b+c]

# print(len(memining))

# for a in range(32):
#     for b in range(16):
#         print(memin[a][b])

# print(memin)


memwting = np.fromfile('D:/OneDrive/course/Grade2_Autumn/FPGA/final-project/data/parameters/conv1.dat', dtype=np.int8)
for a in range(32):
    for b in range(1):
        for c in range(5):
            for d in range(5):
                memwt[a][b][c][d] = memwting[25*a+25*b+5*c+d]

# print(memwt)

memouting = np.fromfile('D:/OneDrive/course/Grade2_Autumn/FPGA/final-project/data/im1/conv1.output.dat', dtype=np.int8)
for a in range(32):
    for b in range(32):
        for c in range(32):
            memout0[a][b][c] = memouting[1024*a+32*b+c]

# print(len(memouting))

# for a in range(64):
#     for b in range(18):
#         print(memout0[a][b])


for k in range(32):
    for d_wcha in range(1):
        for group in range(5):
            for multier in range(5):
                pewt[group][multier] = memwt[k][0][group][multier]
        for c in range(1152):
            for group in range(5):    
                if c < 36:
                    buffer[group][0] = memin[0][group][c]
                else:
                    buffer[group][0] = buffer[group][1]
                for col in range(1,35):
                    buffer[group][col] = buffer[group][col+1]
                pein[group][0] = pein[group][1]
                pein[group][1] = pein[group][2]
                pein[group][2] = pein[group][3]
                pein[group][3] = pein[group][4]
                pein[group][4] = buffer[group][0]
                if c%36 > 3:
                    for i in range(5):
                        peout[group][i] = pein[group][i] * pewt[group][i]
                    groupout = peout[group][0] + peout[group][1] + peout[group][2] + peout[group][3] + peout[group][4]
                    memout[k][int(c/36)][c%36-4] += groupout
            # 赋值早了一个周期    
            
            for part in range(4):
                buffer[part][35] = temp[part]
                temp[part] = buffer[part+1][0]
                if c < 1117 and c > 0:
                    buffer[4][35] = memin[0][int((c-1)/36)+5][c%36-1]


                

    for row in range(32):
        for col in range(32):
            memout[k][row][col] = math.floor(memout[k][row][col]/2**9)
            if memout[k][row][col] > 127:
                memout[k][row][col] = 127
            if memout[k][row][col] < -128:
                memout[k][row][col] = -128



false = 0
for a in range(32):
    for b in range(32):
        for c in range(32):
            if (memout[a][b][c]-memout0[a][b][c]) != 0:
                false += 1
print(false)

# for a in range(64):
#     for b in range(18):
#             print(memout[a][b]-memout0[a][b])



