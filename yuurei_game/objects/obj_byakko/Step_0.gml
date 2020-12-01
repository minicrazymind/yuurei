
depth = -y


if point_distance(x,y,follow_targ.x,follow_targ.y) > 64{

	path_x = follow_targ.x
	path_y = follow_targ.y
	
	sprite_index = spr_byakko_run
	 
} else{

	path_x = x
	path_y = y
	sprite_index = spr_byakko_idle

}
 
if mp_grid_path(PATH_GRID,path,x,y,path_x,path_y,true){

	path_start(path,mspd,path_action_stop,false)
	 
}

if follow_targ.x > x {
	image_xscale = 1	
} else {
	image_xscale = -1
}