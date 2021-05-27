draw_set_halign(fa_center);

switch(room) {
	case rm_start:
		draw_set_font(fnt_small);
		draw_set_halign(fa_left); draw_set_valign(fa_center);
		draw_text(obj_UrMscSucks.x + 12, obj_UrMscSucks.y, "M-Music");
		draw_set_halign(fa_center); draw_set_valign(fa_top);
		draw_set_font(fnt_big);
		draw_text_color(room_width/2,65,"DRAG",c_red,c_red,c_red,c_red,1);
		draw_set_font(fnt_small);
		draw_text(room_width/2,100,"Use Space to release, and Arrows to move\n>>Press any key to start<<");
		/*draw_set_halign(fa_left); draw_set_valign(fa_bottom);
		draw_text(4,room_height-4,"Game by MIMBRS");
		draw_set_halign(fa_center); draw_set_valign(fa_top);*/
break;
	
	case rm_game:
		draw_set_halign(fa_left);
		draw_set_font(fnt_small);
		draw_text(2,2,"Score: " + string(score));
		draw_set_halign(fa_center);
	break;
	
	case rm_lost:
		draw_set_font(fnt_medium);
		draw_text_color(room_width/2,55,"GAME OVER\nYour Score is: " + string(score),c_yellow,c_yellow,c_yellow,c_yellow,1);
		draw_set_font(fnt_small);
		draw_text(room_width/2,100,">>Press any key to restart<<");
	break;
}