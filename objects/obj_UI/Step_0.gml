if keyboard_check_pressed(vk_anykey) && !keyboard_check_pressed(ord("M")){
	switch(room) {
	case rm_start:
		room_goto(rm_game);
		audio_play_sound(snd_click,1,false);
	break;
	
	case rm_game:
		if(keyboard_check_pressed(ord("R"))){
			room_restart();
		}
	break;
	
	case rm_lost:
		room_goto(rm_start);
		audio_play_sound(snd_click,1,false);
		if(audio_is_playing(snd_rumble)){
			audio_pause_sound(snd_rumble);
		}
	break;
	};
}