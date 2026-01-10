/// @description Initialize
// You can write your code in this editor
HP = 110
MP = 350
MHP = 110
MMP = 350
AC = 0 //Not active
Menu1 = 0 //1 = Attack, 2 = Magic, 3 = Guard, 4 = Synergy
Target = 0
Menu2 = 0 //Magic Menu
Menu3 = 0 //Synergy Menu
MenuOffsetX = 50
MenuOffsetY = -40
MagicOptions = 7
SynOptions = 3


Icon = Johncon

//Generic Animations
NormalAtk = JOHN_ATTACK;
Idle = JOHN_IDLE;
Hurt = IbHurt;

AttackSound = UndertaleSwing;
HitSound = UndertaleDMG;

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


function NormalAttack()
	{
		DamageEnemy(Target,75+irandom_range(30,45),)
		EndTurn()
		ChangeAnim(NormalAtk)
		PlayAttackSound()
		global.Enemies[obj_GM.CurrentOption].state = 5
		global.Enemies[obj_GM.CurrentOption].state = 3
		show_debug_message("Attacked!!!!!!!!!!!!")
	}
function SwitchChar(obj)
	{
		instance_change(obj,1)
	}
	