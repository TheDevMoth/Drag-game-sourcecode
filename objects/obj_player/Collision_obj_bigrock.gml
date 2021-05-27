if (releasedbot = true and releasedtop = true) {
	instance_destroy()
	other.alarm[1] = room_speed*3
	repeat(3){instance_create_depth(x,y,-100,obj_shipparts)}
	audio_play_sound(snd_shiphit,1,false)
}
