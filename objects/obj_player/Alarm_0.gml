if image_angle == 0 {
	_y = y + 4
} else if image_angle == 180 {
	_y = y - 4
}

if y >= vspeed + 16 and y <= room_height - vspeed - 16{
	instance_create_layer(x,_y,"gamelayer",obj_smoke)
}
alarm[0] = 4