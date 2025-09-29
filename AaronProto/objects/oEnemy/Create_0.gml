/// @description Insert description here
// You can write your code in this editor
alarm[0] = room_speed * random_range(4,6);

enum enemyState
{
	Attack,
	Idle
}

stateVar = enemyState.Idle;

canHurt = false;