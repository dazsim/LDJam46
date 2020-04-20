/// @description Insert description here
// You can write your code in this editor

draw_set_alpha(0.3);
draw_set_color(c_black);
draw_rectangle(map_x,map_y,map_x + map_width,map_y + map_height,false);
//show_debug_message("map_x :" + string(map_x) + " map_y : " + string(map_y) + " map_width : "+ string(map_width));

// draw explored area

for(dx = 0; dx < map_width;dx++)
{
	for(dy = 0; dy < map_height; dy++)
	{
		
		if (obj_world.map_explored[dx,dy]==0)
		{
			draw_set_alpha(0.3);
			draw_set_color(c_orange);
			draw_rectangle(map_x + dx,map_y + dy,map_x + dx+1,map_y + dy+1,false);
		}
		
	}
}

// draw rover

draw_set_color(c_white);
draw_set_alpha(0.80);
var dx = obj_rover.rover_x / obj_world.world_width * map_width ;
var dy = obj_rover.rover_y / obj_world.world_height * map_height ;

draw_circle(map_x + dx,map_y+dy,2,false);



// draw found drops

// draw info

draw_set_alpha(0.3);
draw_set_color(c_black)
draw_rectangle(map_x,map_y + map_height + 10,map_x + map_width,map_y + map_height + 30,false);
draw_set_color(c_yellow);
draw_set_alpha(0.80);

draw_text(
	map_x + 1, 
	map_y + map_height + 11, 
	"X: " + string(floor(obj_rover.rover_x)));

draw_text(
	map_x + map_width/2 + 1, 
	map_y + map_height + 11, 
	"Y: " + string(floor(obj_rover.rover_y)));
	
// draw percent complete
draw_set_alpha(0.3);
draw_set_color(c_black);
draw_rectangle(window_get_width()/2-25,5,window_get_width()/2+25,25,true);
draw_text(window_get_width()/2-23,7,string(map_complete*100/(map_width*map_height)) + "%");
draw_set_alpha(1.0);	