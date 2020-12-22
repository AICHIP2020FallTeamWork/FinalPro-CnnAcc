import numpy as np

# memining = np.fromfile('D:/GradeFour/AICHIP/ref/project/repo/FinalPro-CnnAcc/data/parameters/conv4.dat', dtype=np.uint8)
# memining = np.fromfile('D:/GradeFour/AICHIP/ref/project/repo/FinalPro-CnnAcc/data/im1/conv1.output.dat', dtype=np.uint8)
# memining = np.fromfile('D:/GradeFour/AICHIP/ref/project/repo/FinalPro-CnnAcc/data/im1/conv2.input.dat', dtype=np.uint8)
# memining = np.fromfile('D:/GradeFour/AICHIP/ref/project/repo/FinalPro-CnnAcc/data/im1/conv4.input.dat', dtype=np.uint8)
# memining = np.fromfile('D:/GradeFour/AICHIP/ref/project/repo/FinalPro-CnnAcc/data/im1/conv4.output.dat', dtype=np.uint8)
# memining = np.fromfile('D:/GradeFour/AICHIP/ref/project/repo/FinalPro-CnnAcc/data/im1/conv3.input.dat', dtype=np.uint8)
# memining = np.fromfile('D:/GradeFour/AICHIP/ref/project/repo/FinalPro-CnnAcc/data/parameters/conv3.dat', dtype=np.uint8)
# memining = np.fromfile('D:/GradeFour/AICHIP/ref/project/repo/FinalPro-CnnAcc/data/im1/conv3.output.dat', dtype=np.uint8)
memining = np.fromfile('D:/OneDrive/course/Grade2_Autumn/FPGA/final-project/new/data/parameters/fc.dat', dtype=np.uint8)


width = 8
# width = 9
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

arr = []

for i in range(len(memining)):
    arr.append(change(int(memining[i]/16)))
    arr.append(change(memining[i]%16))

for i in range(128):
    for j in range(10):
        string = string + str(arr[2*i+256*j]) + str(arr[2*i+256*j+1])
    string = string + ',\n'
print(string)

# with open('D:/GradeFour/AICHIP/ref/project/repo/FinalPro-CnnAcc/data/im1/conv2.input.coe','w') as f1:    #设置文件对象
# with open('D:/GradeFour/AICHIP/ref/project/repo/FinalPro-CnnAcc/data/mydata/conv4.input.coe','w') as f1:    #设置文件对象
# with open('D:/GradeFour/AICHIP/ref/project/repo/FinalPro-CnnAcc/data/mydata/conv4.output.coe','w') as f1:    #设置文件对象
# with open('D:/GradeFour/AICHIP/ref/project/repo/FinalPro-CnnAcc/data/mydata/conv3.input.coe','w') as f1:    #设置文件对象
# with open('D:/GradeFour/AICHIP/ref/project/repo/FinalPro-CnnAcc/data/mydata/conv3.coe','w') as f1:    #设置文件对象
with open('D:/OneDrive/course/Grade2_Autumn/FPGA/final-project/new/data/parameters/fc.coe','w') as f1:    #设置文件对象




    f1.write(string)




