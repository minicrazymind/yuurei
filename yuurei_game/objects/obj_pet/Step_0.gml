
depth = -y

if point_distance(x,y,follow_targ.x,follow_targ.y) < 32  {
	path_x = x
	path_y = y
	sprite_index = idle_spr
	cur_mspd = 0

} else if point_distance(x,y,follow_targ.x,follow_targ.y) <= 500{

	path_x = follow_targ.x
	path_y = follow_targ.y
	cur_mspd = mspd
	sprite_index = run_spr
	 
} else if point_distance(x,y,follow_targ.x,follow_targ.y) > 500{
	path_x = follow_targ.x
	path_y = follow_targ.y
	if cur_mspd < follow_targ.mspd + 0.5 {
		cur_mspd += 0.01
	}
	
	sprite_index = run_spr
}
 
if mp_grid_path(PATH_GRID,path,x,y,path_x,path_y,true){

	path_start(path,cur_mspd,path_action_stop,false)
	 
}


image_yscale = 0.5
if follow_targ.x > x {
	image_xscale = 0.5	
} else {
	image_xscale = -0.5
}
