/// @description Insert description here
// You can write your code in this editor
if(stateVar == playerState.Attack)
{
	stateVar = playerState.Idle;
}

if(stateVar == playerState.Parry)
{
	stateVar = playerState.Idle;
}