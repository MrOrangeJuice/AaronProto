/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(vk_left))
{
	if(stateVar == playerState.Idle) 
	{
		stateVar = playerState.Dodge;
		alarm[0] = room_speed * 0.5;
	}
}

if(keyboard_check_pressed(vk_right))
{
	if(stateVar == playerState.Idle) 
	{
		stateVar = playerState.Attack;
	}
	instance_create_layer(oEnemy.x + 32,oEnemy.y,"Instances",oHitVFX);
	oGame.enemyHealth--;
}

if((stateVar == playerState.Idle || stateVar == playerState.Attack) && oEnemy.canHurt)
{
	if(!hurtThisAttack)
	{
		oGame.playerHealth--;
		hurtThisAttack = true;
	}
}

switch(stateVar)
{
	case playerState.Idle:
		sprite_index = sPlayer;
		break;
	case playerState.Dodge:
		sprite_index = sPlayerDodge;
		break;
	case playerState.Attack:
		sprite_index = sPlayerAttack;
}