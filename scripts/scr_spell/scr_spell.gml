function scr_spell(arg0, arg1)
{
    spell = arg0;
    caster = arg1;
    star = global.chartarget[arg1];
    global.spelldelay = 20;
    var item_use = false;
    
    switch (spell)
    {
        case 0:
            break;
        
        case 1:
            cancelattack = 0;
            
            if (global.monster[star] == 0)
                scr_retarget_spell();
            
            if (cancelattack == 0)
            {
                damage = ceil((global.battleat[arg1] * 10) - (global.monsterdf[star] * 3));
                
                if (global.automiss[star] == 1)
                    damage = 0;
                
                scr_damage_enemy(star, damage);
                attack = instance_create(global.monsterx[star] + random(6), global.monstery[star] + random(6), obj_basicattack);
                attack.sprite_index = spr_attack_mash1;
                dm.delay = 16;
            }
            
            global.spelldelay = 60;
            break;
        
        case 2:
            healnum = round(global.battlemag[arg1] * 5 * random_range(0.96, 1.04));
            scr_heal(star, healnum);
            global.charinstance[star].healnum = healnum;
            
            with (global.charinstance[star])
            {
                ha = instance_create(x, y, obj_healanim);
                ha.target = id;
                dmgwr = scr_dmgwriter_selfchar();
                
                with (dmgwr)
                {
                    delay = 16;
                    type = 3;
                }
                
                if (global.hp[global.char[myself]] >= global.maxhp[global.char[myself]])
                {
                    with (dmgwr)
                        specialmessage = 3;
                }
                
                dmgwr.damage = healnum;
                tu += 1;
            }
            
            global.spelldelay = 30;
            break;
        
        case 2.1:
            with (global.charinstance[caster])
            {
                ha = instance_create(x, y, obj_oflash);
                ha.target = id;
                ha.flashcolor = c_blue;
                ha.depth = depth - 1;
                ha.image_xscale = image_xscale;
                ha.image_yscale = image_yscale;
            }
            
            scr_applystatus_hero(caster, "coolspell", 3);
            global.spelldelay = 30;
            break;
        
        case 2.2:
            if (global.monster[star] == 0)
                scr_retarget_spell();
            
            if (global.monster[star] == 1)
            {
                with (global.monsterinstance[star])
                {
                    ha = instance_create(x, y, obj_oflash);
                    ha.target = id;
                    ha.flashcolor = c_fuchsia;
                    ha.depth = depth - 1;
                    ha.image_xscale = image_xscale;
                    ha.image_yscale = image_yscale;
                }
                
                scr_applystatus_monster(star, "def down", 2);
                global.monsterstatus[star] = 1;
            }
            
            global.spelldelay = 30;
            break;
        
        case 2.3:
            with (global.charinstance[star])
            {
                ha = instance_create(x, y, obj_oflash);
                ha.target = id;
                ha.flashcolor = merge_color(c_purple, c_black, 0.5);
                ha.depth = depth - 1;
                ha.image_xscale = image_xscale;
                ha.image_yscale = image_yscale;
            }
            
            scr_applystatus_hero(star, "poison", 5);
            global.spelldelay = 30;
            break;
        
        case 2.4:
            if (global.monster[star] == 0)
                scr_retarget_spell();
            
            if (global.monster[star] == 1)
            {
                with (global.monsterinstance[star])
                {
                    ha = instance_create(x, y, obj_oflash);
                    ha.target = id;
                    ha.flashcolor = merge_color(c_purple, c_black, 0.5);
                    ha.depth = depth - 1;
                    ha.image_xscale = image_xscale;
                    ha.image_yscale = image_yscale;
                }
                
                var _poisonamt = floor(global.monstermaxhp[star] / 10) + floor(global.battlemag[caster] * 1.75);
                var eff = scr_applystatus_monster(star, "poison", 4);
                eff.poi_amt = _poisonamt;
            }
            
            global.spelldelay = 30;
            break;
        
        case 3:
            if (global.monster[star] == 0)
                scr_retarget_spell();
            
            if (global.monster[star] == 1)
            {
                if (global.monsterstatus[star] == 1)
                {
                    with (global.monsterinstance[star])
                    {
                        if (global.monstertype[myself] != 19 && global.monstertype[myself] != 3)
                        {
                            global.flag[51 + myself] = 3;
                            event_user(10);
                            scr_monsterdefeat();
                        }
                        else
                        {
                            pacifycon = 1;
                            global.spelldelay = 1999;
                        }
                    }
                }
                else
                {
                    _pspell = instance_create(0, 0, obj_pacifyspell);
                    _pspell.target = global.monsterinstance[star];
                    _pspell.fail = 1;
                }
            }
            
            global.spelldelay = 40;
            break;
        
        case 4:
            cancelattack = 0;
            global.spelldelay = 60;
            
            if (global.monster[star] == 0)
                scr_retarget_spell();
            
            if (cancelattack == 0)
            {
                global.spelldelay = 140;
                damage = ceil(((global.battlemag[arg1] * 5) + (global.battleat[arg1] * 11)) - (global.monsterdf[star] * 3));
                
                if (global.automiss[star] == 1)
                    damage = 0;
                
                attack = instance_create(obj_herosusie.x, obj_herosusie.y, obj_rudebuster_anim);
                attack.damage = damage;
                attack.star = star;
                attack.caster = caster;
                attack.target = global.monsterinstance[star];
            }
            
            break;
        
        case 5:
            cancelattack = 0;
            global.spelldelay = 60;
            
            if (global.monster[star] == 0)
                scr_retarget_spell();
            
            if (cancelattack == 0)
            {
                global.spelldelay = 140;
                damage = ceil(((global.battlemag[arg1] * 6) + (global.battleat[arg1] * 13)) - (global.monsterdf[star] * 6));
                
                if (global.automiss[star] == 1)
                    damage = 0;
                
                attack = instance_create(obj_herosusie.x, obj_herosusie.y, obj_rudebuster_anim);
                attack.damage = damage;
                attack.star = star;
                attack.caster = caster;
                attack.target = global.monsterinstance[star];
                attack.red = 1;
            }
            
            break;
        
        case 6:
            healnum = global.battlemag[arg1] * 4;
            
            for (i = 0; i < 3; i += 1)
            {
                scr_heal(i, healnum);
                global.charinstance[i].healnum = healnum;
                
                with (global.charinstance[i])
                {
                    ha = instance_create(x, y, obj_healanim);
                    ha.target = id;
                    dmgwr = scr_dmgwriter_selfchar();
                    
                    with (dmgwr)
                    {
                        delay = 16;
                        type = 3;
                    }
                    
                    if (global.hp[global.char[myself]] >= global.maxhp[global.char[myself]])
                    {
                        with (dmgwr)
                            specialmessage = 3;
                    }
                    
                    dmgwr.damage = healnum;
                    tu += 1;
                }
            }
            
            global.spelldelay = 30;
            break;
        
        case 100:
            if (global.monster[star] == 0)
                scr_retarget_spell();
            
            if (global.monster[star] == 1)
            {
                if (global.mercymod[star] >= 100)
                {
                    if (global.monstertype[star] != 3)
                    {
                        with (global.monsterinstance[star])
                        {
                            global.flag[51 + myself] = 2;
                            event_user(10);
                            scr_monsterdefeat();
                        }
                    }
                    else
                    {
                        with (global.monsterinstance[star])
                            sparecon = 1;
                    }
                }
                else
                {
                    scr_mercyadd(star, global.sparepoint[star]);
                    _pspell = instance_create(0, 0, obj_pacifyspell);
                    _pspell.target = global.monsterinstance[star];
                    _pspell.fail = 1;
                    _pspell.flashcolor = c_yellow;
                }
            }
            
            global.spelldelay = 0;
            break;
        
        case 200:
            break;
        
        case 201:
            scr_healitemspell(40);
            item_use = true;
            break;
        
        case 202:
            reviveamt = ceil(global.maxhp[global.char[star]] / 2);
            
            if (global.hp[global.char[star]] <= 0)
                reviveamt = ceil(global.maxhp[global.char[star]]) + abs(global.hp[global.char[star]]);
            
            scr_healitemspell(reviveamt);
            item_use = true;
            break;
        
        case 203:
            break;
        
        case 204:
            break;
        
        case 205:
            scr_healitemspell(20);
            item_use = true;
            break;
        
        case 206:
            scr_healallitemspell(160);
            item_use = true;
            break;
        
        case 207:
            scr_healallitemspell(80);
            item_use = true;
            break;
        
        case 208:
            scr_healitemspell(70);
            item_use = true;
            break;
        
        case 209:
            scr_healitemspell(50);
            item_use = true;
            break;
        
        case 210:
            scr_healitemspell(4);
            item_use = true;
            break;
        
        case 211:
            scr_healallitemspell(30);
            item_use = true;
            break;
        
        case 212:
            if (global.char[star] == 1)
                scr_healitemspell(10);
            
            if (global.char[star] == 2)
                scr_healitemspell(90);
            
            if (global.char[star] == 3)
                scr_healitemspell(60);
            
            item_use = true;
            break;
        
        case 213:
            if (global.char[star] == 1)
                scr_healitemspell(80);
            
            if (global.char[star] == 2)
                scr_healitemspell(30);
            
            if (global.char[star] == 3)
                scr_healitemspell(30);
            
            item_use = true;
            break;
        
        case 214:
            scr_healitemspell(500);
            item_use = true;
            break;
        
        case 215:
            scr_healitemspell(60);
            item_use = true;
            break;
    }
    
    if (item_use == true)
    {
        with (obj_event_manager)
            trigger_event(UnknownEnum.Value_0, get_consumer_trophy());
    }
}
