if room == rm_game{
	mspd = 6
}
else if room == rm_base{
	mspd = 0.5
}


move_up = false
move_down = false
move_right = false
move_left = false

is_moving = false

facing_right = false



move_dir = 0

x_remainder = 0
y_remainder = 0

bumped_into_something = false

run_spr = spr_zoella_run
idle_spr = spr_zoella_idle