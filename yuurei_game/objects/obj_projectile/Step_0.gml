

if x > CURRPLAYER.x + room_width or x < CURRPLAYER.x - room_width{
	instance_destroy()
} else if y > CURRPLAYER.y + room_height or y < CURRPLAYER.y - room_height{
	instance_destroy()
}


if collision_circle(x,y,16,CURRPLAYER, 0, false){
	if is_bad {
		PLAYERHP -= damage
		instance_destroy()
	}
}


if collision_circle(x,y,16,obj_enemy, 0, false){
	_enemy = instance_nearest(x,y,obj_enemy)
	if is_bad == false {
		_enemy.hp -= damage
		instance_destroy()
	}
}