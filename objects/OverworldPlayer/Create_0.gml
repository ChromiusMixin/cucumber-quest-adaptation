/// @description Insert description here
// You can write your code in this editor

//Init Spriteset


UpSpr = IbOwUp
DownSpr = IbOwDown
LeftSpr = IbOwLeft
RightSpr = IbOwRight

Hspd = 4
Vspd = 4

Hmv = 1
Vmv = 1

Talk = 0
Menu = -1

Anim = sprite_index

//Set Pausemenu
PauseMenu = instance_create_depth(x,y,-999,MenuUI)
PauseMenu.Owner = self

Foe = -1

//Encounter Timer Shit
Encountering = 0
EncounterTimer = 0
TimerMax = 30
Fighting = 0