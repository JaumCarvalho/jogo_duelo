function HandleSprites(){
	switch(argument0){
		case CHAR_ARCHER:
			idle_sprite = archer_idle;
			run_sprite = archer_run;
			menu_sprite = archer_menu;
		break;
		case CHAR_GOBLIN:
			idle_sprite = goblin_idle;
			run_sprite = goblin_run;
			menu_sprite = goblin_menu;
		break;
		case CHAR_KNIGHT:
			idle_sprite = knight_idle;
			run_sprite = knight_run;
			menu_sprite = knight_menu;
		break;
		case CHAR_MAGE:
			idle_sprite = mage_idle;
			run_sprite = mage_run;
			menu_sprite = mage_menu;
		break;
	}
}