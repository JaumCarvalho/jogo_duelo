for(var i=0;i<instance_number(obj_player);i++){
	var b = instance_find(obj_bullet, i);
	var pl = instance_find(obj_player, i);
	for(var s=0;s<ds_list_size(sockets);s++){
		var so = ds_list_find_value(sockets, s);
		SendRemoteEntity(so, CMD_X, pl.id, pl.x);
		SendRemoteEntity(so, CMD_Y, pl.id, pl.y);
		SendRemoteEntity(so, CMD_SPRITE, pl.id, pl.sprite_index);
		SendRemoteEntity(so, CMD_MYID, pl.id, pl.my_id);
		SendRemoteEntity(so, CMD_LIFE, pl.id, pl.life);
	}
}


