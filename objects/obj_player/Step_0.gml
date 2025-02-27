hspd = walking_speed*(keys[KEY_RIGHT]-keys[KEY_LEFT]);
vspd = walking_speed*(keys[KEY_DOWN]-keys[KEY_UP]);

//colision
if(place_free(x+hspd, y)){
x+=hspd;
} else {
	hspd = distance_to_object(obj_solid)*sign(hspd);
}

if(place_free(x, y+vspd)){
	y+=vspd;
} else{
	vspd = distance_to_object(obj_solid)*sign(vspd)
}

if(mouse_check_button_pressed(mb_left)){
	var disparo = instance_create_layer(obj_player.x,obj_player.y+40,"Instances_1", obj_bullet);
	disparo.speed = 10;
	disparo.direction = point_direction(x,y,mouse_x,mouse_y);
}

//sprite handling
if(hspd == 0){
	sprite_index = idle_sprite;
} else{
	sprite_index = run_sprite;
}