if instance_exists(obj_player) {
	if obj_player.releasedbot = true and obj_player.releasedtop = true {
		image_alpha -= random_range(0.0003,0.0005);
	}
}

image_angle += spinspeed;

if image_alpha <= 0.1 {
	instance_destroy();
}