// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CurrentFrame(Frame, ID = id){
    if(ID = id){
        if(image_index >= Frame && image_index < Frame + 1) return true;
        else return false;
    }
    else{
        if(id.image_index >= Frame && id.image_index < Frame + 1) return true;
        else return false;
    }
}