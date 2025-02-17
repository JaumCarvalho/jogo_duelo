draw_set_font(fnt_main);
draw_set_halign(fa_center);
if(picking_name){
	draw_text(room_width/2,50, "Digite seu nome:");
	draw_text(room_width/2,150, global.name);
} else if(server_list){
	

	draw_set_color(c_orange);
	draw_text(room_width/2, 70, "Local Games");
	var i=0;
	for(i=0;i<ds_list_size(s_ips);i++){

		if (i < ds_list_size(s_ips) && i < ds_list_size(s_names) && i < ds_list_size(s_descriptions) &&
		i < ds_list_size(s_clients) && i < ds_list_size(s_maxclients)) {

		    var ip = ds_list_find_value(s_ips, i);
		    var n = ds_list_find_value(s_names, i);
		    var d = ds_list_find_value(s_descriptions, i);
		    var c = ds_list_find_value(s_clients, i);
		    var m = ds_list_find_value(s_maxclients, i);
			// removing a invalid server
			if (ip == "-1" || is_undefined(ip) || ip == "" || n == "-1" || is_undefined(n)) {
		        ds_list_delete(s_ips, i);
		        ds_list_delete(s_names, i);
		        ds_list_delete(s_descriptions, i);
		        ds_list_delete(s_clients, i);
		        ds_list_delete(s_maxclients, i);
			}
		    // ensure that the values are strings before concatenating.
		    if (is_undefined(ip)) ip = "??";
		    if (is_undefined(n)) n = "??";
		    if (is_undefined(d)) d = "??";
		    if (is_undefined(c)) c = 0;
		    if (is_undefined(m)) m = 0;

		    draw_set_color(cur_index == i ? c_green : c_white);
		    draw_text(room_width / 2, 100 + 32 * i, string(ip) + " - " + string(n) + " - " + string(c) + "/" + string(m) + " - " + string(d));
		}

	}
	draw_set_color(cur_index == i?c_green:c_white);
	draw_text(room_width/2,100+32*i, "Voltar");
}else {
	for(var i=0; i < array_length(menu); i++){
		draw_set_color(cur_index==i?c_green:c_white);
		draw_text(room_width/2, 100+23*i, menu[i]);
	}
}

draw_set_halign(fa_left);