/// @description Set up maxItems
// You can write your code in this editor
/*
Inventory Items:
0 = Sword
1 = Iron Sword
2 = Gold Sword
3 = Axe
6 = Mace


*/

globalvar showInv;  //show the inventory?
showInv = true;

globalvar maxItems;
maxItems= 10;

for (i = 0; i < maxItems; i++)
{
	global.inventory[i] = -1;
}


