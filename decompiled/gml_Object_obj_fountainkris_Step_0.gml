if (self.songplay == 2)
{
    global.currentsong[0] = snd_init("THE_HOLY.ogg")
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
    with (obj_mainchara)
        self.visible = 0
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
    self.y -= 1
    self.image_index += 0.1
    self.susindex += 0.1
    self.susy -= 1
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
    if (global.lang == "ja")
        self.JA_XOFF = 50
    global.typer = 37
    global.msg[0] = scr_84_get_lang_string("obj_fountainkris_slash_Step_0_gml_47_0")
    instance_create((100 + self.JA_XOFF), 80, obj_writer)
    self.con = 4
}
if ((self.con == 4) && (!instance_exists(obj_writer)))
{
    self.sussprite = 793
    self.con = 3.2
    self.alarm[4] = 30
}
if (self.con == 4.2)
{
    global.msg[0] = scr_84_get_lang_string("obj_fountainkris_slash_Step_0_gml_64_0")
    global.msg[1] = scr_84_get_lang_string("obj_fountainkris_slash_Step_0_gml_65_0")
    global.msg[2] = scr_84_get_lang_string("obj_fountainkris_slash_Step_0_gml_66_0")
    global.msg[3] = scr_84_get_lang_string("obj_fountainkris_slash_Step_0_gml_67_0")
    instance_create((100 + self.JA_XOFF), 80, obj_writer)
    self.con = 6
}
if ((self.con == 6) && (!instance_exists(obj_writer)))
{
    self.sussprite = 794
    self.con = 7
    self.alarm[4] = 40
}
if (self.con == 8)
{
    global.msg[0] = scr_84_get_lang_string("obj_fountainkris_slash_Step_0_gml_81_0")
    global.msg[1] = scr_84_get_lang_string("obj_fountainkris_slash_Step_0_gml_82_0")
    global.msg[2] = scr_84_get_lang_string("obj_fountainkris_slash_Step_0_gml_83_0")
    global.msg[3] = scr_84_get_lang_string("obj_fountainkris_slash_Step_0_gml_84_0")
    instance_create((100 + self.JA_XOFF), 80, obj_writer)
    self.con = 8.1
}
if ((self.con == 8.1) && (!instance_exists(obj_writer)))
{
    self.con = 9
    self.alarm[4] = 40
}
if ((self.con == 9) && (!instance_exists(obj_writer)))
{
    self.y -= 1
    self.image_index += 0.1
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
    global.msg[0] = scr_84_get_lang_string("obj_fountainkris_slash_Step_0_gml_112_0")
    global.msg[1] = scr_84_get_lang_string("obj_fountainkris_slash_Step_0_gml_113_0")
    global.msg[2] = scr_84_get_lang_string("obj_fountainkris_slash_Step_0_gml_114_0")
    global.msg[3] = scr_84_get_lang_string("obj_fountainkris_slash_Step_0_gml_115_0")
    instance_create((80 + self.JA_XOFF), 80, obj_writer)
    self.con = 12
}
if ((self.con == 12) && (!instance_exists(obj_writer)))
{
    snd_free_all()
    self.made = 1
    instance_create((self.x + (self.sprite_width / 2)), ((self.y + (self.sprite_width / 2)) + 20), obj_darkfountain_event)
    self.con = 13
}
