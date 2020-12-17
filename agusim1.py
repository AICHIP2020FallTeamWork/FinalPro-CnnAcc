import numpy as np
import math

pewt = np.zeros((6,6))
memwt = np.zeros((64,32,5,5))
buffer = np.zeros((6,32))
memin = np.zeros((1,32,32))
pein = np.zeros((6,6))
peout = np.zeros((6,6))
memout = np.zeros((32,32,32))
memout0 = np.zeros((32,32,32))
regpad = np.zeros((5,2))

memining = np.fromfile('/scorpio/home/chenqihang/malaoshi/data/im2/conv1.input.dat', dtype=np.int8)
for a in range(1):
    for b in range(32):
        for c in range(32):
            memin[a][b][c] = memining[1024*a+32*b+c]

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
        for c in range(12):
            for group in range(2,5):
                for colset in range(4):
                    if colset != 3:
                        for col in range(8):
                            buffer[group][8*colset+col] = buffer[group][8*(colset+1)+col]
                    else:
                        for col in range(8):
                            if group != 4:
                                buffer[group][8*colset+col] = buffer[group+1][col]
                            else:
                                buffer[group][8*colset+col] = memin[0][int(c/4)][8*(c%4)+col]
        for group in range(2):
            for reg in range(32):
                buffer[group][reg] = 0
        for c in range(1088):
            for group in range(5):
                pein[group][0] = pein[group][1]
                pein[group][1] = pein[group][2]
                pein[group][2] = pein[group][3]
                pein[group][3] = pein[group][4]
                pein[group][4] = regpad[group][0]  
                regpad[group][0] = regpad[group][1]
                regpad[group][1] = buffer[group][0]
                for col in range(0,31):
                    buffer[group][col] = buffer[group][col+1]    
                
                if group != 4:                    
                    buffer[group][31] = regpad[group+1][0]
                else:
                    if ((c%34 == 9) or (c%34 == 17) or (c%34 == 25) or (c%34 == 33)):
                        for col in range(8):
                            if c < 987:
                                buffer[4][24+col] = memin[0][3+int(c/34)][c%34-9+col]
                            elif c < 1055:
                                buffer[4][24+col] = 0
                    elif ((c%34 == 0) or (c%34 == 1)):
                        buffer[4][31] = 0

                if ((c-2)%34) > 1:
                    for i in range(5):
                        peout[group][i] = pein[group][i] * pewt[group][i]
                    groupout = peout[group][0] + peout[group][1] + peout[group][2] + peout[group][3] + peout[group][4]
                    memout[k][int((c-2)/34)][(c-2)%34-2] += groupout

                
            

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



