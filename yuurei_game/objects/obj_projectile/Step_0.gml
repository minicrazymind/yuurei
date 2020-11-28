


if x > CURRPLAYER.x + room_width or x < CURRPLAYER.x - room_width{
	instance_destroy()
} else if y > CURRPLAYER.y + room_height or y < CURRPLAYER.y - room_height{
	instance_destroy()
}