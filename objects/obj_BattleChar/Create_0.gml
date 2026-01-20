/// @description Initialize Stats
// You can write your code in this editor
self[$ "Teamside"] ??= "1" // 1 = Player Side, -1 = Enemy Side
self[$ "Name"] ??= "Empty"
self[$ "MHP"] ??= "100"
self[$ "MMP"] ??= "250"
self[$ "Anims"] ??= "global.Units[0].Anims"
self[$ "Snds"] ??= "global.Units[0].Snds"
self[$ "Skills"] ??= "global.Units[0].Skills"
self[$ "BaseAtk"] ??= "global.Units[0].BaseAtk"
self[$ "DmgColor"] ??= "global.Units[0].DmgColor"
self[$ "Icon"] ??= "global.Units[0].Icon"

ID = 0
//Name = global.Party[ID].NameShort
LV = 5
//MHP = 228+(LV*12);
//MMP = 347+(LV*3);
HP = MHP;
MP = MMP;
STR = 6+(LV*4)
AC = 0; //Not active
Menu1 = 0; //1 = Attack, 2 = Magic, 3 = Guard, 4 = Synergy
Target = self
Menu2 = 0; //Magic Menu
Menu3 = 0; //Synergy Menu
MenuOffsetX = 20;
MenuOffsetY = -30;
SkQueue = BaseAtk.obj
MagicOptions = variable_struct_names_count(Skills)
SynOptions = 3;
holdanim = 0
Delay = 2
Flash = 0
SkillID = 0
PlayerID = 0
Movetype = -1
//Unique Shit
ReadyingNormal = 0
Hittime = 25
Attacking = 0
Dmg = 0
DmgRdc = 0


//Generic Animations
NormalAtk = Anims.NormalAtk
NormalEnd = Anims.NormalEnd
Cast = Anims.Cast
Idle = Anims.Idle
Hurt = Anims.Hurt
DeathSpr = Anims.DeathSpr
GuardStart = Anims.GuardStart
Guard = Anims.Guard
AttackSound = Snds.AttackSound
HitSound = Snds.HitSound
HurtSnd = Snds.HurtSnd


InitStatusEffects()

function findself(ele,ind)
{
	return ele.id = id
}

function PlayAttackSound()
{
	audio_play_sound(AttackSound,1,0)
}

function SetFrame(FrameNumber)
	{
		image_index = FrameNumber
	}
	
	
	
function ChangeAnim(AnimName)
	{
		sprite_index = AnimName
		image_index = 0
	}


function NormalAttack(user = self, targ = Target)
{
	global.SkillActive = 1
	instance_create_depth(x,y,depth,SkQueue,{User: user, Target: targ})
}

function UseSkill(user = self, skill = SkQueue, targ = Target)
{
	global.SkillActive = 1
	instance_create_depth(x,y,depth,skill,{User: user, Target: targ})
}

function EndTurn()
{
	global.TurnCount -= 1
			if global.TurnCount > 0
			{
				if Teamside = 1
					{
						if global.CurrentPlayer == array_length(global.Players)-1
							{
								obj_GM.CurrentPlayer = 0
							}
							else
							{
							obj_GM.CurrentPlayer += 1
							}
					}
				else
					{
						if global.CurrentPlayer == array_length(global.Enemies)-1
							{
								obj_GM.CurrentPlayer = 0
							}
							else
							{
							obj_GM.CurrentPlayer += 1
							}
					}
			}
}




	


function SwitchChar(obj)
	{
		instance_change(obj,1)
	}
	