for i in range(17):
    print("ifbuf1["+str(16*i+8-1)+":"+str(16*i)+"] <= ifbuf1["+str(16*i+24-1)+":"+str(16*i+16)+"];")
    print("ifbuf1["+str(16*i+16-1)+":"+str(16*i+8)+"] <= ifbuf1["+str(16*i+32-1)+":"+str(16*i+24)+"];")

for i in range(17):
    print("ifbuf2["+str(16*i+8-1)+":"+str(16*i)+"] <= ifbuf2["+str(16*i+24-1)+":"+str(16*i+16)+"];")
    print("ifbuf2["+str(16*i+16-1)+":"+str(16*i+8)+"] <= ifbuf2["+str(16*i+32-1)+":"+str(16*i+24)+"];")

for i in range(17):
    print("ifbuf3["+str(16*i+8-1)+":"+str(16*i)+"] <= ifbuf3["+str(16*i+24-1)+":"+str(16*i+16)+"];")
    print("ifbuf3["+str(16*i+16-1)+":"+str(16*i+8)+"] <= ifbuf3["+str(16*i+32-1)+":"+str(16*i+24)+"];")

for i in range(17):
    print("ifbuf4["+str(16*i+8-1)+":"+str(16*i)+"] <= ifbuf4["+str(16*i+24-1)+":"+str(16*i+16)+"];")
    print("ifbuf4["+str(16*i+16-1)+":"+str(16*i+8)+"] <= ifbuf4["+str(16*i+32-1)+":"+str(16*i+24)+"];")

for i in range(17):
    print("ifbuf5["+str(16*i+8-1)+":"+str(16*i)+"] <= ifbuf5["+str(16*i+24-1)+":"+str(16*i+16)+"];")
    print("ifbuf5["+str(16*i+16-1)+":"+str(16*i+8)+"] <= ifbuf5["+str(16*i+32-1)+":"+str(16*i+24)+"];")

for i in range(17):
    print("ifbuf6["+str(16*i+8-1)+":"+str(16*i)+"] <= ifbuf6["+str(16*i+24-1)+":"+str(16*i+16)+"];")
    print("ifbuf6["+str(16*i+16-1)+":"+str(16*i+8)+"] <= ifbuf6["+str(16*i+32-1)+":"+str(16*i+24)+"];")



for i in range(8):
    for j in range(32):
        print("registers1["+str(j)+"]["+str(23*i+22)+":"+str(23*i)+"]\
         <= $signed(registers1["+str(2*j)+"]["+str(22*i+21)+":"+str(22*i)+"]) \
         + $signed(registers1["+str(2*j+1)+"]["+str(22*i+21)+":"+str(22*i)+"]);")



