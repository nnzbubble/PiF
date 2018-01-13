/// @description Insert description here
// You can write your code in this editor
if(keyboard_check(ord("V")))
{
	showInv = true;
}
else
	showInv = false;
	
	
for(i = 0; i < global.coinCount; i++)
{
	global.inventory[i] = 1;
}