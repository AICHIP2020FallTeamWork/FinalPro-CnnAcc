# for i in range(8):
#     for j in range(32):
#         print("registers1["+str(j)+"]["+str(23*i+22)+":"+str(23*i)+"]\
#          <= $signed(registers1["+str(2*j)+"]["+str(22*i+21)+":"+str(22*i)+"]) \
#          + $signed(registers1["+str(2*j+1)+"]["+str(22*i+21)+":"+str(22*i)+"]);")
for i in range(2,9):
    print(\
"                    if(registers"+str(i)+"6 > 27'b000_0000_0000_0000_0000_0111_1111)begin\n\
                        out"+str(i)+" <= `PosiFull;\n\
                    end else if(registers"+str(i)+"6 < 27'b111_1111_1111_1111_1111_1000_0000)begin\n\
                        out"+str(i)+" <= `NegFull;\n\
                    end else if (out"+str(i)+" >= 0 || (out"+str(i)+" < 0 && registers"+str(i)+"6[4]==0)) begin\n\
                        out"+str(i)+" <= registers"+str(i)+"6>>>5;\n\
                    end else if(out"+str(i)+" < 0 && registers"+str(i)+"6[4]==1)begin\n\
                        out"+str(i)+" <= (registers"+str(i)+"6>>>5) + 1;\n\
                    end")