/// @description Insert description here
// You can write your code in this editor


stateFadeIn = function(){
    image_alpha = lerp(image_alpha,0.6,0.2); //Fades Alpha to 0.5
}

stateFadeOut = function(){
    image_alpha = lerp(image_alpha,0,0.2); //Fades Alpha to 0
}

state = stateFadeOut; //Start at Alpha 0