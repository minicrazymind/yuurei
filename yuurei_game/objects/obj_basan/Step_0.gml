
if point_distance(x,y,follow_targ.x,follow_targ.y) > 32{

	path_x = follow_targ.x
	path_y = follow_targ.y
	 
} else{

	path_x = x
	path_y = y

}
 
if mp_grid_path(PATH_GRID,path,x,y,path_x,path_y,true){

	path_start(path,mspd,path_action_stop,false)
	 
}
 
 
 