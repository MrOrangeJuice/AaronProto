/// @description Insert description here
// You can write your code in this editor

if(stateVar == enemyState.Attack)
{
	stateVar = enemyState.Idle;
	canHurt = false;
	oPlayer.hurtThisAttack = false;
}