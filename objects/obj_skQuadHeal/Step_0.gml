/// @description Insert description here
// You can write your code in this editor
Hittime -= 1

if Hittime = 0
	{
for (var i = 0; i < array_length(global.Players); ++i) {
			    with global.Players[i] 
					{
					if DOWN != 1
					DamageEnemy(self,-MHP*0.4,UTHeal,HealFxDT,,0,c_lime,"DTRF",,c_green,,0)
					Flash = 1
					}
				if i == array_length(global.Players)-1
					{
				SkillID = 0
				Attacking = 0
				global.SkillActive = 0
				with User EndTurn()
				instance_destroy()
					}
			}
	}