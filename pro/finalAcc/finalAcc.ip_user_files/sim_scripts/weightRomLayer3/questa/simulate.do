onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib weightRomLayer3_opt

do {wave.do}

view wave
view structure
view signals

do {weightRomLayer3.udo}

run -all

quit -force
