event_inherited()



facing_right = false

hand = instance_create_depth(x,y,0,obj_zoella_hand)


run_spr = spr_zoella_run
idle_spr = spr_zoella_idle

if room == rm_game{
	mspd = 4
}
else if room == rm_base{
	mspd = 1.5
	CURRWEAPON = instance_create_depth(x,y,0,CURRWEAPON)
}

