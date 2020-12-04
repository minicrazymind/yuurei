if keyboard_check_pressed(ord("O")) {
	enem = instance_create_depth(mouse_x, mouse_y, 0, obj_enemy_1)
	hand = instance_create_depth(mouse_x, mouse_y, 0, obj_enemy_1_hand)
	
	hand.target = enem
}