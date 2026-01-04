facechange -= 1;

if (nowface != global.fc)
    facechange = 3;

if (facechange <= 0)
{
    if (global.fc == 1)
    {
        if (global.flag[29] == 0)
        {
            face = 1;
            
            if (global.fe == 1)
                face = spr_face_s1;
            
            if (global.fe == 2)
                face = spr_face_s2;
            
            if (global.fe == 3)
                face = spr_face_s3;
            
            if (global.fe == 4)
                face = spr_face_s4;
            
            if (global.fe == 5)
                face = spr_face_s5;
            
            if (global.fe == 6)
                face = spr_face_s6;
            
            if (global.fe == 7)
                face = spr_face_s7;
            
            if (global.fe == 8)
                face = spr_face_s8;
            
            if (global.fe == 9)
                face = spr_face_s9;
            
            if (global.fe == 10)
                face = spr_face_sA;
            
            if (global.fe == 11)
                face = spr_face_sB;
            
            if (global.fe == 12)
                face = spr_face_sC;
            
            if (global.fe == 13)
                face = spr_face_sD;
            
            draw_sprite_ext(face, face_index, x - 5, y, f, f, 0, c_white, 1);
        }
        else
        {
            face = 0;
            face_index = global.fe;
            draw_sprite_ext(face, face_index, x - 5, y, f, f, 0, c_white, 1);
        }
    }
    
    if (global.fc == 2)
    {
        face = spr_face_r_dark;
        
        if (global.flag[30] == 1)
            face = spr_face_r_hood;
        
        if (global.flag[30] == 2)
            face = spr_face_r_nohat;
        
        face_index = global.fe;
        draw_sprite_ext(face, face_index, x - 15, y - 10, f, f, 0, c_white, 1);
    }
    
    if (global.fc == 5)
    {
        face = spr_face_l0;
        face_index = global.fe;
        draw_sprite_ext(face, face_index, x - 15, y - 10, f, f, 0, c_white, 1);
    }
}

nowface = global.fc;
