onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib weightROM_opt

do {wave.do}

view wave
view structure
view signals

do {weightROM.udo}

run -all

quit -force
