if(playing){
	if (keyboard_check_pressed(vk_left)){
		SendKey(KEY_LEFT, true);
	}

	if (keyboard_check_released(vk_left)){
		SendKey(KEY_LEFT, false);
	}

	if (keyboard_check_pressed(vk_right)){
		SendKey(KEY_RIGHT, true);
	}

	if (keyboard_check_released(vk_right)){
		SendKey(KEY_RIGHT, false);
	}
	if (keyboard_check_pressed(vk_down)){
		SendKey(KEY_DOWN, true);
	}
	if (keyboard_check_released(vk_down)){
		SendKey(KEY_DOWN, false);
	}
	if (keyboard_check_pressed(vk_up)){
		SendKey(KEY_UP, true);
	}
	if (keyboard_check_released(vk_up)){
		SendKey(KEY_UP, false);
	}
} else {
	if (keyboard_check_pressed(vk_left)){
		char--;
	}
	if (keyboard_check_pressed(vk_right)){
		char++;
	}
	
	if(keyboard_check_pressed(vk_enter)){
		SendCharacter(char);
	}
}

char = clamp(char, 0, CHAR_MAGE);