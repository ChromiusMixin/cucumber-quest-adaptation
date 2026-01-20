/// @description Insert description here
// You can write your code in this editor
Hittime -= 1

if Hittime = 0
	{
				DamageEnemy(Target,-Target.MHP*0.53,UTHeal,HealFxDT,,0,c_lime,"DTRF",,c_green,,0)
				if variable_instance_exists(Target,"Flash")
					{
						Target.Flash = 1
					}
				Attacking = 0
				global.SkillActive = 0
				with User EndTurn()
				instance_destroy()
	}