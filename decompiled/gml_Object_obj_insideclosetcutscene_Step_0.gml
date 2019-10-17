if (self.papeshake == 1)
{
    with (obj_fallpaper)
    {
        if (self.vspeed == 0)
        {
            self.x = (self.xstart + random(1))
            self.y = ((self.ystart + 10) + random(1))
        }
    }
}
if (self.papefall == 1)
{
    self.papetimer += 1
    if (self.papetimer >= 3)
    {
        if (self.papei < self.papeno)
        {
            snd_stop(snd_paper_rise)
            snd_play(snd_paper_rise)
            with (self.pape[self.papei])
            {
                self.sprite_index = spr_paperfly
                self.vspeed = 1
                self.image_speed = 0.5
                self.gravity = 0.5
            }
            self.papetimer = 0
            self.papei += 1
        }
    }
}
if ((global.interact == 0) && (obj_mainchara.x <= 70))
{
    obj_mainchara.x = 71
    global.fe = 7
    global.fc = 1
    global.typer = 10
    self.dex = 1
    global.interact = 1
    global.msg[0] = scr_84_get_lang_string("obj_insideclosetcutscene_slash_Step_0_gml_45_0")
    instance_create(0, 0, obj_dialoguer)
}
if ((self.dex == 1) && (instance_exists(obj_dialoguer) == 0))
{
    global.facing = 1
    global.interact = 0
    self.dex = 0
}
if (self.con == 1.5)
{
    global.interact = 1
    global.fe = 0
    global.fc = 1
    global.typer = 10
    global.msg[0] = scr_84_get_lang_string("obj_insideclosetcutscene_slash_Step_0_gml_62_0")
    global.msg[1] = scr_84_get_lang_string("obj_insideclosetcutscene_slash_Step_0_gml_63_0")
    global.msg[2] = scr_84_get_lang_string("obj_insideclosetcutscene_slash_Step_0_gml_64_0")
    self.con = 2
    instance_create(0, 0, obj_dialoguer)
}
if ((self.con == 2) && (instance_exists(obj_dialoguer) == 0))
{
    self.image_speed = 0.2
    global.interact = 0
    self.hspeed = 3
    self.con = 3
}
if (self.con == 3)
{
    if (obj_mainchara.px >= 3)
        self.hspeed = obj_mainchara.px
    else
        self.hspeed = 3
    if (self.x >= 310)
    {
        scr_halt()
        self.sprite_index = spr_susieu
        self.con = 4
    }
}
if ((self.con == 4) && ((obj_mainchara.x >= 270) && (global.interact == 0)))
{
    self.sprite_index = spr_susiel
    global.interact = 1
    global.fe = 0
    global.fc = 1
    global.typer = 10
    global.msg[0] = scr_84_get_lang_string("obj_insideclosetcutscene_slash_Step_0_gml_97_0")
    global.msg[1] = scr_84_get_lang_string("obj_insideclosetcutscene_slash_Step_0_gml_98_0")
    self.con = 5
    instance_create(0, 0, obj_dialoguer)
}
if ((self.con == 5) && (instance_exists(obj_dialoguer) == 0))
{
    self.sprite_index = spr_susier
    self.image_speed = 0.2
    global.interact = 0
    self.hspeed = 3
    self.con = 6
}
if (self.con == 6)
{
    if (obj_mainchara.px >= 3)
        self.hspeed = obj_mainchara.px
    else
        self.hspeed = 3
    if (self.x >= 490)
    {
        scr_halt()
        self.sprite_index = spr_susier
        self.con = 7
    }
}
if ((self.con == 7) && ((obj_mainchara.x >= 450) && (global.interact == 0)))
{
    self.sprite_index = spr_susiel
    global.interact = 1
    global.fe = 0
    global.fc = 1
    global.typer = 10
    global.msg[0] = scr_84_get_lang_string("obj_insideclosetcutscene_slash_Step_0_gml_134_0")
    global.msg[1] = scr_84_get_lang_string("obj_insideclosetcutscene_slash_Step_0_gml_135_0")
    global.msg[2] = scr_84_get_lang_string("obj_insideclosetcutscene_slash_Step_0_gml_136_0")
    self.con = 8
    instance_create(0, 0, obj_dialoguer)
}
if ((self.con == 8) && (instance_exists(obj_dialoguer) == 0))
{
    self.sprite_index = spr_susier
    self.image_speed = 0.2
    global.interact = 0
    self.hspeed = 3
    self.con = 9
}
if (self.con == 9)
{
    if (obj_mainchara.px >= 3)
        self.hspeed = obj_mainchara.px
    else
        self.hspeed = 3
    if (self.x >= 670)
    {
        scr_halt()
        self.sprite_index = spr_susier
        self.con = 10
    }
}
if ((self.con == 10) && ((obj_mainchara.x >= 630) && (global.interact == 0)))
{
    self.sprite_index = spr_susiel
    global.interact = 1
    global.fe = 0
    global.fc = 1
    global.typer = 10
    global.msg[0] = scr_84_get_lang_string("obj_insideclosetcutscene_slash_Step_0_gml_180_0")
    global.msg[1] = scr_84_get_lang_string("obj_insideclosetcutscene_slash_Step_0_gml_181_0")
    global.msg[2] = scr_84_get_lang_string("obj_insideclosetcutscene_slash_Step_0_gml_182_0")
    global.msg[3] = scr_84_get_lang_string("obj_insideclosetcutscene_slash_Step_0_gml_183_0")
    global.msg[4] = scr_84_get_lang_string("obj_insideclosetcutscene_slash_Step_0_gml_184_0")
    global.msg[5] = scr_84_get_lang_string("obj_insideclosetcutscene_slash_Step_0_gml_185_0")
    global.msg[6] = scr_84_get_lang_string("obj_insideclosetcutscene_slash_Step_0_gml_186_0")
    global.msg[7] = scr_84_get_lang_string("obj_insideclosetcutscene_slash_Step_0_gml_187_0")
    self.con = 15
    instance_create(0, 0, obj_dialoguer)
}
if ((self.con == 15) && (instance_exists(obj_dialoguer) == 0))
{
    with (obj_mainchara)
    {
        self.x -= 140
        self.fun = 1
        self.sprite_index = spr_krisl
        self.image_speed = 0.2
        self.hspeed = -3
    }
    self.x -= 140
    self.hspeed = -3
    self.sprite_index = spr_susiel
    self.image_speed = 0.2
    self.con = 16
    self.alarm[4] = 120
}
if (self.con == 17)
{
    scr_windowcaption(" ")
    self.sprite_index = spr_susiel_plain
    scr_halt()
    with (obj_mainchara)
        scr_halt()
    tile_layer_hide(1000000)
    snd_free_all()
    with (obj_fallpaper)
        self.image_blend = 0x00808080
    snd_play(snd_locker)
    self.con = 18
    self.alarm[4] = 60
}
if (self.con == 19)
{
    global.fe = 0
    global.msg[0] = scr_84_get_lang_string("obj_insideclosetcutscene_slash_Step_0_gml_237_0")
    instance_create(0, 0, obj_dialoguer)
    self.con = 51
}
if ((self.con == 51) && (d_ex() == 0))
{
    self.remxx = self.x
    self.hspeed = -5
    self.image_speed = 0.5
    self.con = 52
    self.alarm[4] = 20
}
if (self.con == 53)
{
    scr_halt()
    self.remsx = self.x
    self.remsy = self.y
    with (obj_mainchara)
    {
        self.remsx = self.x
        self.remsy = self.y
    }
    global.fe = 9
    global.msg[0] = scr_84_get_lang_string("obj_insideclosetcutscene_slash_Step_0_gml_266_0")
    global.msg[1] = scr_84_get_lang_string("obj_insideclosetcutscene_slash_Step_0_gml_267_0")
    instance_create(0, 0, obj_dialoguer)
    self.con = 54
}
if ((self.con == 54) && (d_ex() == 0))
{
    self.pape_sfx = snd_loop(snd_paper_rumble)
    self.papeshake = 1
    self.con = 55
    self.alarm[4] = 30
}
if (self.con == 56)
{
    global.fe = 0
    global.msg[0] = scr_84_get_lang_string("obj_insideclosetcutscene_slash_Step_0_gml_284_0")
    instance_create(0, 0, obj_dialoguer)
    self.con = 57
}
if ((self.con == 57) && (d_ex() == 0))
{
    self.image_speed = 0.2
    self.alarm[4] = 30
    self.con = 58
}
if (self.con == 58)
    self.x += 1
if (self.con == 59)
{
    scr_halt()
    self.con = 60
    self.alarm[4] = 30
}
if (self.con == 61)
{
    global.msg[0] = scr_84_get_lang_string("obj_insideclosetcutscene_slash_Step_0_gml_312_0")
    global.msg[0] = scr_84_get_lang_string("obj_insideclosetcutscene_slash_Step_0_gml_313_0")
    instance_create(0, 0, obj_dialoguer)
    self.con = 62
}
if ((self.con == 62) && (d_ex() == 0))
{
    snd_stop(self.pape_sfx)
    self.papefall = 1
    self.con = 69
    with (obj_mainchara)
    {
        self.hspeed = 0.8
        self.image_speed = 0.1
        self.cutscene = 1
    }
    self.hspeed = 0.8
    self.image_speed = 0.1
    self.alarm[4] = 80
}
if ((instance_exists(obj_dialoguer) == 0) && (self.con == 70))
{
    self.hspeed = 0
    __view_set(9, 0, -4)
    with (obj_mainchara)
        self.visible = 0
    self.k = scr_marker(obj_mainchara.x, obj_mainchara.y, spr_kris_fall)
    with (self.k)
    {
        self.vspeed = 1
        self.gravity = 0.5
    }
    self.image_speed = 0
    self.image_index = 0
    self.vspeed = 1
    self.gravity = 0.5
    self.sprite_index = spr_susie_fall
    snd_play(snd_sussurprise)
    self.con = 21
    self.alarm[4] = 50
}
if (self.con == 22)
{
    snd_play(snd_closet_fall)
    self.rate = 5
    self.rate_alpha = 1.8
    self.bgdraw = 1
    self.con = 23
    self.alarm[4] = 150
}
if (self.con == 24)
{
    snd_play(snd_closet_impact)
    self.con = 25
    self.alarm[4] = 80
}
if (self.con == 26)
{
    global.currentsong[0] = snd_init("ocean.ogg")
    global.currentsong[1] = mus_loop_ext(global.currentsong[0], 1, 0.9)
    snd_volume(global.currentsong[1], 0.2, 0)
    snd_volume(global.currentsong[1], 1, 200)
    self.con = 29
    self.alarm[4] = 260
}
if (self.con == 31)
{
    global.plot = 10
    scr_become_dark()
    room_goto(room_dark1)
}
if (self.con == 30)
{
    snd_free(global.currentsong[0])
    self.con = 31
}
