/// @description Insert description here
// You can write your code in this editor

if MenuActive != 1 && Targetting != 1 && global.Phase > 0 && instance_number(UI) > 0
	{
		//NormalAttack();
			audio_play_sound(ConfirmFV,0,0)
			ChooseTargetBasic()
			with global.Players[CurrentPlayer]
				{
					SkillID = 0
				}
	}
	

//if CurrentPlayer == 4
//			{
//				CurrentPlayer = 0
//			}

//if instance_number(UI) == 1 
//	{
//		if CurrentPlayer == 4
//			{
//				global.Phase =global.Phase*-1
//				CurrentPlayer = 0
//			}
//		instance_destroy(UI)
//		create_menu(global.Players[CurrentPlayer].x+global.Players[CurrentPlayer].MenuOffsetX,global.Players[CurrentPlayer].y+global.Players[CurrentPlayer].MenuOffsetY)
//	}
	