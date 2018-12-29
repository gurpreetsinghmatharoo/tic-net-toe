if (state == game_states.idle) {

	if (keyboard_check_pressed(vk_f1)) {
		instance_create_depth(0, 0, 10, Server);
		state = game_states.server;
	}

	if (keyboard_check_pressed(vk_f2)) {
		instance_create_depth(0, 0, 10, Client);
		state = game_states.client;
	}
	
	if (keyboard_check_pressed(vk_f3)) {
		if (input == noone) {
			input = instance_create_layer(0, 0, "Instances", Input);
		}
		input.hide = false;
	}
	if (keyboard_check_pressed(vk_enter)) {
		if (input != noone) {
			input.hide = true;
		}
	}
}