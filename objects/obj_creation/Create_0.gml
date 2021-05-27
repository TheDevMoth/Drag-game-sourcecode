score = 0;
randomise();

rockNumSet = irandom(5);
if (rockNumSet == 0){
	//small:Low    medium:Med    big:High
	no_sr = irandom_range(10, 15);
	no_mr = irandom_range(8, 11);
	no_br = irandom_range(5, 7);
	
} else if (rockNumSet == 1){
	//small:Low    medium:High    big:Med
	no_sr = irandom_range(10, 15);
	no_mr = irandom_range(11, 14);
	no_br = irandom_range(3, 5);
	
} else if (rockNumSet == 2){
	//small:Med    medium:High    big:Low
	no_sr = irandom_range(15, 20);
	no_mr = irandom_range(11, 14);
	no_br = irandom_range(2, 3);
	
} else if (rockNumSet == 3){
	//small:Med    medium:Low    big:High
	no_sr = irandom_range(15, 20);
	no_mr = irandom_range(5, 8);
	no_br = irandom_range(5, 7);
	
} else if (rockNumSet == 4){
	//small:High    medium:Med    big:Low
	no_sr = irandom_range(20, 25);
	no_mr = irandom_range(8, 11);
	no_br = irandom_range(2, 3);
	
} else if (rockNumSet == 5){
	//small:High    medium:Low    big:Med
	no_sr = irandom_range(20, 21);
	no_mr = irandom_range(5, 8);
	no_br = irandom_range(3, 5);
	
}


repeat(no_sr - 3) {
	instance_create_layer(random_range(4,room_width - 4),random_range(18,room_height-18),"gamelayer",obj_smlrock)
}
repeat(no_mr - 2) {
	instance_create_layer(random_range(7,room_width - 7),random_range(21,room_height - 21),"gamelayer",obj_medrock)
}
repeat(no_br) {
	instance_create_layer(random_range(10,room_width - 10),random_range(24,room_height - 24),"gamelayer",obj_bigrock)
}







//no_sr = irandom_range(5,20)
//if no_sr >= 5 and no_sr <= 10 {				//low range for small
//	no_mr = irandom_range(5,11)
//	if no_mr >= 5 and no_mr <= 8 {		//med range for medium
//		no_br = irandom_range(5,7)		//high range for big
//	} else if no_mr > 8 and no_mr <= 11 {	//high rang for medium
//		no_br = irandom_range(3,5)		//medium range for big
//	}
//} else if no_sr > 10 and no_sr <= 15 {		//med range for small
//	no_no = choose(1,2)
//	if no_no == 1 {no_mr = irandom_range(2,5)} else if no_no == 2 {no_mr = irandom_range(8,11)}
//	if no_mr >= 2 and no_mr <= 5 {	
//		no_br = irandom_range(5,7)
//	} else if no_mr >= 8 and no_mr <= 11 {
//		no_br = irandom_range(2,3)
//	}
//} else if no_sr > 15 and no_sr <= 20 {		//high range for small
//	no_no = choose(1,2)
//	if no_no == 1 {no_mr = irandom_range(2,5)} else if no_no == 2 {no_mr = irandom_range(6,8)}
//	if no_mr >= 2 and no_mr <= 5 {	
//		no_br = irandom_range(2,3)
//	} else if no_mr >= 6 and no_mr <= 8 {
//		no_br = irandom_range(3,5)
//	}
//}