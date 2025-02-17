draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_font(fnt_small);
var xpos = x-camera_get_view_x(view_camera[0]);
var ypos = y-camera_get_view_y(view_camera[0]);
draw_text(xpos*2+17, ypos*2+30, name);
if (instance_exists(obj_player)) {
	if(obj_player.life==100){
		draw_sprite(spr_life, 0, xpos * 2 + 10, ypos * 2 - 20);
	}
	if(obj_player.life==80){
		draw_sprite(spr_life, 1, xpos * 2 + 10, ypos * 2 - 20);
	}
	if(obj_player.life==60){
		draw_sprite(spr_life, 2, xpos * 2 + 10, ypos * 2 - 20);
	}
	if(obj_player.life==40){
		draw_sprite(spr_life, 3, xpos * 2 + 10, ypos * 2 - 20);
	}
	if(obj_player.life==20){
		draw_sprite(spr_life, 4, xpos * 2 + 10, ypos * 2 - 20);
	}
} else{
	 if(obj_client.life==100){
		draw_sprite(spr_life, 0, xpos * 2 + 10, ypos * 2 - 20);
	}
	if(obj_client.life==80){
		draw_sprite(spr_life, 1, xpos * 2 + 10, ypos * 2 - 20);
	}
	if(obj_client.life==60){
		draw_sprite(spr_life, 2, xpos * 2 + 10, ypos * 2 - 20);
	}
	if(obj_client.life==40){
		draw_sprite(spr_life, 3, xpos * 2 + 10, ypos * 2 - 20);
	}
	if(obj_client.life==20){
		draw_sprite(spr_life, 4, xpos * 2 + 10, ypos * 2 - 20);
	}
}
draw_set_halign(fa_left);