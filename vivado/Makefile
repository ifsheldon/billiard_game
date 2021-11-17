


.PHONY: all make_proj synth_proj

all: make_proj synth_proj

master: clean_all all prog_device

make_proj:
	vivado -mode batch -notrace -source "./scripts/make-vivado-proj.tcl"

open_proj:
	vivado -mode gui "billiard_game/billiard_game.xpr"

synth_proj:
	vivado -mode batch -notrace -source "./scripts/synth-vivado-proj.tcl" -tclargs "billiard_game/billiard_game.xpr"
	cp -f ./billiard_game/billiard_game.runs/impl_1/GAME_TOP.bit ./game.bit
	echo "Done! Game Bitstream available at ./game.bit"

prog_device:
	vivado -mode batch -notrace -source "./scripts/prog_device.tcl" -tclargs "billiard_game/billiard_game.xpr"

clean:
	rm -rf .Xil vivado* NA webtalk*

clean_all: clean
	rm -rf "billiard_game"



