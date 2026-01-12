/// @description Insert description here
// You can write your code in this editor
image_alpha = 0
image_xscale = 20
image_yscale = 20
stateFadeIn = function(){
    image_alpha = lerp(image_alpha,1,0.4); //Fades Alpha to 1
}

stateFadeOut = function(){
    image_alpha = lerp(image_alpha,0,0.1); //Fades Alpha to 0
}

state = stateFadeIn; //Start at Alpha 0