draw_set_font(fnt_main);
draw_set_halign(fa_center);
if(picking_name){
	draw_text(room_width/2,50, "Digite seu nome:");
	draw_text(room_width/2,50, global.name);
} else {
	for(var i=0; i < array_length(menu); i++){
		draw_set_color(cur_index==i?c_green:c_white);
		draw_text(room_width/2, 100+23*i, menu[i]);
	}
}

draw_set_halign(fa_left);