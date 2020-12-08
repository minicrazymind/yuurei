event_inherited()

if room == rm_game{
	mspd = 3
}
else if room == rm_base{
	mspd = 1.5
}



facing_right = false

hand = instance_create_depth(x,y,0,obj_zoella_hand)
instance_create_depth(x,y,0,CURRWEAPON)


run_spr = spr_zoella_run
idle_spr = spr_zoella_idle