if {$argc != 1} {
  puts "Expected: <project_to_synthesize>"
  exit
}

open_project [lindex $argv 0]

# open hardware server
open_hw
connect_hw_server
open_hw_target
set_property PROGRAM.FILE {/home/uzahid/workspace/billiard_game/vivado/billiard_game/billiard_game.runs/impl_1/game_wrapper.bit} [get_hw_devices xc7a100t_0]
current_hw_device [get_hw_devices xc7a100t_0]
refresh_hw_device -update_hw_probes false [lindex [get_hw_devices xc7a100t_0] 0]

# program
set_property PROBES.FILE {} [get_hw_devices xc7a100t_0]
set_property FULL_PROBES.FILE {} [get_hw_devices xc7a100t_0]
set_property PROGRAM.FILE {/home/uzahid/workspace/billiard_game/vivado/billiard_game/billiard_game.runs/impl_1/game_wrapper.bit} [get_hw_devices xc7a100t_0]
program_hw_devices [get_hw_devices xc7a100t_0]
refresh_hw_device [lindex [get_hw_devices xc7a100t_0] 0]
