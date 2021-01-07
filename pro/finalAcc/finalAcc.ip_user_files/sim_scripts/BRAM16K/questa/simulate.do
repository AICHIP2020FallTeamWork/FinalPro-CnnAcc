onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib BRAM16K_opt

do {wave.do}

view wave
view structure
view signals

do {BRAM16K.udo}

run -all

quit -force
