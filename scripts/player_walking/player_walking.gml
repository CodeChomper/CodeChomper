if(invincible){
	sprite_index = spr_player_walk_invincible;
} else {
	sprite_index = spr_player_walk;
}

if(abs(phy_speed_x) < maxXSpeed){
	if(leftKey) physics_apply_force(x,y,-P_WALKING_POWER,0);
	if(rightKey) physics_apply_force(x,y,P_WALKING_POWER,0);
}

if(phy_speed_x == 0) state = STATE_P_STANDING;

if(!is_on_ground() || upKey){
	state = STATE_P_FALLING;
}