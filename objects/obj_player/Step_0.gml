/// @description Player control

// Check Keys every frame
leftKey = keyboard_check(vk_left);
rightKey = keyboard_check(vk_right);
upKey = keyboard_check(vk_up);

switch(state){
	case STATE_P_SPAWN:
		player_spawn();
		break;
	case STATE_P_INVINCIBLE:
		player_invincible();
		break;
	case STATE_P_FALLING:
		player_falling();
		break;
	case STATE_P_STANDING:
		player_standing();
		break; 
	case STATE_P_WALKING:
		player_walking();
		break;
}

flip_dir(self);