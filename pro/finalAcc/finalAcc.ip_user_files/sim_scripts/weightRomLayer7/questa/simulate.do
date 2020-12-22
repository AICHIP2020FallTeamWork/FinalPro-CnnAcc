onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib weightRomLayer7_opt

do {wave.do}

view wave
view structure
view signals

do {weightRomLayer7.udo}

run -all

quit -force
