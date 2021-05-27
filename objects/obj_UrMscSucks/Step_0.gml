canClick = mouse_over();
if (canClick == true) {
	if (mouse_check_button_pressed(mb_any)){
		if (audio_is_playing(msc_)){
			audio_stop_sound(msc_);
			image_index = 1;
		} else {
			audio_play_sound(msc_, 0, true);
			image_index = 0;
		}
	}
}

if (keyboard_check_pressed(ord("M"))) {
	if (audio_is_playing(msc_)){
		audio_stop_sound(msc_);
		image_index = 1;
	} else {
		audio_play_sound(msc_, 0, true);
		image_index = 0;
	}
}