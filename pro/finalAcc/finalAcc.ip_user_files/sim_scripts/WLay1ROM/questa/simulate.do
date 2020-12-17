onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib WLay1ROM_opt

do {wave.do}

view wave
view structure
view signals

do {WLay1ROM.udo}

run -all

quit -force
