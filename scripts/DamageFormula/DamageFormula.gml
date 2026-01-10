// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function DmgSet(Amount){
	if variable_instance_exists(self,"Dmg")
		{
	Dmg = Amount
	Dmg = clamp((Amount)+(Amount*TRKJ*0.20)-(Amount*Target.RKJA*0.20),Dmg*0.25,99999)
	if variable_instance_exists(self,"STR")
		{
			Dmg = Dmg*(1+(STR*0.01))
		}
		if Target.DFND == 1
			{
				Dmg = Dmg/2
			}
		if CHG == 1
			{
				Dmg = Dmg*2.5
				CHG = 0
			}
		}
}