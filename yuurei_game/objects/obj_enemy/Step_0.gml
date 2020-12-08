
depth = -y


if point_distance(x,y,follow_targ.x,follow_targ.y) > attack_range{

	path_x = follow_targ.x
	path_y = follow_targ.y
	if cur_mspd < mspd {
		cur_mspd += 0.1
	}
	sprite_index = run_spr
	
	
} else{

	path_x = x
	path_y = y
	sprite_index = idle_spr
	is_near = true
}

if is_near {
	attacking = true
}

if attacking and attack_timer < 0 {
	attack_timer = max_attack_timer
}

if attack_timer >= 0 {
	attack_timer -= 1
}

if attack_timer <= 0 {
	attack = true
	attack_timer = -1
	attacking = false
}

 
if mp_grid_path(PATH_GRID,path,x,y,path_x,path_y,true){
	path_start(path,cur_mspd,path_action_stop,false)
}	 


image_yscale = 0.5

if follow_targ.x > x {
	image_xscale = 0.5	
	move_left = false
	move_right = true
	facing_right = true
} else {
	image_xscale = -0.5
	move_left = true
	move_right = false
	facing_right = false
}

