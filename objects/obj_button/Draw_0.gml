/// @description Insert description here
// You can write your code in this editor

draw_sprite(sprite_index,image_index,x,y)
draw_set_color(c_black);
draw_text(x+(sprite_get_width(sprite_index)/2)-(string_width(button_title)/2), y+(sprite_get_height(sprite_index)/2)-(string_height(button_title)/2), button_title  );