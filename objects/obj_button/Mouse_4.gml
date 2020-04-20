/// @description Insert description here
// You can write your code in this editor

sprite_index = spr_button_down;
image_index = 0;
if (button_type == 0)
{
	if (button_target=="exit")
	{
		game_end();
	} else
	{
		// find room
		x = 0;
		for(x=0;x<99;x+=1)
		{
			if (room_exists(x))
			{
				if (room_get_name(x)==button_target)
				break;
			}
		}
		if (x != 99)
		{
			room_goto(x);
		}
	}
} else if (button_type == 1)
{
	// run button function
	if (button_target == "quality")
	{
		// this handles quality update.
		if (button_title == "Normal")
		{
			button_title = "High";
			global.quality = 2;
			ini_open("Settings/savedata.ini");
			ini_write_real("general","quality",2);
			ini_close();
		} else if (button_title == "High")
		{
			button_title = "Low";
			global.quality = 0;
			ini_open("Settings/savedata.ini");
			ini_write_real("general","quality",0);
			ini_close();
		} else if (button_title == "Low")
		{
			button_title = "Normal";
			global.quality = 1;
			ini_open("Settings/savedata.ini");
			ini_write_real("general","quality",1);
			ini_close();
		}
	}
	if (button_target == "difficulty")
	{
		// this handles quality update.
		if (button_title == "Normal")
		{
			button_title = "Hard";
			global.difficulty = 2;
			ini_open("Settings/savedata.ini");
			ini_write_real("general","difficulty",2);
			ini_close();
		} else if (button_title == "Hard")
		{
			button_title = "Easy";
			global.difficulty = 0;
			ini_open("Settings/savedata.ini");
			ini_write_real("general","difficulty",0);
			ini_close();
		} else if (button_title == "Easy")
		{
			button_title = "Normal";
			global.difficulty = 1;
			ini_open("Settings/savedata.ini");
			ini_write_real("general","difficulty",1);
			ini_close();
		}
	}
	
}