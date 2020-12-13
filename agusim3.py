import numpy as np
import math

pewt = np.zeros((6,6))
memwt = np.zeros((64,32,3,3))
buffer = np.zeros((6,36))
memin = np.zeros((32,18,18))
pein = np.zeros((6,6))
peout = np.zeros((6,6))
memout = np.zeros((64,18,18))
memout0 = np.zeros((64,18,18))
temp = np.zeros((2,2,2))

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
    for d_wcha in range(8):
        for group in range(6):
            for multier in range(6):
                pewt[group][multier] = memwt[k][4*d_wcha+2*int(group/3)+int(multier/3)][group%3][multier%3]
        for c in range(288):
            for group in range(6):    
                if c < 18:
                    buffer[group][0] = memin[4*d_wcha+2*int(group/3)][group%3][c]
                    buffer[group][18] = memin[4*d_wcha+2*int(group/3)+1][group%3][c]
                else:
                    buffer[group][0] = buffer[group][1]
                    buffer[group][18] = buffer[group][19]
                for col in range(1,17):
                    buffer[group][col] = buffer[group][col+1]
                for col in range(19,35):
                    buffer[group][col] = buffer[group][col+1]
                pein[group][0] = pein[group][1]
                pein[group][3] = pein[group][4]
                pein[group][1] = pein[group][2]
                pein[group][4] = pein[group][5]
                pein[group][2] = buffer[group][0]
                pein[group][5] = buffer[group][18]
                if c%18 > 1:
                    for i in range(6):
                        peout[group][i] = pein[group][i] * pewt[group][i]
                    groupout1 = peout[group][0] + peout[group][1] + peout[group][2]
                    groupout2 = peout[group][3] + peout[group][4] + peout[group][5]
                    memout[k][int(c/18)+1][c%18-1] += (groupout1 + groupout2)
            # 赋值早了一个周期    
            
            for part in range(2):
                for gp in range(2):
                    buffer[3*part+gp][17] = temp[part][gp][0]
                    temp[part][gp][0] = buffer[3*part+gp+1][0]
                    buffer[3*part+gp][35] = temp[part][gp][1]
                    temp[part][gp][1] = buffer[3*part+gp+1][18]
                if c < 271 and c > 0:
                    buffer[3*part+2][17] = memin[4*d_wcha+2*part][int((c-1)/18)+3][c%18-1]
                    buffer[3*part+2][35] = memin[4*d_wcha+2*part+1][int((c-1)/18)+3][c%18-1]


                

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
