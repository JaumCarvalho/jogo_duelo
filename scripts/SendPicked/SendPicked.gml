function SendPicked(){
	buffer_seek(buffer, buffer_seek_start, 0);
	buffer_write(buffer, buffer_u8, PACKET_PICK);
	buffer_write(buffer, buffer_u8, argument1);
	buffer_write(buffer, buffer_u8, argument2);
	network_send_packet(argument0, buffer, buffer_tell(buffer));
}