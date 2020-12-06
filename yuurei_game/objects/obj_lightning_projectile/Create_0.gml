//I dont use event_inherited() b/c we basically need to rerun the whole create code with new target


target_x = mouse_x  //Target's x and y
target_y = mouse_y

speed = 2     //Move speed of projectile

damage = 2

direction = point_direction(x, y, target_x, target_y) //Direction we go

image_angle = point_direction(x, y, target_x, target_y)

image_xscale = 0.5
image_yscale = 0.5