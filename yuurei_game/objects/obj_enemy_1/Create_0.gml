event_inherited()


hand = instance_create_depth(x, y, 0, obj_enemy_1_hand)
hand.target = id

weapon = instance_create_depth(x, y, 0, obj_dart_weapon)
weapon.user_hand = hand
weapon.is_enemy = true

idle_spr = spr_enemy_1_idle
run_spr = spr_enemy_1_run

attack_timer = 200
max_attack_timer = 200

attack_range = 160

