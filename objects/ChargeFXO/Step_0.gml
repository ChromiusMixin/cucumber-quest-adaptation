/// @description Insert description here
// You can write your code in this editor
Removetime -= 1

if Removetime <= 0
	{
		layer_sequence_destroy(Seq)
		layer_destroy(templayer)
		instance_destroy()
	}