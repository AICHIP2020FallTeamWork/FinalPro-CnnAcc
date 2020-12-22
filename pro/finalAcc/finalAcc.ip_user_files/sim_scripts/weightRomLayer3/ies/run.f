-makelib ies_lib/xil_defaultlib -sv \
  "D:/vivado_ise_2017/Vivado/2017.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "D:/vivado_ise_2017/Vivado/2017.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "D:/vivado_ise_2017/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/blk_mem_gen_v8_4_1 \
  "../../../ipstatic/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../finalAcc.srcs/sources_1/ip/weightRomLayer3/sim/weightRomLayer3.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

