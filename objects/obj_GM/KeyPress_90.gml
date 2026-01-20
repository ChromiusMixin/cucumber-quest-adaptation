/// @description Insert description here
// You can write your code in this editor
if instance_number(obj_skButton) == 0 && Targetting != 1 && global.Phase > 0 && global.TurnCount > 0 && global.SkillActive == 0
{

audio_play_sound(ConfirmFV,0,0)


Fade.state = Fade.stateFadeIn
global.Players[CurrentPlayer].AC = 1
MagicMenu()
MenuActive = 1;
Menubuffer = 5;
}


if Targetting == 1
	{
	if Movetype = -1
		{
		with global.Players[CurrentPlayer]
			{			
				MP -= global.MPCost
				global.MPCost = 0
				audio_play_sound(ConfirmFV,0,0)
				Target = global.TargettedEnemy
				UseSkill()
				
				
			}
		}
	else
		with global.Players[CurrentPlayer]
			{
				MP -= global.MPCost
				global.MPCost = 0
				audio_play_sound(ConfirmFV,0,0)
				Target = global.TargettedPlayer
				UseSkill()
				
				
			}
		ExitBasicTarget()
	}


if MenuActive = 1 && Targetting != 1 && global.Phase > 0 && Menubuffer = 0
	{
			
			if global.Players[CurrentPlayer].MP >= global.MPCost
				{
					Movetype = global.Options[CurrentOption].Skill.TargetType
					Fade.state = Fade.stateFadeOut
					global.Players[CurrentPlayer].SkQueue = global.Options[CurrentOption].Skill.SkillObj
					CloseMagicMenu()
					global.Players[CurrentPlayer].AC = 0
					MenuActive = 0;
					
					audio_play_sound(ConfirmFV,0,0)
					ChooseTargetBasic()
				}
				else
				{
					audio_play_sound(DenyFV,0,0)
				}
					

	}