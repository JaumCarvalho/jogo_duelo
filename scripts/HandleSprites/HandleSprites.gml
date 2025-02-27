function HandleSprites(){
	switch(argument0){
		case CHAR_MAGE_RED:
			idle_sprite = mage_red_idle;
			run_sprite = mage_red_run;
			menu_sprite = mage_red_menu;
		break;
		case CHAR_MAGE_BLUE:
			idle_sprite = mage_blue_idle;
			run_sprite = mage_blue_run;
			menu_sprite = mage_blue_menu;
		break;
		case CHAR_MAGE_GREEN:
			idle_sprite = mage_green_idle;
			run_sprite = mage_green_run;
			menu_sprite = mage_green_menu;
		break;
		case CHAR_MAGE_YELLOW:
			idle_sprite = mage_yellow_idle;
			run_sprite = mage_yellow_run;
			menu_sprite = mage_yellow_menu;
		break;
	}
}