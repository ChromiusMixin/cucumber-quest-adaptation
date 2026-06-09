/// @description Insert description here
// You can write your code in this editor


Hittime -=1 

if Hittime = 0
	{
			{
				Sbox.Close = 1
				global.SkillActive = 0
				with User EndTurn()
				Hittime = 25
				Attacking = 0
				instance_destroy()
			}
	}