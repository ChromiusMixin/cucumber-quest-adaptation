/// @description Initialize Stats
// You can write your code in this editor
Name = "Susie"
LV = 5
HP = 450+(LV*15);
MP = 150+(LV*6);
MHP = HP;
MMP = MP;
STR = 9+(LV*7)
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
Icon = SusieCon
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
DmgColor = #f797ed

//Shit = instance_create_layer(x,y,layer,Susie)

//with Shit
//	{
//		Poop = instance_create_layer(x,y,layer,Kris)
//	}
	
//with Shit.Poop
//	{
//		Fart = instance_create_layer(x,y,layer,Ralsei)
//	}
	
//with Shit.Poop.Fart
//	{
//	return("lmao")
//	}


//Generic Animations
NormalAtk = SusiePreAtk;
Idle = SusieIdle;
Hurt = SusieHurt;
DeathSpr = SusieDown
GuardStart = SusieGuardStart;
Guard = SusieGuard;
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
					GM.CurrentPlayer = 0
				}
				else
				{
				GM.CurrentPlayer += 1
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
		QTE.sprite_index = SusCharge
		KrisTiming.State = KrisTiming.StateOpen
		global.SkillActive = 1
		ChangeAnim(NormalAtk)
		show_debug_message("Readying Swing")
			}
		if SkillID == 1 || SkillID == 2 || SkillID == 3 
			{
				Attacking = 1
				Hittime = 25
				global.SkillActive = 1
				ChangeAnim(SusieCast)
				audio_play_sound(UTSpell,0,0)
			}
		if SkillID == 4
			{
				Attacking = 1
				Hittime = 70
				global.SkillActive = 1
				ChangeAnim(SusieRudeBuster)
			}
				
	}
	
function TrueAtk()
	{
		PlayAttackSound()
		QTE.State = KrisTiming.StateClose
		Attacking = 1
		ChangeAnim(SusieAtk)
			
	}
function SwitchChar(obj)
	{
		instance_change(obj,1)
	}
	