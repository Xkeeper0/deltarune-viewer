if (self.songplay == 2)
{
    global.currentsong[0] = snd_init("THE_HOLY.ogg"@6902)
    global.currentsong[1] = mus_loop_ext(global.currentsong[0], 0.8, 0.9)
    self.songplay = 3
}
if (self.songplay == 1)
{
    snd_free_all()
    self.songplay = 2
}
if (self.songplay == 0)
{
    with(obj_mainchara)
    {
        self.visible = 0
    }
    self.songplay = 1
}
if (self.con == 0)
{
    self.JA_XOFF = 0
    self.con = 1
    self.alarm[4] = 220
}
if (self.con == 1)
{
    self.y = (self.y - 1)
    self.image_index = (self.image_index + 0.1)
    self.susindex = (self.susindex + 0.1)
    self.susy = (self.susy - 1)
    global.interact = 1
}
if (self.con == 2)
{
    self.image_index = 0
    self.susindex = 0
    self.con = 2.1
    self.alarm[4] = 60
}
if (self.con == 3.1)
{
    self.JA_XOFF = 0
    if (global.lang == "ja"@1566)
        self.JA_XOFF = 50
    global.typer = 37
    global.msg[0] = scr_84_get_lang_string("obj_fountainkris_slash_Step_0_gml_47_0"@6904)
    instance_create((100 + self.JA_XOFF), 80, obj_writer)
    self.con = 4
}
if (self.con == 4)
    _temp_local_var_1 = (~ instance_exists(obj_writer))
else
    _temp_local_var_1 = 0
if _temp_local_var_1
{
    self.sussprite = 793
    self.con = 3.2
    self.alarm[4] = 30
}
if (self.con == 4.2)
{
    global.msg[0] = scr_84_get_lang_string("obj_fountainkris_slash_Step_0_gml_64_0"@6905)
    global.msg[1] = scr_84_get_lang_string("obj_fountainkris_slash_Step_0_gml_65_0"@6906)
    global.msg[2] = scr_84_get_lang_string("obj_fountainkris_slash_Step_0_gml_66_0"@6907)
    global.msg[3] = scr_84_get_lang_string("obj_fountainkris_slash_Step_0_gml_67_0"@6908)
    instance_create((100 + self.JA_XOFF), 80, obj_writer)
    self.con = 6
}
if (self.con == 6)
    _temp_local_var_2 = (~ instance_exists(obj_writer))
else
    _temp_local_var_2 = 0
if _temp_local_var_2
{
    self.sussprite = 794
    self.con = 7
    self.alarm[4] = 40
}
if (self.con == 8)
{
    global.msg[0] = scr_84_get_lang_string("obj_fountainkris_slash_Step_0_gml_81_0"@6909)
    global.msg[1] = scr_84_get_lang_string("obj_fountainkris_slash_Step_0_gml_82_0"@6910)
    global.msg[2] = scr_84_get_lang_string("obj_fountainkris_slash_Step_0_gml_83_0"@6911)
    global.msg[3] = scr_84_get_lang_string("obj_fountainkris_slash_Step_0_gml_84_0"@6912)
    instance_create((100 + self.JA_XOFF), 80, obj_writer)
    self.con = 8.1
}
if (self.con == 8.1)
    _temp_local_var_3 = (~ instance_exists(obj_writer))
else
    _temp_local_var_3 = 0
if _temp_local_var_3
{
    self.con = 9
    self.alarm[4] = 40
}
if (self.con == 9)
    _temp_local_var_4 = (~ instance_exists(obj_writer))
else
    _temp_local_var_4 = 0
if _temp_local_var_4
{
    self.y = (self.y - 1)
    self.image_index = (self.image_index + 0.1)
}
if (self.con == 10)
{
    self.image_index = 0
    self.con = 9.1
    self.alarm[4] = 30
}
if (self.con == 10.1)
{
    global.typer = 42
    global.msg[0] = scr_84_get_lang_string("obj_fountainkris_slash_Step_0_gml_112_0"@6913)
    global.msg[1] = scr_84_get_lang_string("obj_fountainkris_slash_Step_0_gml_113_0"@6914)
    global.msg[2] = scr_84_get_lang_string("obj_fountainkris_slash_Step_0_gml_114_0"@6915)
    global.msg[3] = scr_84_get_lang_string("obj_fountainkris_slash_Step_0_gml_115_0"@6916)
    instance_create((80 + self.JA_XOFF), 80, obj_writer)
    self.con = 12
}
if (self.con == 12)
    _temp_local_var_5 = (~ instance_exists(obj_writer))
else
    _temp_local_var_5 = 0
if _temp_local_var_5
{
    snd_free_all()
    self.made = 1
    instance_create((self.x + (self.sprite_width / 2)), ((self.y + (self.sprite_width / 2)) + 20), obj_darkfountain_event)
    self.con = 13
}
