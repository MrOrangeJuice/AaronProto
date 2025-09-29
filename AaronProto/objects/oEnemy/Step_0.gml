/// @description Insert description here
// You can write your code in this editor

if(!global.hitStop)
{
	image_speed = 1;
}
else
{
	image_speed = 0;
	alarm[0]++;
	alarm[1]++;
}
switch(stateVar)
{
	case enemyState.Idle:
		sprite_index = sEnemy;
		break;
	case enemyState.Attack:
		sprite_index = sEnemyAttack;
		break;
	case enemyState.Parried:
		sprite_index = sEnemyHit;
		break;
}