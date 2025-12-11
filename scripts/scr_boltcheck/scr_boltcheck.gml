function scr_boltcheck(arg0)
{
    pressbuffer[global.char[arg0]] = 5;
    qualifybolt = -1;
    close = 198;
    topclose = 198;
    
    for (i = 0; i < bolttotal; i += 1)
    {
        if (boltchar[i] == arg0 && boltalive[i] == 1)
        {
            close = boltframe[i] - boltx;
            
            if (close < 30 && close > -10)
            {
                if (close < topclose)
                {
                    topclose = close;
                    qualifybolt = i;
                }
            }
        }
    }
    
    if (qualifybolt != -1)
    {
        p = abs(topclose);
        burstbolt = instance_create((x + 80 + (boltframe[qualifybolt] * boltspeed)) - (boltx * boltspeed), y + (38 * arg0), obj_burstbolt);
        
        if (p == 0 || p == 1)
        {
            points[arg0] += 150;
            
            with (burstbolt)
                image_blend = c_yellow;
            
            with (burstbolt)
                mag = 0.1;
        }
        
        if (p == 2 || p == 3)
            points[bc] += 120;
        
        if (p == 4 || p == 5)
            points[bc] += 110;
        
        if (p >= 6)
        {
            points[arg0] += 100 - (abs(topclose) * 2);
            burstbolt.image_blend = boltcolor[arg0];
        }
        
        if (p >= 30)
            burstbolt.image_blend = charcolor[arg0];
        
        boltalive[qualifybolt] = 0;
    }
}
