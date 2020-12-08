if collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, CURRPLAYER, 0, 0) {
	room_goto(next_room)
	CURRPLAYER.x = new_x
	CURRPLAYER.y = new_y
}