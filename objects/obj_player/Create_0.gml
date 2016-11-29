/// @description Player INIT

#macro STATE_P_SPAWN 0
#macro STATE_P_INVINCIBLE 1
#macro STATE_P_STANDING 2
#macro STATE_P_FALLING 3
#macro STATE_P_WALKING 4
#macro STATE_P_ON_WALL 6
#macro STATE_P_HURT 7
#macro P_JUMP_FORCE -450
#macro P_WALKING_POWER 1000
#macro P_GLIDE_POWER 300

phy_fixed_rotation = true;
maxXSpeed = 10;
state = STATE_P_SPAWN;
invincible = false;
leftKey = false;
rightKey = false;
upKey = false;
onGround = false;
facingRight = true;

jumpCnt = 0;
canJump = false;