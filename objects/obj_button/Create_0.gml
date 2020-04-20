/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_black);
draw_text(0, 0, button_title  );

if (button_target == "difficulty")
{
	if (global.difficulty == 0)
	{
		button_title = "Easy";
	} 
	if (global.difficulty == 1)
	{
		button_title = "Normal";
	}
	if (global.difficulty == 2)
	{
		button_title = "Hard";
	}
}

if (button_target == "quality")
{
	if (global.quality == 0)
	{
		button_title = "Low";
	} 
	if (global.quality == 1)
	{
		button_title = "Normal";
	}
	if (global.quality == 2)
	{
		button_title = "High";
	}
}