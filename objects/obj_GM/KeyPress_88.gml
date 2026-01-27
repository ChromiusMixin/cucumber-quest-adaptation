/// @description Insert description here
// You can write your code in this editor

if instance_number(obj_skButton) > 0 && Fighting == 1
{
	audio_play_sound(DeSelFV,0,0)
	Fade.state = Fade.stateFadeOut
	CloseMagicMenu()
	global.Players[CurrentPlayer].AC = 0
	global.Players[CurrentPlayer].SkillID = 0
	MenuActive = 0;
	global.MPCost = 0;
	Menubuffer = 3
}

if Targetting == 1 && Fighting == 1
	{
		audio_play_sound(DeSelFV,0,0)
		ExitBasicTarget()
		global.Players[CurrentPlayer].SkillID = 0
		Menubuffer = 3
	}

if instance_number(UI) > 0 && global.TurnCount > 0 && global.Phase > 0 && Menubuffer == 0 && Fighting == 1
	{
		close_menu()
		with global.Players[CurrentPlayer]
			{
				DFND = 1
				EndTurn()
				ChangeAnim(GuardStart)
			}
		audio_play_sound(ConfirmFV,0,0)
	}