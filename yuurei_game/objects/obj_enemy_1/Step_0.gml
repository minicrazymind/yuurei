
event_inherited();



if is_moving {
	sprite_index = spr_enemy_1_run
} else {
	sprite_index = spr_enemy_1_idle
}

if mouse_x > x {
	image_xscale = 1
	facing_right = true
} else if mouse_x < x {
	image_xscale = -1
	facing_right = false
}	


