timer += 1;

if (timer == 1)
{
    song0 = snd_init("dontforget.ogg");
    song1 = mus_play(song0);
}

if (timer == 120)
    lyric = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_13_0");

if (timer == 216)
{
    lyric = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_19_0");
    line[0] = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_21_0");
    line[1] = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_22_0");
    line[2] = " ";
    line[3] = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_24_0");
}

if (timer == 360)
{
    if (global.lang == "en")
        lyric = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_33_0");
}

if (timer == 402)
{
    line[0] = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_38_0");
    line[1] = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_39_0");
    line[2] = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_40_0");
    line[3] = " ";
    line[4] = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_42_0");
    linecolor[0] = c_ltgray;
    linecolor[1] = c_ltgray;
    linecolor[2] = c_ltgray;
    linecolor[4] = c_white;
    
    if (global.lang == "ja")
        lyric = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_33_0");
}

if (timer == 556)
{
    if (global.lang == "en")
        lyric = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_54_0");
}

if (timer == 596)
{
    line[0] = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_59_0");
    line[1] = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_60_0");
    line[2] = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_61_0");
    linecolor[2] = c_ltgray;
    line[3] = " ";
    line[4] = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_64_0");
    
    if (global.lang == "ja")
        lyric = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_54_0");
}

if (timer == 732)
{
    if (global.lang == "en")
        lyric = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_70_0");
}

if (timer == 780)
{
    line[0] = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_95_0");
    line[1] = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_96_0");
    line[2] = " ";
    line[3] = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_98_0");
    line[4] = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_99_0");
    linecolor[0] = c_ltgray;
    linecolor[1] = c_white;
    linecolor[3] = c_ltgray;
    linecolor[4] = c_white;
    
    if (global.lang == "ja")
        lyric = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_70_0");
}

if (timer >= 960 && timer <= 1040)
{
    creditalpha -= 0.0125;
    textalpha -= 0.0125;
}

if (timer == 1052)
{
    textalpha = 1;
    lyric = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_89_0");
}

if (timer == 1146)
{
    creditalpha = 1;
    line[0] = "Localization Producers";
    line[1] = "John Ricciardi";
    line[2] = "Graeme Howard";
    linecolor[0] = c_ltgray;
    linecolor[1] = c_white;
    linecolor[2] = c_white;
    linecolor[3] = c_ltgray;
    linecolor[4] = c_white;
    line[3] = "Additional Programming";
    line[4] = "Gregg Tavares (PC)";
    line[5] = "Sarah O'Donnell (Console)";
    line[6] = "Fred Wood";
    line[7] = "Henri Beeres (Enjl)";
    
    if (global.lang == "ja")
    {
        line[0] = "ローカライズプロデューサー";
        line[3] = "追加プログラミング";
        line[4] = "Gregg Tavares (PC版)";
        line[5] = "Sarah O'Donnell (コンシューマー版)";
        line[6] = "Fred Wood";
        line[7] = "Henri Beeres (Enjl)";
    }
    
    lyric = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_108_0");
}

if (timer == 1290)
{
    if (global.lang == "en")
        lyric = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_113_0");
}

if (timer == 1336)
{
    line[0] = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_119_0");
    line[1] = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_120_0");
    line[2] = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_121_0");
    line[3] = "Snowdrake & Monster Kid Design";
    line[4] = "Magnolia Porter";
    line[5] = "";
    line[6] = "";
    line[7] = "";
    linecolor[0] = c_ltgray;
    linecolor[1] = c_ltgray;
    linecolor[2] = c_white;
    linecolor[3] = c_ltgray;
    linecolor[4] = c_white;
    
    if (global.lang == "ja")
        line[3] = "ライちゃん／モンスターの子　デザイン";
    
    if (global.lang == "ja")
        lyric = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_113_0");
}

if (timer == 1470)
    lyric = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_131_0");

if (timer == 1530)
{
    line[0] = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_152_0");
    line[1] = "Gigi DG (Outfit & Color Assist)";
    line[2] = "Betty Kwong (Temmie Design)";
    line[3] = "256graph (JP Graphics)";
    line[4] = "Ryan Alyea (Website)";
    line[5] = "Brian Coia (Website)";
    linecolor[0] = c_ltgray;
    linecolor[1] = c_white;
    linecolor[2] = c_white;
    linecolor[3] = c_white;
    linecolor[4] = c_white;
    linecolor[5] = c_white;
    
    if (global.lang == "ja")
    {
        line[1] = "Gigi DG (カラーアシタンス)";
        line[2] = "Betty Kwong (テミー・デザイン)";
        line[3] = "256graph (日本語グラフィック)";
        line[4] = "Ryan Alyea (ウェブサイト)";
        line[5] = "Brian Coia (ウェブサイト)";
    }
}

if (timer == 1596)
    lyric = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_147_0");

if (timer == 1740)
{
    line[0] = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_152_0");
    line[1] = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_153_0");
    line[2] = "Fontworks Inc.";
    line[3] = "Yutaka Sato (Happy Ruika)";
    line[4] = "Hiroko Minamoto";
    line[5] = "All 8-4 & Fangamer Staff";
    linecolor[1] = c_white;
}

if (timer >= 1920 && timer <= 2060)
{
    creditalpha -= 0.01;
    textalpha -= 0.01;
}

if (timer == 2066)
{
    textalpha = 1;
    lyric = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_174_0");
}

if (timer == 2172)
    lyric = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_180_0");

if (timer >= 2600)
{
    if (timer <= 3120 && creditalpha < 1)
        creditalpha += 0.005;
    
    if (timer >= 3120 && creditalpha > 0)
        creditalpha -= 0.005;
    
    line[0] = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_187_0");
    line[1] = " ";
    linecolor[0] = c_white;
    linecolor[1] = c_white;
    line[2] = " ";
    line[3] = " ";
    line[4] = " ";
    line[5] = " ";
    textalpha -= 0.005;
}

if (timer == 3320)
    snd_free(song0);

if (timer == 3360)
    game_restart()
