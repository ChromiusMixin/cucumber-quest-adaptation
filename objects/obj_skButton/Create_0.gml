/// @description Insert description here
// You can write your code in this editor

keys = variable_struct_get_names(global.Party[obj_GM.CurrentPlayer].Skills)
ID = instance_number(obj_skButton)-1
xtween = 300
SkillKey = keys[ID]
Skill = global.Party[obj_GM.CurrentPlayer].Skills[$ SkillKey]
x = x+200

Spell = Skill.Name
Desc = Skill.Desc
Cost = Skill.Cost
TargetType = Skill.TargetType
