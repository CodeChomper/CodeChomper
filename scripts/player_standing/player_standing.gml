if(invincible){
	sprite_index = spr_player_idle_invincible;
} else {
	sprite_index = spr_player_idle;
}

canJump = true;

if(leftKey || rightKey){
	state = STATE_P_WALKING;
}

if(!is_on_ground() || upKey){
	state = STATE_P_FALLING;
}