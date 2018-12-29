if (is_server()) {
	var lan_ip = LanIP();
	push_notification("Opened server at " + lan_ip + " - waiting for opponent to join!", -1);
}