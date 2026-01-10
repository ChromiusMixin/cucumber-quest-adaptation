Name = "???"
LV = 999
HP = 50000
MHP = HP
timer = 0
shakeamp = 50
shakedir = 1
state = 0 // 0 = idle, 1 = attacking, 3 = damaged, 4 = dead
Target = global.Players[0]
DmgColor = #9498b3
Hurt = KnightHurt
TurnRemoveTimer = 45
Icon = Flowcon
Flash = 0
Dmg = 0
image_xscale = 2
image_yscale = 2
holdanim = 0
idle = KnightIdle
y = y+100
ystart = y
InitStatusEffects()
AiTime = 0
AiTimeMax = 8

HurtSnds = [KnightDmg1,KnightDmg2]
HurtSnd = HurtSnds[0]