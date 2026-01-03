function scr_damage()
{
    var debug_inv = 0;
	var resisted = false
    
    if (variable_global_exists("chemg_god_mode"))
        debug_inv = global.chemg_god_mode;
    
    if (global.inv < 0 && debug_inv == 0)
    {
        scr_damage_cache();
        
		var __element = 0;
        
        if (variable_instance_exists(id, "element"))
        {
            if (is_real(element))
                __element = element;
        }
		
        if (target < 3)
        {
            if (global.hp[global.char[target]] <= 0)
            {
                scr_randomtarget();
                target = mytarget;
                
                with (global.charinstance[target])
                {
                    image_blend = c_white;
                    darkify = 0;
                }
            }
        }
        
        chartarget = 3;
        tdamage = floor(damage * random_range(0.96, 1.04));
        
        if (target < 3)
        {
            tdamage = floor(tdamage - (global.battledf[target] * 3 * random_range(0.96, 1.04)));
            chartarget = global.char[target];
            
            if (global.charaction[target] == 10)
                tdamage = floor((2 * tdamage) / 3);
            
            if (tdamage < 0)
            {
				tdamage = 0;
				resisted = true
			}
        }
        
		if (resisted == false)
		{
			if (!instance_exists(obj_shake))
				instance_create(0, 0, obj_shake);
		}
        with (global.charinstance[target])
        {
            hurt = 1;
            hurttimer = 0;
        }
		
		if (tdamage == 0)
		{
			with (global.charinstance[target])
				damage_resisted = true
		}
        
        hpdiff = tdamage;
        
        with (obj_dmgwriter)
        {
            if (delaytimer >= 1)
                killactive = 1;
        }
        
        doomtype = -1;
        
        if resisted = false
		{
		with (obj_heart)
            dmgnoise = 1;
		}
		else if resisted = true
        {
			with (obj_battlecontroller)
				defendnoise = 1
		}
		
        if (target < 3)
        {
            if (global.hp[chartarget] <= 0)
            {
                doomtype = 4;
                global.hp[chartarget] = 0;
            }
            else
            {
                global.hp[chartarget] -= tdamage;
                
                if (global.hp[chartarget] <= 0)
                {
                    hpdiff = abs(global.hp[chartarget] - (global.maxhp[chartarget] / 2));
                    doomtype = 4;
                    global.hp[chartarget] = 0;
                    scr_dead(target);
                }
				if (tdamage > (global.maxhp[chartarget] * 2))
                {
                        doomtype = 5;
                        hpdiff = round(global.hp[chartarget] + 999);
                        global.hp[chartarget] = -999;
                        scr_dead(target);
                }
            }
            
            dmgwriter = instance_create(global.charinstance[target].x, (global.charinstance[target].y + global.charinstance[target].myheight) - 24, obj_dmgwriter);
            dmgwriter.damage = hpdiff;
            dmgwriter.type = doomtype;
        }
        
        if (target == 3)
        {
            for (hpi = 0; hpi < 3; hpi += 1)
            {
                chartarget = global.char[hpi];
                
                if (global.hp[chartarget] >= 0)
                {
                    if (global.charaction[hpi] == 10)
                        global.hp[chartarget] -= ceil(tdamage / 2);
                    else
                        global.hp[chartarget] -= tdamage;
                    
                    if (global.hp[chartarget] <= 0)
                        global.hp[chartarget] = round(-global.maxhp[0] / 2);
                }
            }
        }
        
        global.inv = global.invc * 80;
        scr_damage_check();
        gameover = 1;
        
        if (global.char[0] != 0 && global.hp[global.char[0]] > 0)
            gameover = 0;
        
        if (global.char[1] != 0 && global.hp[global.char[1]] > 0)
            gameover = 0;
        
        if (global.char[2] != 0 && global.hp[global.char[2]] > 0)
            gameover = 0;
        
        if (gameover == 1)
            scr_gameover();
    }
}
