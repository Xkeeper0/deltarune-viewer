global.msc = 0
global.typer = 5
if (global.darkzone == 1)
    global.typer = 6
global.fc = 0
global.fe = 0
global.interact = 1
self.nodialogue = 1
global.currentroom = self.room
if (self.room == room_dark1a)
{
    self.nodialogue = 0
    global.msg[0] = scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_17_0"@5268)
    global.msg[1] = scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_18_0"@5269)
}
if (self.room == room_dark_eyepuzzle)
{
    self.nodialogue = 0
    if (global.hp[1] < global.maxhp[1])
    {
        global.msg[0] = scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_26_0"@5270)
        global.msg[1] = scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_27_0"@5271)
        global.msg[2] = scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_28_0"@5272)
    }
    if (global.hp[1] < 30)
    {
        global.msg[0] = scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_33_0"@5273)
        global.msg[1] = scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_34_0"@5274)
    }
    if (global.hp[1] == global.maxhp[1])
    {
        global.msg[0] = scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_39_0"@5275)
        global.msg[1] = scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_40_0"@5276)
        global.msg[2] = scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_41_0"@5277)
    }
    if (self.talked >= 1)
        self.nodialogue = 1
}
if (self.room == room_castle_town)
{
    self.nodialogue = 0
    global.msg[0] = scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_51_0"@5278)
    global.msg[1] = scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_52_0"@5279)
    global.msg[2] = scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_53_0"@5280)
    if scr_havechar(3)
    {
        global.msg[0] = scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_57_0"@5281)
        global.msg[1] = scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_58_0"@5282)
    }
}
if (self.room == room_field_start)
{
    self.nodialogue = 0
    global.msg[0] = scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_66_0"@5283)
    global.msg[1] = scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_67_0"@5284)
    if (global.plot >= 37)
    {
        global.msg[0] = scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_71_0"@5285)
        global.msg[1] = scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_72_0"@5286)
    }
}
if (self.room == room_field_shop1)
{
    self.nodialogue = 0
    global.msg[0] = scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_80_0"@5287)
    global.msg[1] = scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_81_0"@5288)
    if (scr_havechar(2) == 0)
    {
        global.msg[0] = scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_84_0"@5289)
        global.msg[1] = scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_85_0"@5290)
    }
}
if (self.room == room_field_checkers3)
{
    self.nodialogue = 0
    self.tname = scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_92_0"@5291)
    if (global.flag[214] == 1)
        self.tname = scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_93_0"@5293)
    if (global.flag[214] == 2)
        self.tname = scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_94_0"@5294)
    if (global.flag[214] == 3)
        self.tname = scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_95_0"@5295)
    global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_96_0"@5296), self.tname)
}
if (self.room == room_forest_savepoint1)
{
    self.nodialogue = 0
    global.msg[0] = scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_102_0"@5297)
    global.msg[1] = scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_103_0"@5298)
}
if (self.room == room_forest_savepoint2)
{
    self.nodialogue = 0
    global.msg[0] = scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_110_0"@5299)
    global.msg[1] = scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_111_0"@5300)
}
self.myinteract = 3
if (self.nodialogue == 0)
    self.mydialoguer = instance_create(0, 0, obj_dialoguer)
self.talked = (self.talked + 1)
snd_play(snd_power)
self.i = 0
while(true)
{
    if (self.i < 4)
    {
        if (global.hp[self.i] < global.maxhp[self.i])
            global.hp[self.i] = global.maxhp[self.i]
        self.i = (self.i + 1)
        continue
    }
    break
}
