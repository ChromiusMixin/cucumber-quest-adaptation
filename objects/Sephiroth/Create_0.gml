Name = "Sephiroth"
LV = 25
HP = 6400
MHP = HP
timer = 0
shakeamp = 50
shakedir = 1
state = 0 // 0 = idle, 1 = attacking, 3 = damaged, 4 = dead
Target = global.Players[0]
DmgColor = #ba66ff
TurnRemoveTimer = 45
Icon = Sephicon
Flash = 0
Dmg = 0
Move = 0
Spell = 0
AtkSnds = [];
HurtSnds = [];
SpellSnds = [];
array_push(HurtSnds,SephDmg1,SephDmg2,SephDmg3,SephDmg4)
array_push(AtkSnds,SephAtk1,SephAtk2,SephAtk3,SephAtk4)
array_push(SpellSnds,SephBant1,SephBant2,SephBant3,SephBant4)

HurtSnd = HurtSnds[0]
AtkSnd = AtkSnds[0]

Banter = SpellSnds[0]


audio_play_sound(SephIntro,0,0,0.5)


holdanim = 0
idle = SephirothIdle
InitStatusEffects()

y += 125
ystart = y
xstart = x


