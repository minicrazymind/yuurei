//I dont use event_inherited() b/c we basically need to rerun the whole create code with new target


target_x = mouse_x  //Target's x and y
target_y = mouse_y

speed = 10      //Move speed of projectile

damage = 10

direction = point_direction(x, y, target_x, target_y) //Direction we go
