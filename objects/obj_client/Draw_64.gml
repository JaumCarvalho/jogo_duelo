draw_set_halign(fa_center);
draw_set_font(fnt_main);
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
	draw_set_halign(fa_left);
} else {
	draw_set_halign(fa_left);
	draw_set_font(fnt_small);
	if(typing){
		draw_set_color(c_orange);
		draw_text(10,460, msg);
		if (cursor_visible) {
        draw_text(10 + string_width(msg), 460, "_");
    }
	}
	for(var i=0;i<ds_list_size(names);i++){
		var n =ds_list_find_value(names, i);
		var m =ds_list_find_value(msgs, i);
		draw_set_color(c_green);
		var t = n+": ";
		draw_text(10,440-(ds_list_size(names)-i)*20,t);
		draw_set_color(c_white);
		draw_text(10+string_width(t), 440-(ds_list_size(names)-i)*20, m);
	}
}

