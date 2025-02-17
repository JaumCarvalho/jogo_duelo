picking_name = true;
server_list = false;
menu = ["Criar", "Entrar", "LAN", "Sair"];

if (!variable_global_exists("is_host")) {
    global.is_host = false;
}

cur_index = 0;
global.ip = "127.0.0.1";
global.name = "Player";
keyboard_string = "";

broadcast_server = network_create_server(network_socket_udp, 4501, 100);

if (global.is_host) {
    // close server if exist
    if (broadcast_server != -1) {
        network_destroy(broadcast_server);
    }

    broadcast_server = network_create_server(network_socket_udp, 4501, 100);

    if (broadcast_server < 0) {
        show_message("Erro: Não foi possível criar o servidor de broadcast.");
        broadcast_server = -1;
    }
}

// keep data of each running server
s_ips = ds_list_create();
s_names = ds_list_create();
s_clients = ds_list_create();
s_maxclients = ds_list_create();
s_descriptions = ds_list_create();
