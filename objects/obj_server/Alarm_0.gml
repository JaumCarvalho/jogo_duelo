alarm [0] = room_speed;

buffer_seek(broadcast_buffer, buffer_seek_start, 0);
buffer_write(broadcast_buffer, buffer_string, server_name);
buffer_write(broadcast_buffer, buffer_string, server_desc);
buffer_write(broadcast_buffer, buffer_u8, ds_list_size(sockets));
buffer_write(broadcast_buffer, buffer_u8, MAX_CLIENTS);

// send this data
network_send_broadcast(broadcast_socket, 4501, broadcast_buffer, buffer_tell(broadcast_buffer));