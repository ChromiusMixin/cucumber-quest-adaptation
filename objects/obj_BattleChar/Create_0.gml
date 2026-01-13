/// @description Initialize Stats
// You can write your code in this editor
ID = instance_number(obj_BattleChar)-1
Name = global.Party[ID].NameShort
LV = 5
MHP = 228+(LV*12);
MMP = 347+(LV*3);
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
Skills = global.Party[ID].Skills
MagicOptions = variable_struct_names_count(Skills)
SynOptions = 3;
holdanim = 0
Icon = global.Party[ID].Icon
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
DmgColor = global.Party[ID].DmgColor


//Generic Animations
Anims = global.Party[ID].Anims
Snds = global.Party[ID].Snds
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
	instance_create_depth(x,y,depth,obj_skBasicAtk,{User: user, Target: targ})
}

function EndTurn()
{
	global.TurnCount -= 1
			if global.TurnCount > 0
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
}




	


function SwitchChar(obj)
	{
		instance_change(obj,1)
	}
	