/// @description Insert description here
// You can write your code in this editor
x = PlayerID.x+(Position*global.statspacing)
y = PlayerID.y
Count = PlayerID.GSH
Position = array_get_index(PlayerID.StatDis,id)

if Count == 0
	{
		instance_destroy(self)
		array_delete(PlayerID.StatDis,Position,1)
		//for (var i = 0; i < array_length(PlayerID.StatDis); ++i) {
		//    with PlayerID.StatDis[i]
		//		{
		//			Position = clamp(Position-1,0,99)
		//		}
		//}
	}