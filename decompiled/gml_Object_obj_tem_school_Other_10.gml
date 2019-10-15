global.msc = 0
global.typer = 5
global.fc = 0
global.fe = 0
global.interact = 1
self.image_speed = 0.2
global.msg[0] = scr_84_get_lang_string("obj_tem_school_slash_Other_10_gml_8_0"@3831)
if (self.egcon == 0)
    _temp_local_var_1 = (global.plot < 3)
else
    _temp_local_var_1 = 0
if _temp_local_var_1
    self.egcon = 1
if (self.talked >= 1)
{
    global.msg[0] = scr_84_get_lang_string("obj_tem_school_slash_Other_10_gml_13_0"@3832)
    if (global.facing == 3)
    {
        self.image_speed = 0
        self.facing = 0
        self.dfacing = 0
        global.msg[0] = scr_84_get_lang_string("obj_tem_school_slash_Other_10_gml_20_0"@3833)
        global.msg[1] = scr_84_get_lang_string("obj_tem_school_slash_Other_10_gml_21_0"@3834)
    }
}
if (global.plot == 3)
{
    if (self.egcon == 0)
    {
        global.msg[0] = scr_84_get_lang_string("obj_tem_school_slash_Other_10_gml_29_0"@3835)
        global.msg[1] = scr_84_get_lang_string("obj_tem_school_slash_Other_10_gml_30_0"@3836)
    }
    if (self.egcon == 3)
    {
        global.msg[0] = scr_84_get_lang_string("obj_tem_school_slash_Other_10_gml_34_0"@3837)
        if (global.facing == 3)
        {
            self.image_speed = 0
            self.facing = 0
            self.dfacing = 0
            global.msg[0] = scr_84_get_lang_string("obj_tem_school_slash_Other_10_gml_41_0"@3838)
        }
    }
}
self.myinteract = 3
self.mydialoguer = instance_create(0, 0, obj_dialoguer)
if (global.darkzone == 1)
    self.image_speed = 0.1
self.talked = (self.talked + 1)
