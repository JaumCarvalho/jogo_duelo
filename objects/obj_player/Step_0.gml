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

//sprite handling
if(hspd == 0){
	sprite_index = idle_sprite;
} else{
	sprite_index = run_sprite;
}