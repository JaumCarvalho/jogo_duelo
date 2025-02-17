var event_id = async_load[? "id"];

if(event_id == broadcast_server){
	var ip = async_load[? "ip"];
	
	var buff = async_load[? "buffer"];
	var nam = buffer_read(buff, buffer_string);
	var des = buffer_read(buff, buffer_string);
	var cli = buffer_read(buff, buffer_u8);
	var maxcli = buffer_read(buff, buffer_u8);
	
	// add if to the map
	var ind = ds_list_find_index(s_ips, ip);
	if(ind != -1){
		//update
		ds_list_set(s_names, ind, nam);
		ds_list_set(s_clients, ind, cli);
		ds_list_set(s_maxclients, ind, maxcli);
		ds_list_set(s_descriptions, ind, des);
	} else {
		ds_list_add(s_ips, ind, ip);
		ds_list_add(s_names, ind, nam);
		ds_list_add(s_clients, ind, cli);
		ds_list_add(s_maxclients, ind, maxcli);
		ds_list_add(s_descriptions, ind, des);
	}
}