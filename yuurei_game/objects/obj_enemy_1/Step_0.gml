
event_inherited();
randomize()

if attack {
	weapon.is_triggered = true
}


if hp <= 0 {
	instance_destroy(hand)
	instance_destroy(weapon)
	instance_destroy()
	PLAYERMONEY += irandom_range(2, 6) 
}