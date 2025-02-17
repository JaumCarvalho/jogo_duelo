#macro KEY_LEFT 0
#macro KEY_RIGHT 1
#macro KEY_UP 2
#macro KEY_DOWN 3

keys[KEY_LEFT] = false;
keys[KEY_RIGHT] = false;
keys[KEY_UP] = false;
keys[KEY_DOWN] = false;

walking_speed = 4;
hspd = 0;
vspd = 0;
name = "player";

if(instance_exists(obj_server)){
	visible=true;
}

character = 0;

HandleSprites(character);