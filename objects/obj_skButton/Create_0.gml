/// @description Insert description here
// You can write your code in this editor


ID = instance_number(obj_skButton)-1
xtween = 300
Skill = global.LivingPlayers[obj_GM.CurrentPlayer].Skills[ID]
x = x+200

Spell = Skill.Name
Desc = Skill.Desc
Cost = Skill.Cost
TargetType = Skill.TargetType
