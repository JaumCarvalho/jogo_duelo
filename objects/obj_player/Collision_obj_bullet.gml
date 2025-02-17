show_debug_message(life)
if(my_id != other.my_id){
	
	life = life - other.damage;
	instance_destroy(obj_bullet);
	//show_debug_message(hp_damage);
	show_debug_message(life);
	if(life<=0){
		x=random(room_width);
		y=random(room_height);
		life=100;
	}
}