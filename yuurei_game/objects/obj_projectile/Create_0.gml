
target_x = mouse_x  //Target's x and y
target_y = mouse_y

speed = 5      //Move speed of projectile

damage = 10

direction = point_direction(x, y, target_x, target_y) //Direction we go


if mouse_x > x {
	image_xscale = 1
} else {
	image_xscale = -1
}