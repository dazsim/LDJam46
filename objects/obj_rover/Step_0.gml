/// @description Insert description here
// You can write your code in this editor
//show_debug_message("rover_x :" + string(rover_x));
//	show_debug_message("rover_y :" + string(rover_y));
if (speed > 0 )
{
	//show_debug_message("rover_x :" + string(rover_x));
	//show_debug_message("rover_y :" + string(rover_y));
	rover_x -= speed * cos(degtorad(direction))
	if (rover_x <0)
	{
		rover_x = obj_world.world_width-1;
	}
	if (rover_x > obj_world.world_width)
	{
		rover_x = 1;
	}
	if (rover_y < 0)
	{
		rover_y = obj_world.world_height-1;
	}
	if (rover_y > obj_world.world_height)
	{
		rover_y = 1;
	}
	rover_y += speed * sin(degtorad(direction))
	speed -=1
	if (speed < 0)
	{
		speed = 0;
	}
}

// get all coordinates in range of rover scanner and update exploration
var scanner_sqr = scanner_range*scanner_range;
var delta_x = (obj_world.world_width/obj_miniMap.map_width);
var delta_y = (obj_world.world_height/obj_miniMap.map_height);
var x_fix = 0;
var y_fix = 0;
for(var i=floor(obj_rover.rover_x/delta_x)-scanner_range; i<floor(obj_rover.rover_x/delta_x)+scanner_range;i++)
{
	for(var j=floor(obj_rover.rover_y/delta_y)-scanner_range; j<floor(obj_rover.rover_y/delta_y)+scanner_range;j++)
	{
		if (i > obj_miniMap.map_width)
		{
			x_fix = -obj_miniMap.map_width;
		} else
		if (i < 0)
		{
			x_fix = obj_miniMap.map_width;
		} else
		{
			x_fix = 0;
		}
		if (j > obj_miniMap.map_width)
		{
			y_fix = -obj_miniMap.map_height;
		} else
		if (j < 0)
		{
			y_fix = obj_miniMap.map_height;
		} else
		{
			y_fix = 0;
		}
		
		if ((i-floor(obj_rover.rover_x/delta_x))*(i-floor(obj_rover.rover_x/delta_x)) + (floor(obj_rover.rover_y/delta_y)-j)*(floor(obj_rover.rover_y/delta_y)-j) <= scanner_sqr)
		{
			//set point on map.
			if (obj_world.map_explored[i+x_fix,j+y_fix] >0)
			{				
				obj_world.map_explored[i+x_fix,j+y_fix] =0;
				obj_miniMap.map_complete+= 1;
				if (obj_miniMap.map_complete > (obj_miniMap.map_width * obj_miniMap.map_height))
				{
					// win the game
					room_goto(win);
				}
			}
		}
		
	}
}


