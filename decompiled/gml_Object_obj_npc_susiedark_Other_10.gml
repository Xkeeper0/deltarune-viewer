self.myinteract = 3
global.msc = 0
global.typer = 30
global.fc = 1
global.fe = 0
global.interact = 1
if (self.room == room_castle_town)
{
    global.fe = 1
    global.msg[0] = scr_84_get_lang_string("obj_npc_susiedark_slash_Other_10_gml_13_0"@5123)
    global.msg[1] = scr_84_get_lang_string("obj_npc_susiedark_slash_Other_10_gml_14_0"@5124)
    global.msg[2] = scr_84_get_lang_string("obj_npc_susiedark_slash_Other_10_gml_15_0"@5125)
    global.msg[3] = scr_84_get_lang_string("obj_npc_susiedark_slash_Other_10_gml_16_0"@5126)
    if (self.talked >= 1)
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_susiedark_slash_Other_10_gml_20_0"@5127)
        global.msg[1] = scr_84_get_lang_string("obj_npc_susiedark_slash_Other_10_gml_21_0"@5128)
        global.msg[2] = scr_84_get_lang_string("obj_npc_susiedark_slash_Other_10_gml_22_0"@5129)
    }
}
self.talked = (self.talked + 1)
self.mydialoguer = instance_create(0, 0, obj_dialoguer)
