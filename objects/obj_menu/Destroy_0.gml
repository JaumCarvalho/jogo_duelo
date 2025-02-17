if (broadcast_server != -1) {
    network_destroy(broadcast_server);
}

ds_list_destroy(s_names);
ds_list_destroy(s_clients);
ds_list_destroy(s_maxclients);
ds_list_destroy(s_ips);
ds_list_destroy(s_descriptions);