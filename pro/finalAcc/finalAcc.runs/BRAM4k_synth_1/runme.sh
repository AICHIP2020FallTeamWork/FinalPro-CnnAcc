#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
# 

echo "This script was generated under a different operating system."
echo "Please update the PATH and LD_LIBRARY_PATH variables below, before executing this script"
exit

if [ -z "$PATH" ]; then
  PATH=D:/vivado_ise_2017/SDK/2017.4/bin;D:/vivado_ise_2017/Vivado/2017.4/ids_lite/ISE/bin/nt64;D:/vivado_ise_2017/Vivado/2017.4/ids_lite/ISE/lib/nt64:D:/vivado_ise_2017/Vivado/2017.4/bin
else
  PATH=D:/vivado_ise_2017/SDK/2017.4/bin;D:/vivado_ise_2017/Vivado/2017.4/ids_lite/ISE/bin/nt64;D:/vivado_ise_2017/Vivado/2017.4/ids_lite/ISE/lib/nt64:D:/vivado_ise_2017/Vivado/2017.4/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='D:/GradeFour/AICHIP/ref/project/repo/FinalPro-CnnAcc/pro/finalAcc/finalAcc.runs/BRAM4k_synth_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vivado -log BRAM4k.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source BRAM4k.tcl
