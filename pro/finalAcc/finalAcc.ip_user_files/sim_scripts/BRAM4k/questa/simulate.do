onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib BRAM4k_opt

do {wave.do}

view wave
view structure
view signals

do {BRAM4k.udo}

run -all

quit -force
