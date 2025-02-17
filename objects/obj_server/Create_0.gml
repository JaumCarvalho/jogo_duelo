// initialize server
#macro PORT 4500
#macro MAX_CLIENTS 4

//packets
#macro PACKET_KEY 0
#macro PACKET_ENTITY 1
#macro PACKET_NAME 2
#macro PACKET_CHARACTER 3
#macro PACKET_PLAY 4
#macro PACKET_PICK 5
#macro PACKET_MYID 6
#macro PACKET_CHAT 7
#macro PACKET_BULLET 8
#macro PACKET_LIFE 9

//characters
#macro CHAR_ARCHER 0
#macro CHAR_GOBLIN 1
#macro CHAR_KNIGHT 2
#macro CHAR_MAGE 3
global.picked_char = false;
server_name = "Meu servidor";
server_desc = "Jogue se quiser"

broadcast_socket = network_create_socket_ext(network_socket_udp, 5000);
if (broadcast_socket < 0) {
    show_debug_message("broadcast socket not created");
} else{
	show_debug_message("broadcast socket created");
}

server = network_create_server(network_socket_tcp, PORT, MAX_CLIENTS);
buffer = buffer_create(16384, buffer_grow, 1);
broadcast_buffer = buffer_create(1000, buffer_grow, 1);

clients = ds_map_create();
sockets = ds_list_create();

avaiable_characters = ds_list_create();
ds_list_add(avaiable_characters, CHAR_ARCHER);
ds_list_add(avaiable_characters, CHAR_GOBLIN);
ds_list_add(avaiable_characters, CHAR_KNIGHT);
ds_list_add(avaiable_characters, CHAR_MAGE);

alarm[0] = room_speed;