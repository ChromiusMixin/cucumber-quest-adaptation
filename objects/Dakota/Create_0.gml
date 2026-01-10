/// @description Initialize Stats
// You can write your code in this editor
HP = 320;
MP = 350;
MHP = HP;
MMP = MP;
AC = 0; //Not active
Menu1 = 0; //1 = Attack, 2 = Magic, 3 = Guard, 4 = Synergy
Target = self
Menu2 = 0; //Magic Menu
Menu3 = 0; //Synergy Menu
MenuOffsetX = 20;
MenuOffsetY = -30;
MagicOptions = 3;
SynOptions = 3;
holdanim = 0
Icon = Dakocon
Delay = 2
Flash = 0
SkillID = 0
Movetype = -1
//Unique Shit
ReadyingNormal = 0
Hittime = 25
Attacking = 0
DmgRdc = 0
DmgColor = #a9ff85;
PlayerID = 0


//Generic Animations
NormalAtk = DakotaPreAtk;
Idle = DakotaIdle;
Hurt = IbHurt;
AttackSound = UndertaleSwing;
HitSound = MeltyHeavyHit;
DeathSpr = RalseiDown
GuardStart = RalseiGuardStart;
Guard = RalseiGuard;

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
		QTE = instance_create_layer(320,240,"UI",DakoTiming)
	}

function NormalAttack()
	{
		
		if SkillID < 1
			{
		Hittime = 25
		holdanim = 1
		ReadyingNormal = 1
		SpawnQTE()
		QTE.State = QTE.StateOpen
		QTE.Parent = self
		global.SkillActive = 1
		ChangeAnim(NormalAtk)
		show_debug_message("Readying Swing")
			}

		if SkillID = 3
			{
			Attacking = 1
			global.SkillActive = 1
			Hittime = 20
			}
		
	}
	
function TrueAtk()
	{
		PlayAttackSound()
		QTE.State = QTE.StateClose
		Attacking = 1
		ChangeAnim(DakotaAtk)
			
	}
function SwitchChar(obj)
	{
		instance_change(obj,1)
	}
	