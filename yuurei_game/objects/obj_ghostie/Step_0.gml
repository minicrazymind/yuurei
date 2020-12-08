
event_inherited();

if attack and is_near {
	
	bullet = instance_create_depth(x,y,depth,projectile)
	bullet.is_bad = true
	bullet.direction = point_direction(bullet.x, bullet.y, CURRPLAYER.x, CURRPLAYER.y)
	attack = false
}


if hp <= 0 {
	instance_destroy()	
	PLAYERMONEY += irandom_range(1, 4) 
}