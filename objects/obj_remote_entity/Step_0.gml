var fire = mouse_check_button_pressed(mb_left);
if(fire){
	var tiro = instance_create_layer(x,y,"Instances_1",obj_tiro);
	tiro.speed=10;
	tiro.direction = point_direction(x,y, mouse_x, mouse_y);
}
