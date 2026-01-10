/// @description Insert description here
// You can write your code in this editor

// Example code for toggling fullscreen with a key press
if (keyboard_check_pressed(vk_f1)) // vk_f1 can be replaced with any desired key
{
    // Toggle between fullscreen and windowed mode
    window_set_fullscreen(!window_get_fullscreen());
}

// Example code for toggling fullscreen with a key press
if (keyboard_check_pressed(vk_f2)) // vk_f1 can be replaced with any desired key
{
    // Toggle between fullscreen and windowed mode
    audio_stop_all()
	room_restart()
	
}
//All The wild shit condensed into script functions.
HandleTargets()
UpdateHealthValues()

global.CurrentPlayer = CurrentPlayer;


if Targetting != 1
	{
Skill = CurrentOption
	}



if Menubuffer > 0
	{
		Menubuffer -= 1
	}

if DelayTimer > 0 && global.TurnCount < 1 // Put a little buffer between things happening
	{
		DelayTimer -= 1
	}

//var UILayer = layer_get_id("UI2");
//with (all) {
//  if (layer == UILayer) {
//    x =  Camera.x
//	y =  Camera.y;
//  }
//}

if global.Phase == -1
	{
		CurrentPlayer = 0;
		instance_destroy(UI)
	}



if global.TurnCount < 1 && DelayTimer == 0 && global.Phase == 1
	{
		endphase()
		DelayTimer = 30
	}

if global.TurnCount < 1 && DelayTimer == 0 && global.Phase == -1
	{
		for (var i = 0; i < array_length(global.Players); ++i) 
		{
		    with global.Players[i]
				{
					DFND = 0
				}
		}
		endphase()
		DelayTimer = 30
	}

if global.Phase == 1 && global.TurnCount > 0 && global.SkillActive == 0 && instance_number(UI) == 0 && instance_number(SelectorMenu) == 0 && Targetting == 0
	{
			create_menu(global.Players[CurrentPlayer].x+global.Players[CurrentPlayer].MenuOffsetX,global.Players[CurrentPlayer].y+global.Players[CurrentPlayer].MenuOffsetY)
	}


if instance_number(SelectorMenu) > 0 && MenuActive == 1 //Magic Menu choice following
	{
		SelectorMenu.x = global.Options[CurrentOption].x + 120
		SelectorMenu.y = global.Options[CurrentOption].y + 10
	}
	
