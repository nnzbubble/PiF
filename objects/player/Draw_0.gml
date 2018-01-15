/// @description drawSprite and Text
// You can write your code in this editor

draw_sprite_ext(playerTop,player_frame,x,y,1,1,mouse_direction - 90,c_white,1)

draw_text(x+20, y+20, global.coinCount)
draw_text(x+20, y+40, item_held_index)