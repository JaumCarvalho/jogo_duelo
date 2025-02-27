if(playing){
	if(!typing){
		keyboard_string = "";
		if (keyboard_check_pressed(ord("A"))){
		SendKey(KEY_LEFT, true);
		}

		if (keyboard_check_released(ord("A"))){
			SendKey(KEY_LEFT, false);
		}

		if (keyboard_check_pressed(ord("D"))){
			SendKey(KEY_RIGHT, true);
		}

		if (keyboard_check_released(ord("D"))){
			SendKey(KEY_RIGHT, false);
		}
		if (keyboard_check_pressed(ord("S"))){
			SendKey(KEY_DOWN, true);
		}
		if (keyboard_check_released(ord("S"))){
			SendKey(KEY_DOWN, false);
		}
		if (keyboard_check_pressed(ord("W"))){
			SendKey(KEY_UP, true);
		}
		if (keyboard_check_released(ord("W"))){
			SendKey(KEY_UP, false);
		}
	}
	if(keyboard_check_pressed(vk_enter)){
		typing = !typing;
		if (!typing){
			if(string_length(msg) > 0){
				SendChat(msg);	
			}
			keyboard_string = "";
		}
	}
} else {
	if (keyboard_check_pressed(ord("A"))){
		char--;
	}
	if (keyboard_check_pressed(ord("D"))){
		char++;
	}
	
	if(keyboard_check_pressed(vk_enter)){
		SendCharacter(char);
	}
}

char = clamp(char, 0, CHAR_MAGE_YELLOW);

// loop through every clients object
for(var i=0;i<instance_number(obj_remote_entity);i++){
	var e = instance_find(obj_remote_entity, i);
	if(my_id == e.my_id){
		target = e;
		break;
	}
}

if (target != noone){
	camera_set_view_target(view_camera[0], e);
	camera_set_view_border(view_camera[0], view_wport[0]/2, view_hport[0]/2);
}

if(typing){
	msg = keyboard_string;
}
cursor_timer += 1;
if(cursor_timer >= room_speed / 2) {
    cursor_visible = !cursor_visible;
    cursor_timer = 0;
}