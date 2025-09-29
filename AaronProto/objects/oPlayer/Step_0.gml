/// @description Insert description here
// You can write your code in this editor
if(!global.hitStop)
{
	image_speed = 1;
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
			audio_play_sound(snd_Attack,5,false);
			instance_create_layer(oEnemy.x + 32,oEnemy.y,"Instances",oHitVFX);
			oGame.enemyHealth--;
		}
	}

	if(keyboard_check_pressed(vk_down))
	{
		if(stateVar == playerState.Idle)
		{
			stateVar = playerState.Parry;	
		}
	
	}

	if((stateVar == playerState.Idle || stateVar == playerState.Attack) && oEnemy.canHurt)
	{
		if(!hurtThisAttack)
		{
			oGame.playerHealth--;
			hurtThisAttack = true;
		}
	}

	if(stateVar == playerState.Parry && oEnemy.canHurt)
	{
		oEnemy.stateVar = enemyState.Parried;
		oEnemy.canHurt = false;
		instance_create_layer(oEnemy.x + 32,oEnemy.y,"Instances",oHitVFX);
		audio_play_sound(snd_Klang,5,false);
		global.hitStopTime = 50;
	}
}
else
{
	image_speed = 0;
	alarm[0]++;
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
		break;
	case playerState.Parry:
		sprite_index = sPlayerParry;
		break;
	
}