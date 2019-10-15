global.msc = 0
global.typer = 5
if (global.darkzone == 1)
    global.typer = 6
global.fc = 0
global.fe = 0
global.interact = 1
global.msg[0] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_8_0"@6318)
if (self.room == room_dark1)
{
    global.msg[0] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_12_0"@6319)
    global.msg[1] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_13_0"@6320)
    global.msg[2] = ((scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_14_0"@6321) + scr_get_input_name(6)) + scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_14_1"@6322))
    global.writersnd[0] = 97
    global.writersnd[8] = 134
    if (global.flag[10] == 1)
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_20_0"@6323)
    with(obj_npc_room_animated)
    {
        self.visible = 0
    }
    global.flag[10] = 1
}
if (self.room == room_town_mid)
{
    if (self.sprite_index == spr_npc_icemascot2)
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_31_0"@6324)
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_32_0"@6325)
        global.msg[2] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_33_0"@6326)
        global.msg[3] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_34_0"@6327)
        global.msg[4] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_35_0"@6328)
        global.msg[5] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_36_0"@6329)
        global.msg[6] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_37_0"@6330)
        global.msg[7] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_38_0"@6331)
        if (self.talked >= 1)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_42_0"@6332)
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_43_0"@6333)
            global.msg[2] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_44_0"@6334)
        }
    }
    if (self.sprite_index == spr_npc_icemascot_fake)
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_51_0"@6335)
    if (self.sprite_index == spr_npc_icemascot1)
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_56_0"@6336)
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_57_0"@6337)
        global.msg[2] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_58_0"@6338)
        global.msg[3] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_59_0"@6339)
        global.msg[4] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_60_0"@6340)
        with(obj_town_event)
        {
            self.con = 20
        }
    }
}
if (self.room == room_diner)
{
    global.msg[0] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_67_0"@6341)
    global.msg[1] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_68_0"@6342)
    global.msg[2] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_69_0"@6343)
    if (self.talked >= 1)
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_72_0"@6344)
}
if (self.room == room_cc_clover)
    global.msg[0] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_78_0"@6345)
if (self.room == room_cc_6f)
{
    global.msg[0] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_83_0"@6346)
    global.msg[1] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_84_0"@6347)
}
if (self.room == room_cc_throneroom)
{
    global.msg[0] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_89_0"@6348)
    global.msg[1] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_90_0"@6349)
}
if (self.room == room_field_maze)
{
    global.msg[0] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_95_0"@6350)
    if scr_havechar(2)
    {
        global.fc = 1
        global.typer = 30
        global.fe = 1
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_101_0"@6351)
    }
}
if (self.room == room_forest_savepoint_relax)
{
    if (self.y >= 200)
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_109_0"@6352)
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_110_0"@6353)
        global.msg[2] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_111_0"@6354)
        if (self.talked >= 1)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_114_0"@6355)
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_115_0"@6356)
            global.msg[2] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_116_0"@6357)
        }
        if (global.plot >= 90)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_121_0"@6358)
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_122_0"@6359)
        }
    }
    else
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_128_0"@6360)
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_129_0"@6361)
        scr_susface(2, 2)
        global.msg[3] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_131_0"@6362)
        global.msg[4] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_132_0"@6363)
        scr_noface(5)
        global.msg[6] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_134_0"@6364)
        if (self.talked >= 1)
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_137_0"@6365)
        if (global.plot >= 90)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_141_0"@6366)
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_142_0"@6367)
        }
    }
}
self.myinteract = 3
self.mydialoguer = instance_create(0, 0, obj_dialoguer)
self.talked = (self.talked + 1)
