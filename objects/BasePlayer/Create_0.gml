/// @description Initialize Stats
// You can write your code in this editor
HP = 280;
MHP = HP;
MP = 350;
MMP = MP;
AC = 0; //Not active
Menu1 = 0; //1 = Attack, 2 = Magic, 3 = Guard, 4 = Synergy
Target = 0;
Menu2 = 0; //Magic Menu
Menu3 = 0; //Synergy Menu
MenuOffsetX = 0;
MenuOffsetY = -35;
MagicOptions = 4;
SynOptions = 3;
Icon = Ibcon
PlayerID = 0

//Generic Animations
NormalAtk = IbAtk;
Idle = IbIdle;
Hurt = IbHurt;
AttackSound = UndertaleSwing;
HitSound = UndertaleDMG

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


function NormalAttack()
	{
		ChangeAnim(NormalAtk)
		DamageEnemy(Target,25+irandom_range(2,10),HitSound)
		EndTurn()
		PlayAttackSound()
		Target.state = 5
		Target.state = 3
		show_debug_message("Attacked!!!!!!!!!!!!")
		
	}
function SwitchChar(obj)
	{
		instance_change(obj,1)
	}
	