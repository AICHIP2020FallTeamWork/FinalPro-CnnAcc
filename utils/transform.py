import numpy as np

lenth=5

memining = np.fromfile('D:/GradeFour/AICHIP/ref/project/repo/FinalPro-CnnAcc/data/parameters/conv1.dat', dtype=np.uint8)
string=''

def change(a):
    if (a == 0):
        return '0'
    if (a == 1):
        return '1'
    if (a == 2):
        return '2'
    if (a == 3):
        return '3'
    if (a == 4):
        return '4'
    if (a == 5):
        return '5'
    if (a == 6):
        return '6'
    if (a == 7):
        return '7'
    if (a == 8):
        return '8'
    if (a == 9):
        return '9'
    if (a == 10):
        return 'a'
    if (a == 11):
        return 'b'
    if (a == 12):
        return 'c'
    if (a == 13):
        return 'd'
    if (a == 14):
        return 'e'
    if (a == 15):
        return 'f'


for i in range(len(memining)):
    string = string + str(change(int(memining[i]/16))) + str(change(memining[i]%16))
    if (i%lenth)==(lenth-1):
        string = string + ',\n'
print(string)

with open('D:/GradeFour/AICHIP/ref/project/repo/FinalPro-CnnAcc/data/parameters/conv1_.coe','w') as f1:    #设置文件对象
    f1.write(string)




