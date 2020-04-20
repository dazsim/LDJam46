///generateNoise(world_seed,dx,dy)
/// @argument world_seed
/// @argument dx
/// @argument dy
var world_seed = argument0;
var dx = argument1;
var dy = argument2;



return (floor(world_seed * dx * dy)%1); 