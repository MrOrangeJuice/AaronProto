/// @description Insert description here
// You can write your code in this editor
var playerString = "Player: " + string(playerHealth);
var enemyString = "Enemy: " + string(enemyHealth);

draw_text(16,16,playerString);
draw_text(display_get_gui_width()-128,16,enemyString);