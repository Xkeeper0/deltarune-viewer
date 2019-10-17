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
    global.msg[0] = scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_17_0")
    global.msg[1] = scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_18_0")
}
if (self.room == room_dark_eyepuzzle)
{
    self.nodialogue = 0
    if (global.hp[1] < global.maxhp[1])
    {
        global.msg[0] = scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_26_0")
        global.msg[1] = scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_27_0")
        global.msg[2] = scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_28_0")
    }
    if (global.hp[1] < 30)
    {
        global.msg[0] = scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_33_0")
        global.msg[1] = scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_34_0")
    }
    if (global.hp[1] == global.maxhp[1])
    {
        global.msg[0] = scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_39_0")
        global.msg[1] = scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_40_0")
        global.msg[2] = scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_41_0")
    }
    if (self.talked >= 1)
        self.nodialogue = 1
}
if (self.room == room_castle_town)
{
    self.nodialogue = 0
    global.msg[0] = scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_51_0")
    global.msg[1] = scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_52_0")
    global.msg[2] = scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_53_0")
    if scr_havechar(3)
    {
        global.msg[0] = scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_57_0")
        global.msg[1] = scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_58_0")
    }
}
if (self.room == room_field_start)
{
    self.nodialogue = 0
    global.msg[0] = scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_66_0")
    global.msg[1] = scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_67_0")
    if (global.plot >= 37)
    {
        global.msg[0] = scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_71_0")
        global.msg[1] = scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_72_0")
    }
}
if (self.room == room_field_shop1)
{
    self.nodialogue = 0
    global.msg[0] = scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_80_0")
    global.msg[1] = scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_81_0")
    if (scr_havechar(2) == 0)
    {
        global.msg[0] = scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_84_0")
        global.msg[1] = scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_85_0")
    }
}
if (self.room == room_field_checkers3)
{
    self.nodialogue = 0
    self.tname = scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_92_0")
    if (global.flag[214] == 1)
        self.tname = scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_93_0")
    if (global.flag[214] == 2)
        self.tname = scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_94_0")
    if (global.flag[214] == 3)
        self.tname = scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_95_0")
    global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_96_0"), self.tname)
}
if (self.room == room_forest_savepoint1)
{
    self.nodialogue = 0
    global.msg[0] = scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_102_0")
    global.msg[1] = scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_103_0")
}
if (self.room == room_forest_savepoint2)
{
    self.nodialogue = 0
    global.msg[0] = scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_110_0")
    global.msg[1] = scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_111_0")
}
self.myinteract = 3
if (self.nodialogue == 0)
    self.mydialoguer = instance_create(0, 0, obj_dialoguer)
self.talked += 1
snd_play(snd_power)
for (self.i = 0; self.i < 4; self.i += 1)
{
    if (global.hp[self.i] < global.maxhp[self.i])
        global.hp[self.i] = global.maxhp[self.i]
}
