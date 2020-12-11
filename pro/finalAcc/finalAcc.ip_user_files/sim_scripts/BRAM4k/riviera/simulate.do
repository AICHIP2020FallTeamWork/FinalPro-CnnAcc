onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+BRAM4k -L xil_defaultlib -L xpm -L blk_mem_gen_v8_4_1 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.BRAM4k xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {BRAM4k.udo}

run -all

endsim

quit -force
