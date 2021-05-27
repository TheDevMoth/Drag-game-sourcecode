if releasedbot == false {
	//direction = 90
	vspeed = -1
	releasedbot = true
	alarm[0] = 5
	if instance_exists(obj_smoke) { obj_smoke.speed = 0.003 }
	audio_play_sound(snd_release,1,false)
	hspeed = 0;
}
if releasedtop == false {
	//direction = 270
	vspeed = 1
	releasedtop = true
	alarm[0] = 5
	if instance_exists(obj_smoke) { obj_smoke.speed = 0.003 }
	audio_play_sound(snd_release,1,false)
	hspeed = 0;
}