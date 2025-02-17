draw_set_halign(fa_center);
if(!playing){
	
	draw_set_color(c_gray);
	draw_rectangle(0,0,room_width, room_height, false);
	
	//draw select character menu
	draw_set_color(c_white);
	draw_text(room_width/2,50,"Selecione seu personagem");
	var sp = archer_menu;
	
	for(var i=0; i<=CHAR_MAGE;i++){
		switch(i){
		case CHAR_ARCHER:
			sp = archer_menu;
		break;
		case CHAR_GOBLIN:
			sp = goblin_menu;
		break;
		case CHAR_KNIGHT:
			sp = knight_menu;
		break;
		case CHAR_MAGE:
			sp = mage_menu;
		break;
		}
		var ib = c_green;
		draw_sprite_ext(sp, 0, 70+64*i,150, 2,2,0,c_white,1);
		if(i == char){
			if(picked[i] == true){
				ib=c_red;
			}
			draw_sprite_ext(spr_indicator, 0,100+64*i,215, 2,2,0,c_white,1);
		}
	}
	
}

draw_set_halign(fa_left);