/// @description Insert description here
// You can write your code in this editor

instance_deactivate_all(true)
instance_activate_object(WhiteFade)
if instance_exists(WhiteFade)
WhiteFade.state = WhiteFade.stateFadeOut
instance_create_depth(x,y,-200,Fade)

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
CurrentEn = 0

for (var i = 0; i < array_length(global.Party); ++i) //Spawn Players
{
	
var vx = camera_get_view_x(view_camera[0])
var vy = camera_get_view_y(view_camera[0])
var ts = array_length(global.Party)-1
global.TurnCountMax+= 1
array_push(global.Players, instance_create_depth(vx+275-(i*20),vy-(ts*30)+view_get_hport(0)/2+(i*50),1,global.Party[i].BattleObj,{MHP: global.Party[i].BHP,MMP: global.Party[i].BMP,Skills: global.Party[i].Skills,BaseAtk: global.Party[i].BaseAtk,Anims: global.Party[i].Anims,Snds: global.Party[i].Snds,Icon: global.Party[i].Icon,DmgColor: global.Party[i].DmgColor,Name: global.Party[i].NameShort,Teamside: 1}));
global.Players[i].depth = global.Players[i].depth-((i+1)*10)

}



//Initialize Boss

for (var i = 0; i < array_length(global.Troop); ++i) //Spawn Enemies
{
global.ENTurnCountMax+= 1
var vx = camera_get_view_x(view_camera[0])
var vy = camera_get_view_y(view_camera[0])
var ts = array_length(global.Troop)-1
array_push(global.Enemies, instance_create_depth(vx+view_get_wport(0)-275+(i*10),vy-(ts*30)+view_get_hport(0)/2+(i*50),1,global.Troop[i].BattleObj,{MHP: global.Troop[i].BHP,MMP: global.Troop[i].BMP,Skills: global.Troop[i].Skills,BaseAtk: global.Troop[i].BaseAtk,Anims: global.Troop[i].Anims,Snds: global.Troop[i].Snds,Icon: global.Troop[i].Icon,DmgColor: global.Troop[i].DmgColor,Name: global.Troop[i].NameShort,Teamside: -1}));
global.Enemies[i].depth = global.Enemies[i].depth-((i+1)*10)
global.Enemies[i].image_xscale *=-1
}
//Default Enemy Turncoiunt
global.ENTurnCountMax += 0


CreateIcons()



Menubuffer = 0

Movetype = -1

DelayTimer = 30
Mdelay = DelayTimer
Acdelay = Mdelay

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

cam = instance_create_layer(x,y,"CameraWork",obj_Camera)

function create_menu(x,y)
	{
		if global.Players[CurrentPlayer].DOWN != 1
			{
		instance_create_depth(x,y,-100,UI);
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
	for (var i = 0; i < global.Players[CurrentPlayer].MagicOptions; ++i)
		{

		array_push(global.Options, instance_create_depth(view_get_hport(0)+250-(i*40),200+(i*65),depth-(10*(i+1)),obj_skButton));

		}
	instance_create_depth(100,200,-9999,SelectorMenu)
	instance_destroy(UI)
}

function ChooseTargetBasic()
{

	CurrentOption = 0;
	instance_create_depth(global.Players[CurrentPlayer].x,global.Players[CurrentPlayer].y,-200,Selector)
	instance_create_depth(x,y,-200,obj_EnStatus)
	instance_destroy(UI)
	Targetting = 1;

}

function ExitBasicTarget()
{
	CurrentOption = 0;
	Targetting = 0;
	instance_destroy(Selector)
	instance_destroy(obj_EnStatus)
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
	instance_destroy(obj_skButton)
	create_menu(global.Players[CurrentPlayer].x+global.Players[CurrentPlayer].MenuOffsetX,global.Players[CurrentPlayer].y+global.Players[CurrentPlayer].MenuOffsetY)
	
	global.Options = [];
}





