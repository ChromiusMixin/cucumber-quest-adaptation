// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function GiveGsh(Target = self,Amount = 1){
if Target.GSH == 0
	{
var StatCon = instance_create_layer(x,y,"UI2",o_Gsh)
Target.GSH += Amount 
StatCon.Count = Amount
StatCon.PlayerID = Target
array_push(Target.StatDis,StatCon)
	}
	else
	{
	Target.GSH += Amount
	}
}