function SendAllChat(){
	buffer_seek(buffer, buffer_seek_start, 0);
	buffer_write(buffer, buffer_u8, PACKET_CHAT);
	buffer_write(buffer, buffer_string, argument1);
	buffer_write(buffer, buffer_string, argument2);
	network_send_packet(argument0, buffer, buffer_tell(buffer));
}