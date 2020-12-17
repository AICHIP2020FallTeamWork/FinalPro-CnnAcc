onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib BRAM32k_opt

do {wave.do}

view wave
view structure
view signals

do {BRAM32k.udo}

run -all

quit -force
