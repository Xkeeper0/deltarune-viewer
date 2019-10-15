self.timer = (self.timer + 1)
if (self.timer == 1)
{
    self.song0 = snd_init("dontforget.ogg"@9885)
    self.song1 = mus_play(self.song0)
}
if (self.timer == 60)
    self.lyric = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_13_0"@9888)
if (self.timer == 108)
{
    self.lyric = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_19_0"@9889)
    self.line[0] = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_21_0"@9890)
    self.line[1] = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_22_0"@9891)
    self.line[2] = " "@24
    self.line[3] = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_24_0"@9892)
}
if (self.timer == 180)
{
    if (global.lang == "en"@2775)
        self.lyric = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_33_0"@9893)
}
if (self.timer == 201)
{
    self.line[0] = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_38_0"@9894)
    self.line[1] = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_39_0"@9895)
    self.line[2] = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_40_0"@9896)
    self.line[3] = " "@24
    self.line[4] = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_42_0"@9897)
    self.linecolor[0] = 12632256
    self.linecolor[1] = 12632256
    self.linecolor[2] = 12632256
    self.linecolor[4] = 16777215
    if (global.lang == "ja"@1566)
        self.lyric = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_33_0"@9893)
}
if (self.timer == 278)
{
    if (global.lang == "en"@2775)
        self.lyric = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_54_0"@9898)
}
if (self.timer == 298)
{
    self.line[0] = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_59_0"@9899)
    self.line[1] = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_60_0"@9900)
    self.line[2] = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_61_0"@9901)
    self.linecolor[2] = 12632256
    self.line[3] = " "@24
    self.line[4] = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_64_0"@9902)
    if (global.lang == "ja"@1566)
        self.lyric = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_54_0"@9898)
}
if (self.timer == 366)
{
    if (global.lang == "en"@2775)
        self.lyric = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_70_0"@9903)
}
if (self.timer == 390)
{
    self.line[0] = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_95_0"@9904)
    self.line[1] = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_96_0"@9905)
    self.line[2] = " "@24
    self.line[3] = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_98_0"@9906)
    self.line[4] = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_99_0"@9907)
    self.linecolor[0] = 12632256
    self.linecolor[1] = 16777215
    self.linecolor[3] = 12632256
    self.linecolor[4] = 16777215
    if (global.lang == "ja"@1566)
        self.lyric = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_70_0"@9903)
}
if (self.timer >= 480)
    _temp_local_var_1 = (self.timer <= 520)
else
    _temp_local_var_1 = 0
if _temp_local_var_1
{
    self.creditalpha = (self.creditalpha - 0.025)
    self.textalpha = (self.textalpha - 0.025)
}
if (self.timer == 526)
{
    self.textalpha = 1
    self.lyric = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_89_0"@9908)
}
if (self.timer == 573)
{
    self.creditalpha = 1
    self.line[0] = "Localization Producers"@9909
    self.line[1] = "John Ricciardi"@9910
    self.line[2] = "Graeme Howard"@9911
    self.linecolor[0] = 12632256
    self.linecolor[1] = 16777215
    self.linecolor[2] = 16777215
    self.linecolor[3] = 12632256
    self.linecolor[4] = 16777215
    self.line[3] = "Localization Programming"@9912
    self.line[4] = "Gregg Tavares"@9913
    if (global.lang == "ja"@1566)
    {
        self.line[0] = "ローカライズプロデューサー"@9914
        self.line[3] = "ローカライズプログラミング"@9915
    }
    self.lyric = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_108_0"@9916)
}
if (self.timer == 645)
{
    if (global.lang == "en"@2775)
        self.lyric = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_113_0"@9917)
}
if (self.timer == 668)
{
    self.line[0] = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_119_0"@9918)
    self.line[1] = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_120_0"@9919)
    self.line[2] = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_121_0"@9920)
    self.line[3] = "Snowdrake & Monster Kid Design"@9921
    self.line[4] = "Magnolia Porter"@9922
    self.linecolor[0] = 12632256
    self.linecolor[1] = 12632256
    self.linecolor[2] = 16777215
    self.linecolor[3] = 12632256
    self.linecolor[4] = 16777215
    if (global.lang == "ja"@1566)
        self.line[3] = "ライちゃん／モンスターの子　デザイン"@9923
    if (global.lang == "ja"@1566)
        self.lyric = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_113_0"@9917)
}
if (self.timer == 735)
    self.lyric = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_131_0"@9924)
if (self.timer == 765)
{
    self.line[0] = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_152_0"@9925)
    self.line[1] = "Gigi DG (Outfit & Color Assist)"@9926
    self.line[2] = "Betty Kwong (Temmie Design)"@9927
    self.line[3] = "256graph (JP Graphics)"@9928
    self.line[4] = "Ryan Alyea (Website)"@9929
    self.line[5] = "Brian Coia (Website)"@9930
    self.linecolor[0] = 12632256
    self.linecolor[1] = 16777215
    self.linecolor[2] = 16777215
    self.linecolor[3] = 16777215
    self.linecolor[4] = 16777215
    self.linecolor[5] = 16777215
    if (global.lang == "ja"@1566)
    {
        self.line[1] = "Gigi DG (カラーアシタンス)"@9931
        self.line[2] = "Betty Kwong (テミー・デザイン)"@9932
        self.line[3] = "256graph (日本語グラフィック)"@9933
        self.line[4] = "Ryan Alyea (ウェブサイト)"@9934
        self.line[5] = "Brian Coia (ウェブサイト)"@9935
    }
}
if (self.timer == 798)
    self.lyric = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_147_0"@9936)
if (self.timer == 870)
{
    self.line[0] = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_152_0"@9925)
    self.line[1] = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_153_0"@9937)
    self.line[2] = "Fontworks Inc."@9938
    self.line[3] = "Yutaka Sato (Happy Ruika)"@9939
    self.line[4] = "Hiroko Minamoto"@9940
    self.line[5] = "All 8-4 & Fangamer Staff"@9941
    self.linecolor[1] = 16777215
}
if (self.timer >= 960)
    _temp_local_var_2 = (self.timer <= 1030)
else
    _temp_local_var_2 = 0
if _temp_local_var_2
{
    self.creditalpha = (self.creditalpha - 0.02)
    self.textalpha = (self.textalpha - 0.02)
}
if (self.timer == 1033)
{
    self.textalpha = 1
    self.lyric = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_174_0"@9942)
}
if (self.timer == 1086)
    self.lyric = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_180_0"@9943)
if (self.timer >= 1300)
{
    if (self.timer <= 1560)
        _temp_local_var_3 = (self.creditalpha < 1)
    else
        _temp_local_var_3 = 0
    if _temp_local_var_3
        self.creditalpha = (self.creditalpha + 0.01)
    if (self.timer >= 1560)
        _temp_local_var_4 = (self.creditalpha > 0)
    else
        _temp_local_var_4 = 0
    if _temp_local_var_4
        self.creditalpha = (self.creditalpha - 0.01)
    self.line[0] = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_187_0"@9944)
    self.line[1] = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_188_0"@9945)
    self.linecolor[0] = 16777215
    self.linecolor[1] = 16777215
    self.line[2] = " "@24
    self.line[3] = " "@24
    self.line[4] = " "@24
    self.line[5] = " "@24
    self.textalpha = (self.textalpha - 0.01)
}
if (self.timer == 1660)
    snd_free(self.song0)
if (self.timer == 1680)
    game_end()
