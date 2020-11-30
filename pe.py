import numpy as np
import sys



pewt = np.zeros((3,3))
memwt = np.zeros((64,32,3,3))
buffer = np.zeros((3,18))
memin = np.zeros((32,18,18))
pein = np.zeros((3,3))
peout = np.zeros((3,3))
memout = np.zeros((64,18,18))
memout0 = np.zeros((64,18,18))

f = open('Rdata.dat', 'w')

memining = np.fromfile('D:/OneDrive/course/Grade2_Autumn/FPGA/final-project/data/im2/conv2.input.dat', dtype=np.int8)
for a in range(32):
    for b in range(16):
        for c in range(16):
            memin[a][b+1][c+1] = memining[256*a+16*b+c]/(2**5)


memwting = np.fromfile('D:/OneDrive/course/Grade2_Autumn/FPGA/final-project/data/parameters/conv2.dat', dtype=np.int8)
for a in range(64):
    for b in range(32):
        for c in range(3):
            for d in range(3):
                memwt[a][b][c][d] = memwting[288*a+9*b+3*c+d]/(2**8)

# print(memwt)

memouting = np.fromfile('D:/OneDrive/course/Grade2_Autumn/FPGA/final-project/data/im2/conv2.output.dat', dtype=np.int8)
for a in range(64):
    for b in range(16):
        for c in range(16):
            memout0[a][b+1][c+1] = memouting[256*a+16*b+c]/(2**5)


def conv(ifrow, ifcol, inchannel, outchannel, kerrow, kercol, stride, padding, ifmap, filter):
    
    ofmap = np.zeros((int(outchannel), int((ifrow + 2*padding - kerrow)/stride + 1), int((ifcol + 2*padding - kercol)/stride + 1)))

    for outcha in range(outchannel):
        for outr in range(int((ifrow + 2*padding - kerrow)/stride + 1)):
            for outc in range(int((ifcol + 2*padding - kercol)/stride + 1)):
                for x in range(kerrow):
                    for y in range(kercol):
                        for z in range(inchannel):
                            ofmap[outcha][outr][outc] += filter[outcha][z][x][y] * ifmap[z][x+stride*outr][y+stride*outc]

    return ofmap

def averpool(ifrow, ifcol, channel, kerrow, kercol, ifmap):
    
    ofmap = np.zeros((ifrow/kerrow, ifcol/kercol, channel))
    
    for outcha in range(channel):
        for outr in range(ifrow/kerrow):
            for outc in range(ifcol/kercol):
                for x in range(kerrow):
                    for y in range(kercol):
                        ofmap[outr][outc][outcha] += ifmap[x+outr*kerrow][y+outc*kercol][outcha]/(kerrow*kercol)

    return ofmap                    

def maxpool(ifrow, ifcol, channel, kerrow, kercol, ifmap):
    
    ofmap = np.zeros((ifrow/kerrow, ifcol/kercol, channel))
    
    for outcha in range(channel):
        for outr in range(ifrow/kerrow):
            for outc in range(ifcol/kercol):
                for x in range(kerrow):
                    for y in range(kercol):
                        ofmap[outr][outc][outcha] = max(ifmap[x+outr*kerrow][y+outc*kercol][outcha], ofmap[outr][outc][outcha])

    return ofmap

memout = conv(16, 16, 32, 64, 3, 3, 1, 1, memin, memwt)
for a in range(64):
    for b in range(16):    
        print(memout[a][b])








