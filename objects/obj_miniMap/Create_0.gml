/// @description Insert description here
// You can write your code in this editor

map_y = 10;
map_x = window_get_width() - map_width-10;


var delta_x = obj_world.world_width / obj_miniMap.map_width;
var delta_y = obj_world.world_height / obj_miniMap.map_height;

//init world to explore
var obj_world.map_explored = false;
for(var i = 0; i <= obj_miniMap.map_width; i++)
{
  for(var j = 0; j <= obj_miniMap.map_height; j ++)
  {
    var obj_world.map_explored[i, j] = delta_x*delta_y;
  }
}

//create fake visited area


