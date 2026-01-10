/// @description Initialize Stats
// You can write your code in this editor
ID = instance_number(Kris)-1
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
MagicOptions = 4;
SynOptions = 3;
holdanim = 0
Icon = Kriscon
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
DmgColor = #85e9ff


//Generic Animations
NormalAtk = KrisPreAtk;
Idle = KrisIdle;
Hurt = KrisHurt;
DeathSpr = KrisDown;
GuardStart = KrisGuardStart;
Guard = KrisGuard;
AttackSound = UndertaleSwing;
HitSound = UndertaleDMG;
HurtSnd = UTHurt;


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


//Unique Animations
VectorShot = IbVShot;



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



function SpawnQTE()
	{
		QTE = instance_create_layer(x+200,y-125,"UI2",KrisTiming)
	}

function NormalAttack()
	{
		if SkillID < 1
			{
		Hittime = 25
		holdanim = 1
		ReadyingNormal = 1
		SpawnQTE()
		KrisTiming.State = KrisTiming.StateOpen
		global.SkillActive = 1
		ChangeAnim(NormalAtk)
		show_debug_message("Readying Swing")
			}
		if SkillID == 1 || SkillID == 3
			{
				Attacking = 1
				Hittime = 25
				global.SkillActive = 1
				ChangeAnim(KrisSkill)
				audio_play_sound(UTSpell,0,0)
			}
		if SkillID == 4
			{
				Attacking = 1
				Hittime = 250
				global.SkillActive = 1
				ChangeAnim(KrisXSlash)
				ReadyingNormal = 0
			}
				
	}
	

function TrueAtk()
	{
		PlayAttackSound()
		QTE.State = KrisTiming.StateClose
		Attacking = 1
		ChangeAnim(KrisAtk)
			
	}
function SwitchChar(obj)
	{
		instance_change(obj,1)
	}
	