/// @description Insert description here
// You can write your code in this editor

switch(stateVar)
{
	case enemyState.Idle:
		sprite_index = sEnemy;
		break;
	case enemyState.Attack:
		sprite_index = sEnemyAttack;
		break;
}