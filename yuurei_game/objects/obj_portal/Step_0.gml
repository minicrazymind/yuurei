if collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, CURRPLAYER, 0, 0) {
	room_goto(next_room)
	CURRPLAYER = instance_create_depth(new_x,new_y,0,CURRPLAYER)
	CURRPET = instance_create_depth(new_x,new_y,0,CURRPET)
}