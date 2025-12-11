with (other)
{
    if (global.inv < 0)
    {
        if (grazed == 1)
        {
            scr_tensionheal(grazepoints / 40);
            
            if (global.turntimer >= 20)
                global.turntimer -= (timepoints / 40);
            
            with (obj_grazebox)
            {
                if (grazetimer >= 0 && grazetimer < 8)
                    grazetimer = 7;
                
                if (grazetimer < 4)
                    grazetimer = 4;
            }
        }
        
        if (grazed == 0)
        {
            grazed = 1;
            scr_tensionheal(grazepoints);
            
            if (global.turntimer >= 20)
                global.turntimer -= timepoints;
            
            with (obj_battlecontroller)
                grazenoise = 1;
            
            with (obj_grazebox)
                grazetimer = 20;
        }
    }
}
