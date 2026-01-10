/// @description Insert description here
// You can write your code in this editor
State();

Timer += 1

if Timer >= 30 && Count < 4
	{
		Charge()
		Timer = 0
	}
	
if Timer >= 30 && Count >= 4
	{
	Parent.TrueAtk()
	Parent.ReadyingNormal = 0
	StateClose();
	}
	
if Count > 0 && keyboard_check(vk_left) == 0
	{
	Parent.DmgRdc = Count*23
	Parent.TrueAtk()
	Parent.ReadyingNormal = 0
	StateClose();
	}