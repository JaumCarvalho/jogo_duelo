if (instance_exists(obj_player)) {
    x = obj_player.x;
    y = obj_player.y;
} else {
    exit;
}
	

var bullet_direction = point_direction(x, y, mouse_x, mouse_y);
image_angle = bullet_direction;

var intervalo = bullet_direction == clamp(bullet_direction, 90, 270);

var click_verify = mouse_check_button_pressed(mb_left);
if(click_verify){
	var fire_dir_x = x +0
	var fire_dir_y = y +0
	
	var fire = instance_create_layer(fire_dir_x, fire_dir_y, "Instances", obj_bullet);
	fire.direction = bullet_direction;
	fire.owner = id;
}