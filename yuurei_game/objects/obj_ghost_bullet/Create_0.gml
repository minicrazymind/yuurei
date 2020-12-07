//I dont use event_inherited() b/c we basically need to rerun the whole create code with new target

image_index = 7
image_speed = 0

target_x = mouse_x  //Target's x and y
target_y = mouse_y

speed = 6     //Move speed of projectile

damage = 5

direction = point_direction(x, y, target_x, target_y) //Direction we go

image_xscale = 0.25
image_yscale = 0.25

