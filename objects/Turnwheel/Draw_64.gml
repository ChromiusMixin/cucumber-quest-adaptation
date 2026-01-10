/// @description Insert description here
// You can write your code in this editor
draw_sprite(BGTurncount,image_index*0.30,0,-25)
draw_sprite_ext(TurnDivider,0,320,0,1,1,rotation,c_white,1)
draw_sprite_ext(TurnDivider,0,320,0,2,2,-rotation*0.5,c_white,0.5)
draw_sprite_ext(TurnDivider,0,320,0,3,3,rotation*0.25,c_white,0.5)

draw_text(280,30,"Turns: "+string(global.TurnCount));

for (var i = 0; i < 4; ++i) {
    //instance_create_layer(100,0,"UI2",FullTurnIcon)
	//draw_sprite_ext(TurnDivider,50,320,0,1,1,rotation,c_white,1)

}
