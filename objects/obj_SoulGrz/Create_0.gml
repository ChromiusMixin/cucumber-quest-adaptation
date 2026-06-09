/// @description Insert description here
// You can write your code in this editor
scale = 1
image_angle = 0
collid = [];

function tick()
{
	for (var i = 0; i < array_length(global.Party); ++i) {
	    with global.Players[i]
		{
			MP += 5
		}
	}
}

