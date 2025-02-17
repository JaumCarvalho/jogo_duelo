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

//characters
#macro CHAR_ARCHER 0
#macro CHAR_GOBLIN 1
#macro CHAR_KNIGHT 2
#macro CHAR_MAGE 3

server = network_create_server(network_socket_tcp, PORT, MAX_CLIENTS);
buffer = buffer_create(12345, buffer_grow, 1);

clients = ds_map_create();
sockets = ds_list_create();

avaiable_characters = ds_list_create();
ds_list_add(avaiable_characters, CHAR_ARCHER);
ds_list_add(avaiable_characters, CHAR_GOBLIN);
ds_list_add(avaiable_characters, CHAR_KNIGHT);
ds_list_add(avaiable_characters, CHAR_MAGE);