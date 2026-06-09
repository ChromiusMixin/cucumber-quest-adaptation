/// @description Insert description here
// You can write your code in this editor

global.TurnCountMax = array_length(global.LivingPlayers)

if array_length(global.Enemies) == 0 && array_length(global.LivingPlayers) > 0 && Fighting = 1
	{
		Fighting = 0
		Won = 1
	}
	
if array_length(global.LivingPlayers) == 0 && Fighting = 1
	{
		Fighting = 0
		Loss = 1
	}

if Fighting = 0
	{
		if global.SkillActive = 0
		{
		instance_destroy(obj_Turn)
		}
		if instance_exists(UI)
		{
			instance_destroy(UI)
			
		}
		audio_sound_gain(BGM,0,1025)
		if audio_sound_get_gain(BGM) <= 0.5
			{
				if !instance_exists(obj_Victory)
					{
						instance_create_depth(x,y,-10000,obj_Victory)
					}
			}
	}

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


//if Targetting != 1
//	{
//Skill = CurrentOption
//	}



if Menubuffer > 0
	{
		Menubuffer -= 1
	}

if DelayTimer > 0 && array_length(global.TurnCount) < 1 && Fighting = 1 // Put a little buffer between things happening
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

//if instance_exists(obj_Turnchange)
//	{
//		CurrentPlayer = 0;
//		RefilTurns()
//	}
if global.Phase == -1 && Fighting = 1
	{
		instance_destroy(UI)
	
	if array_length(global.TurnCount) > 0 && !instance_exists(obj_Turnchange) && global.SkillActive = 0
		{
		with global.Enemies[CurrentPlayer]
			{
			var keys = variable_struct_get_names(Skills)
			var ID = irandom(array_length(keys)-1)
			var SkillKey = keys[ID]
			var Skill = Skills[$ SkillKey]	
				if DOWN != 1
				{
					if Skill.TargetType = -1
					{
					Target = global.LivingPlayers[irandom(array_length(global.LivingPlayers)-1)]
					UseSkill(,Skill.SkillObj,)
					}
					else
					{
					Target = global.Enemies[irandom(array_length(global.Enemies)-1)]
					UseSkill(,Skill.SkillObj,)
					}
				}
				else
				{
					EndTurn()
				}
			}
		}
		
	}


if array_length(global.TurnCount) < 1 && DelayTimer == 0 && global.Phase == 1
	{
		endphase()
		DelayTimer = 30
	}

if array_length(global.TurnCount) < 1 && DelayTimer == 0 && global.Phase == -1
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

if global.Phase == 1 && array_length(global.TurnCount) > 0 && global.SkillActive == 0 && instance_number(UI) == 0 && instance_number(SelectorMenu) == 0 && Targetting == 0 && Fighting = 1
	{
			create_menu(global.LivingPlayers[CurrentPlayer].x+global.LivingPlayers[CurrentPlayer].MenuOffsetX,global.LivingPlayers[CurrentPlayer].y+global.LivingPlayers[CurrentPlayer].MenuOffsetY)
	}


if instance_number(SelectorMenu) > 0 && MenuActive == 1 //Magic Menu choice following
	{
		SelectorMenu.x = global.Options[CurrentOption].x + 120
		SelectorMenu.y = global.Options[CurrentOption].y + 10
	}
	
