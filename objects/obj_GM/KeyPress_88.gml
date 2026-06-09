/// @description Insert description here
// You can write your code in this editor

if instance_number(obj_skButton) > 0 && Fighting == 1
{
	audio_play_sound(snd_DeSelFV,0,0)
	Fade.state = Fade.stateFadeOut
	CloseMagicMenu()
	global.LivingPlayers[CurrentPlayer].AC = 0
	global.LivingPlayers[CurrentPlayer].SkillID = 0
	MenuActive = 0;
	global.MPCost = 0;
	Menubuffer = 3
}

if Targetting == 1 && Fighting == 1 && global.Phase > 0
	{
		audio_play_sound(snd_DeSelFV,0,0)
		ExitBasicTarget()
		global.LivingPlayers[CurrentPlayer].SkillID = 0
		Menubuffer = 3
	}

if instance_number(UI) > 0 && array_length(global.TurnCount) > 0 && global.Phase > 0 && Menubuffer == 0 && Fighting == 1
	{
		close_menu()
		with global.LivingPlayers[CurrentPlayer]
			{
				DFND = 1
				EndTurn()
				ChangeAnim(GuardStart)
			}
		audio_play_sound(snd_ConfirmFV,0,0)
	}