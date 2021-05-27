//determine which side the ship is facing
if image_angle == 0 {
	vSide = -1;
} else if (image_angle == 180){
	vSide = 1;
}

//left to right
if releasedbot = false or releasedtop = false {
	if x >= room_width - 13 or x <= 13 {
		hspeed *= -1;
	}
}
//left and right control
if (releasedbot = true and releasedtop = true) {
	if (keyboard_check(vk_right)) {
		//motion_add(0,0.05)
		x += 0.9;
	} else if (keyboard_check(vk_left)){ 
		//motion_add(180,0.05)
		x -= 0.9;
	}
}
//reached the end
if y <= (vspeed*-1) - 5 {
	vspeed = 0;
	image_angle = 180;
	//direction = 0;
	hspeed = 4;
	y = 8;
	if x <= 13 {x = 14} else if x >= room_width - 13 {x = room_width - 14}
	releasedtop = false;
	score += 1;
} 
if y >= room_height + vspeed + 5 {
	vspeed = 0;
	image_angle = 0;
	//direction = 0;
	hspeed = 4;
	y = room_height - 8 if x <= 13 {x = 14} else if x >= room_width - 13 {x = room_width - 14}
	releasedbot = false;
	score += 1;
}

move_wrap(true,false,4)

//random movement
if (releasedbot == true and releasedtop == true and secondstep = true) {
	var side = irandom(6);
	if side = 0 {
		x += 1;
	} else if side = 1 {
		x += 1; y += 1*vSide; 
	} else if side = 2 {
		x -= 1; y += 1*vSide;
	} else if side = 3 {
		x -= 1;
	}
	secondstep = false;
} else {
	secondstep = true;
}

//during smoke collision
if (releasedbot == true and releasedtop == true) {
	if (place_meeting(x, y + 1*vSide, obj_smoke)) {
		if (audio_is_paused(snd_rumble)){
			audio_resume_sound(snd_rumble);
			alarm[1] = room_speed/2;
		}
		
		if (hspeed <= 5) && (hspeed >= -5){
			var colSide = irandom(1);
		} else if (hspeed >= 5) {
			var colSide = 1;
		} else if (hspeed <= -5){
			var colSide = 0
		}
		
		if colSide = 0 {
			hspeed += 0.85;
		} else if colSide = 1 {
			hspeed -= 0.85;
		}
	} else {
		hspeed = Approach(hspeed, 0, 0.2);
		
	}
}
	
