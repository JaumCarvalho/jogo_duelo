function SendBullet(){
	buffer_seek(buffer, buffer_seek_start, 0);
	buffer_write(buffer, buffer_u8, PACKET_BULLET);
	buffer_write(buffer, buffer_u8, argument0);
	buffer_write(buffer, buffer_u8, argument1);
	buffer_write(buffer, buffer_u8, argument2);
	network_send_packet(socket, buffer, buffer_tell(buffer));
}