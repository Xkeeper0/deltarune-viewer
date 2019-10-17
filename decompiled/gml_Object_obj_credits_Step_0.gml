self.timer += 1
if (self.timer == 1)
{
    self.song0 = snd_init("dontforget.ogg")
    self.song1 = mus_play(self.song0)
}
if (self.timer == 60)
    self.lyric = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_13_0")
if (self.timer == 108)
{
    self.lyric = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_19_0")
    self.line[0] = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_21_0")
    self.line[1] = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_22_0")
    self.line[2] = " "
    self.line[3] = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_24_0")
}
if (self.timer == 180)
{
    if (global.lang == "en")
        self.lyric = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_33_0")
}
if (self.timer == 201)
{
    self.line[0] = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_38_0")
    self.line[1] = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_39_0")
    self.line[2] = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_40_0")
    self.line[3] = " "
    self.line[4] = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_42_0")
    self.linecolor[0] = 12632256
    self.linecolor[1] = 12632256
    self.linecolor[2] = 12632256
    self.linecolor[4] = 16777215
    if (global.lang == "ja")
        self.lyric = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_33_0")
}
if (self.timer == 278)
{
    if (global.lang == "en")
        self.lyric = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_54_0")
}
if (self.timer == 298)
{
    self.line[0] = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_59_0")
    self.line[1] = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_60_0")
    self.line[2] = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_61_0")
    self.linecolor[2] = 12632256
    self.line[3] = " "
    self.line[4] = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_64_0")
    if (global.lang == "ja")
        self.lyric = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_54_0")
}
if (self.timer == 366)
{
    if (global.lang == "en")
        self.lyric = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_70_0")
}
if (self.timer == 390)
{
    self.line[0] = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_95_0")
    self.line[1] = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_96_0")
    self.line[2] = " "
    self.line[3] = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_98_0")
    self.line[4] = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_99_0")
    self.linecolor[0] = 12632256
    self.linecolor[1] = 16777215
    self.linecolor[3] = 12632256
    self.linecolor[4] = 16777215
    if (global.lang == "ja")
        self.lyric = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_70_0")
}
if ((self.timer >= 480) && (self.timer <= 520))
{
    self.creditalpha -= 0.025
    self.textalpha -= 0.025
}
if (self.timer == 526)
{
    self.textalpha = 1
    self.lyric = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_89_0")
}
if (self.timer == 573)
{
    self.creditalpha = 1
    self.line[0] = "Localization Producers"
    self.line[1] = "John Ricciardi"
    self.line[2] = "Graeme Howard"
    self.linecolor[0] = 12632256
    self.linecolor[1] = 16777215
    self.linecolor[2] = 16777215
    self.linecolor[3] = 12632256
    self.linecolor[4] = 16777215
    self.line[3] = "Localization Programming"
    self.line[4] = "Gregg Tavares"
    if (global.lang == "ja")
    {
        self.line[0] = "ローカライズプロデューサー"
        self.line[3] = "ローカライズプログラミング"
    }
    self.lyric = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_108_0")
}
if (self.timer == 645)
{
    if (global.lang == "en")
        self.lyric = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_113_0")
}
if (self.timer == 668)
{
    self.line[0] = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_119_0")
    self.line[1] = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_120_0")
    self.line[2] = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_121_0")
    self.line[3] = "Snowdrake & Monster Kid Design"
    self.line[4] = "Magnolia Porter"
    self.linecolor[0] = 12632256
    self.linecolor[1] = 12632256
    self.linecolor[2] = 16777215
    self.linecolor[3] = 12632256
    self.linecolor[4] = 16777215
    if (global.lang == "ja")
        self.line[3] = "ライちゃん／モンスターの子　デザイン"
    if (global.lang == "ja")
        self.lyric = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_113_0")
}
if (self.timer == 735)
    self.lyric = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_131_0")
if (self.timer == 765)
{
    self.line[0] = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_152_0")
    self.line[1] = "Gigi DG (Outfit & Color Assist)"
    self.line[2] = "Betty Kwong (Temmie Design)"
    self.line[3] = "256graph (JP Graphics)"
    self.line[4] = "Ryan Alyea (Website)"
    self.line[5] = "Brian Coia (Website)"
    self.linecolor[0] = 12632256
    self.linecolor[1] = 16777215
    self.linecolor[2] = 16777215
    self.linecolor[3] = 16777215
    self.linecolor[4] = 16777215
    self.linecolor[5] = 16777215
    if (global.lang == "ja")
    {
        self.line[1] = "Gigi DG (カラーアシタンス)"
        self.line[2] = "Betty Kwong (テミー・デザイン)"
        self.line[3] = "256graph (日本語グラフィック)"
        self.line[4] = "Ryan Alyea (ウェブサイト)"
        self.line[5] = "Brian Coia (ウェブサイト)"
    }
}
if (self.timer == 798)
    self.lyric = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_147_0")
if (self.timer == 870)
{
    self.line[0] = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_152_0")
    self.line[1] = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_153_0")
    self.line[2] = "Fontworks Inc."
    self.line[3] = "Yutaka Sato (Happy Ruika)"
    self.line[4] = "Hiroko Minamoto"
    self.line[5] = "All 8-4 & Fangamer Staff"
    self.linecolor[1] = 16777215
}
if ((self.timer >= 960) && (self.timer <= 1030))
{
    self.creditalpha -= 0.02
    self.textalpha -= 0.02
}
if (self.timer == 1033)
{
    self.textalpha = 1
    self.lyric = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_174_0")
}
if (self.timer == 1086)
    self.lyric = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_180_0")
if (self.timer >= 1300)
{
    if ((self.timer <= 1560) && (self.creditalpha < 1))
        self.creditalpha += 0.01
    if ((self.timer >= 1560) && (self.creditalpha > 0))
        self.creditalpha -= 0.01
    self.line[0] = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_187_0")
    self.line[1] = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_188_0")
    self.linecolor[0] = 16777215
    self.linecolor[1] = 16777215
    self.line[2] = " "
    self.line[3] = " "
    self.line[4] = " "
    self.line[5] = " "
    self.textalpha -= 0.01
}
if (self.timer == 1660)
    snd_free(self.song0)
if (self.timer == 1680)
    game_end()
