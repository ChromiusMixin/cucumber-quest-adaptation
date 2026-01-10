/// @description Insert description here
// You can write your code in this editor


if !instance_exists(obj_Turnwheel)
	{
instance_create_layer(view_get_wport(0)/2,view_get_hport(0)-view_get_hport(0),"UI2",obj_Turnwheel)
	}


global.statoffsetx = 0
global.statoffsety = -40
global.statspacing = 10
global.Players = [];
global.PlayerIcons = [];
global.BossIcons = [];
global.Options = [];
global.SkillActive = 0
global.Enemies = [];
global.LivingPlayers = [];

for (var i = 0; i < array_length(global.Party); ++i) //Spawn Players
{
	
var vx = camera_get_view_x(view_camera[0])
var vy = camera_get_view_y(view_camera[0])

global.TurnCountMax+= 1
array_push(global.Players, instance_create_layer(vx+275+(i*20),vy+view_get_hport(0)/2+(i*100),"Tokens",global.Party[i].BattleObj));
global.Players[i].depth = global.Players[i].depth-(i*10)

}



//Initialize Boss

for (var i = 0; i < array_length(global.Troop); ++i) //Spawn Enemies
{
global.ENTurnCountMax+= 1
var vx = camera_get_view_x(view_camera[0])
var vy = camera_get_view_y(view_camera[0])
var ts = array_length(global.Troop)-1
array_push(global.Enemies, instance_create_layer(vx+view_get_wport(0)-275+(i*10),(vy-(ts*30)+view_get_hport(0)/2)+((i-1)*100),"Tokens",global.Troop[i]));

}
//Default Enemy Turncoiunt
global.ENTurnCountMax += 1


CreateIcons()



Menubuffer = 0

Movetype = -1

DelayTimer = 30

All = 0

global.MPCost = 0


//global.Players[0].SwitchChar(Kris)

//global.Players[1].SwitchChar(Susie)

//global.Players[2].SwitchChar(Ralsei)

//global.Players[3].SwitchChar(Dakota)



for (var i = 0; i < array_length(global.Players); ++i) {
	with global.Players[i]
		{	
			PlayerID = i
			array_push(global.LivingPlayers, [PlayerID,global.Players[i]])
		}
	with global.PlayerIcons[i]
		{	
			PlayerID = i
		}
}


//for (var i = 0; i < array_length(global.Enemies); ++i) {
//	with global.BossIcons[i]
//		{	
//			EnemyID = i
//		}
//}



UpdateIcons()



global.TurnCount = global.TurnCountMax

CurrentPlayer = 0;
CurrentEnemy = 0;
global.CurrentPlayer = CurrentPlayer;
global.CurrentEnemy = CurrentEnemy;
CurrentOption = 0;
Skill = 0


MenuActive = 0;
Targetting = 0;






EnemyListSize =  array_length(global.Enemies)-1;

global.TargettedEnemy = global.Enemies[CurrentOption];
global.TargettedPlayer = global.Players[CurrentOption];

global.Phase = 1 //1 = Player Phase, -1 = Enemy Phase

cam = instance_create_layer(x,y,"CameraWork",Camera)

function create_menu(x,y)
	{
		if global.Players[CurrentPlayer].DOWN != 1
			{
		instance_create_layer(x,y,"UI",UI);
			}
		
	}

function close_menu()
	{
		instance_destroy(UI)
		
	}

function endphase()
{
	instance_create_layer(0,0,"UI2",obj_Turnchange)

	CurrentPlayer = 0;
	if global.Phase == 1
		{
			
			global.TurnCount = global.ENTurnCountMax
		}
	if global.Phase == -1
		{
			global.TurnCount = global.TurnCountMax
		}
	global.Phase = global.Phase*-1
}

function MagicMenu()
{
	for (i = 0; i < global.Players[CurrentPlayer].MagicOptions; ++i)
		{

		array_push(global.Options, instance_create_layer(view_get_hport(0)+(i*20),200+(i*45),"UI",Button));

		}
	instance_create_layer(100,200,"UI2",SelectorMenu)
	instance_destroy(UI)
}

function ChooseTargetBasic()
{

	CurrentOption = 0;
	instance_create_layer(global.Players[CurrentPlayer].x,global.Players[CurrentPlayer].y,"UI2",Selector)
	instance_create_layer(x,y,"UI2",EnStatus)
	instance_destroy(UI)
	Targetting = 1;
}

function ExitBasicTarget()
{
	CurrentOption = 0;
	Targetting = 0;
	instance_destroy(Selector)
	instance_destroy(EnStatus)
	if global.TurnCount > 0 && global.SkillActive == 0
		{
	create_menu(global.Players[CurrentPlayer].x+global.Players[CurrentPlayer].MenuOffsetX,global.Players[CurrentPlayer].y+global.Players[CurrentPlayer].MenuOffsetY)
		}
	Movetype = -1
}


function CloseMagicMenu()
{
	CurrentOption = 0;
	instance_destroy(SelectorMenu)
	instance_destroy(Button)
	create_menu(global.Players[CurrentPlayer].x+global.Players[CurrentPlayer].MenuOffsetX,global.Players[CurrentPlayer].y+global.Players[CurrentPlayer].MenuOffsetY)
	
	global.Options = [];
}





