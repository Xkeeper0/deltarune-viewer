if (self.mcon == 2)
    self.mcon = 3
if (self.mcon == 1)
{
    global.currentsong[0] = snd_init("lancer_susie.ogg"@4891)
    self.mcon = 2
}
if (self.con == 1)
{
    snd_free_all()
    self.mm = 0.5
    self.image_blend = merge_color(0xFFFFFF, 0x000000, self.mm)
    global.interact = 1
    self.sus = scr_dark_marker((obj_mainchara.x - 100), global.cinstance[1].y, spr_susier_dark)
    self.ral = scr_dark_marker((obj_mainchara.x - 50), global.cinstance[0].y, spr_ralseir)
    self.k = scr_dark_marker(obj_mainchara.x, obj_mainchara.y, spr_krisr_dark)
    self.r = self.ral
    self.s = self.sus
    with(obj_caterpillarchara)
    {
        self.visible = 0
    }
    with(obj_mainchara)
    {
        self.visible = 0
    }
    with(obj_marker)
    {
        self.hspeed = 6
        self.image_speed = 0.2
    }
    self.con = 2
    self.alarm[4] = 30
    self.mcon = 1
}
if (self.con == 2)
    global.interact = 1
if (self.con == 3)
{
    global.facing = 1
    self.con = 4
    with(obj_marker)
    {
        scr_halt()
    }
    obj_mainchara.x = self.k.x
    obj_mainchara.visible = 1
    with(self.k)
    {
        instance_destroy()
    }
    self.alarm[4] = 30
}
if (self.con == 5)
{
    global.currentsong[1] = mus_loop(global.currentsong[0])
    global.fc = 5
    global.fe = 1
    global.typer = 32
    global.msg[0] = scr_84_get_lang_string("obj_lancerscare2_slash_Step_0_gml_60_0"@4893)
    global.msg[1] = scr_84_get_lang_string("obj_lancerscare2_slash_Step_0_gml_61_0"@4894)
    global.msg[2] = scr_84_get_lang_string("obj_lancerscare2_slash_Step_0_gml_62_0"@4895)
    self.con = 6
    instance_create(0, 0, obj_dialoguer)
}
if (self.con == 6)
    _temp_local_var_1 = (d_ex() == 0)
else
    _temp_local_var_1 = 0
if _temp_local_var_1
{
    self.sprite_index = spr_lancer_dt
    self.con = 7
    self.alarm[4] = 25
}
if (self.con == 8)
{
    self.sprite_index = spr_lancer_lt
    self.con = 9
    self.alarm[4] = 25
}
if (self.con == 10)
{
    global.fe = 1
    global.msg[0] = scr_84_get_lang_string("obj_lancerscare2_slash_Step_0_gml_84_0"@4896)
    global.msg[1] = scr_84_get_lang_string("obj_lancerscare2_slash_Step_0_gml_85_0"@4897)
    global.msg[2] = scr_84_get_lang_string("obj_lancerscare2_slash_Step_0_gml_86_0"@4898)
    instance_create(0, 0, obj_dialoguer)
    self.con = 11
}
if (self.con == 11)
    _temp_local_var_2 = (d_ex() == 0)
else
    _temp_local_var_2 = 0
if _temp_local_var_2
{
    self.sprite_index = spr_lancer_lt_laugh
    self.image_speed = 0.5
    self.bucket = scr_dark_marker((self.x + 20), self.y, spr_lancer_bucket)
    self.bucket.hspeed = -4
    self.bucket.depth = (self.depth + 10)
    snd_free_all()
    snd_play(snd_lancerlaugh)
    snd_play(snd_locker)
    self.lightning = scr_dark_marker(200, 0, spr_crappylightning)
    self.lightning.image_alpha = 3
    self.con = 12
    self.ctimer = 0
}
if (self.con == 12)
{
    if (self.mm > 0)
        self.mm = (self.mm - 0.05)
    else
        self.mm = 0
    self.image_blend = merge_color(0xFFFFFF, 0x000000, self.mm)
    with(self.lightning)
    {
        self.image_alpha = (self.image_alpha - 0.1)
    }
    self.ctimer = (self.ctimer + 1)
    if (self.ctimer >= 20)
        self.bucket.hspeed = 0
    if (self.ctimer >= 60)
        _temp_local_var_3 = (d_ex() == 0)
    else
        _temp_local_var_3 = 0
    if _temp_local_var_3
    {
        self.sprite_index = spr_lancer_lt
        self.image_speed = 0
        self.image_index = 0
        self.con = 13
        self.alarm[4] = 60
    }
}
if (self.con == 15)
{
    global.currentsong[1] = mus_loop(global.currentsong[0])
    global.fe = 3
    global.msg[0] = scr_84_get_lang_string("obj_lancerscare2_slash_Step_0_gml_137_0"@4901)
    scr_susface(1, 7)
    global.msg[2] = scr_84_get_lang_string("obj_lancerscare2_slash_Step_0_gml_139_0"@4902)
    scr_lanface(3, 2)
    global.msg[4] = scr_84_get_lang_string("obj_lancerscare2_slash_Step_0_gml_141_0"@4903)
    global.msg[5] = scr_84_get_lang_string("obj_lancerscare2_slash_Step_0_gml_142_0"@4904)
    instance_create(0, 0, obj_dialoguer)
    self.con = 16
}
if (self.con == 14)
{
    self.con = 15
    global.currentsong[0] = snd_init("lancer.ogg"@4596)
}
if (self.con == 16)
    _temp_local_var_4 = (d_ex() == 0)
else
    _temp_local_var_4 = 0
if _temp_local_var_4
{
    with(self.sus)
    {
        self.sprite_index = spr_susiel_dark
    }
    self.con = 17
    self.alarm[4] = 40
}
if (self.con == 18)
{
    with(self.sus)
    {
        self.sprite_index = spr_susier_dark
        self.hspeed = 6
        self.image_speed = 0.25
    }
    self.con = 19
    self.alarm[4] = 30
}
if (self.con == 20)
{
    with(self.sus)
    {
        scr_halt()
    }
    global.fc = 1
    global.typer = 30
    global.fe = 6
    global.msg[0] = scr_84_get_lang_string("obj_lancerscare2_slash_Step_0_gml_181_0"@4905)
    scr_lanface(1, 2)
    global.msg[2] = scr_84_get_lang_string("obj_lancerscare2_slash_Step_0_gml_183_0"@4906)
    scr_susface(3, 2)
    global.msg[4] = scr_84_get_lang_string("obj_lancerscare2_slash_Step_0_gml_185_0"@4907)
    global.msg[5] = scr_84_get_lang_string("obj_lancerscare2_slash_Step_0_gml_186_0"@4908)
    global.msg[6] = scr_84_get_lang_string("obj_lancerscare2_slash_Step_0_gml_187_0"@4909)
    global.msg[7] = scr_84_get_lang_string("obj_lancerscare2_slash_Step_0_gml_188_0"@4910)
    global.msg[8] = scr_84_get_lang_string("obj_lancerscare2_slash_Step_0_gml_189_0"@4911)
    scr_lanface(9, 2)
    global.msg[10] = scr_84_get_lang_string("obj_lancerscare2_slash_Step_0_gml_191_0"@4912)
    scr_susface(11, 0)
    global.msg[12] = scr_84_get_lang_string("obj_lancerscare2_slash_Step_0_gml_193_0"@4913)
    scr_lanface(13, 6)
    global.msg[14] = scr_84_get_lang_string("obj_lancerscare2_slash_Step_0_gml_195_0"@4914)
    global.msg[15] = scr_84_get_lang_string("obj_lancerscare2_slash_Step_0_gml_196_0"@4915)
    scr_susface(16, 2)
    global.msg[17] = scr_84_get_lang_string("obj_lancerscare2_slash_Step_0_gml_198_0"@4916)
    self.con = 25
    instance_create(0, 0, obj_dialoguer)
}
if (self.con == 25)
{
    if instance_exists(obj_writer)
    {
        if (obj_writer.msgno == 4)
        {
            with(self.sus)
            {
                self.sprite_index = spr_susied_dark
            }
        }
        if (obj_writer.msgno == 5)
        {
            with(self.sus)
            {
                self.sprite_index = spr_susier_dark
            }
        }
        if (obj_writer.msgno == 6)
        {
            with(self.sus)
            {
                self.sprite_index = spr_susied_dark
            }
        }
        if (obj_writer.msgno == 8)
        {
            with(self.sus)
            {
                self.sprite_index = spr_susier_dark
            }
        }
    }
}
if (self.con == 25)
    _temp_local_var_5 = (d_ex() == 0)
else
    _temp_local_var_5 = 0
if _temp_local_var_5
{
    with(self.sus)
    {
        self.sprite_index = spr_susied_dark
    }
    self.con = 26
    self.alarm[4] = 30
}
if (self.con == 27)
{
    with(self.sus)
    {
        self.sprite_index = spr_susier_dark
    }
    global.fe = 0
    global.msg[0] = scr_84_get_lang_string("obj_lancerscare2_slash_Step_0_gml_226_0"@4917)
    scr_lanface(1, 2)
    global.msg[2] = scr_84_get_lang_string("obj_lancerscare2_slash_Step_0_gml_228_0"@4918)
    global.msg[3] = scr_84_get_lang_string("obj_lancerscare2_slash_Step_0_gml_229_0"@4919)
    global.msg[4] = scr_84_get_lang_string("obj_lancerscare2_slash_Step_0_gml_231_0"@4920)
    self.con = 60
    instance_create(0, 0, obj_dialoguer)
}
if (self.con == 60)
    _temp_local_var_6 = (d_ex() == 0)
else
    _temp_local_var_6 = 0
if _temp_local_var_6
{
    self.con = 61
    self.alarm[4] = 30
}
if (self.con == 62)
{
    global.fe = 6
    global.msg[0] = scr_84_get_lang_string("obj_lancerscare2_slash_Step_0_gml_245_0"@4921)
    global.msg[1] = scr_84_get_lang_string("obj_lancerscare2_slash_Step_0_gml_246_0"@4922)
    scr_ralface(2, 8)
    global.msg[3] = scr_84_get_lang_string("obj_lancerscare2_slash_Step_0_gml_248_0"@4923)
    scr_susface(4, 0)
    global.msg[5] = scr_84_get_lang_string("obj_lancerscare2_slash_Step_0_gml_250_0"@4924)
    scr_lanface(6, 1)
    global.msg[7] = scr_84_get_lang_string("obj_lancerscare2_slash_Step_0_gml_252_0"@4925)
    self.con = 63
    instance_create(0, 0, obj_dialoguer)
}
if (self.con == 63)
    _temp_local_var_7 = (d_ex() == 0)
else
    _temp_local_var_7 = 0
if _temp_local_var_7
{
    self.fd = instance_create(0, 0, obj_fadeout)
    self.con = 64
    self.alarm[4] = 40
}
if (self.con == 65)
{
    snd_play(snd_noise)
    obj_mainchara.x = (self.bucket.x - 50)
    self.r.x = (self.bucket.x - 100)
    self.s.x = (self.bucket.x - 150)
    self.con = 66
    self.alarm[4] = 20
}
if (self.con == 66)
{
    with(self.fd)
    {
        instance_destroy()
    }
    self.fi = instance_create(0, 0, obj_fadein)
    self.con = 67
    self.alarm[4] = 30
}
if (self.con == 68)
{
    global.fe = 0
    global.msc = 175
    scr_text(global.msc)
    instance_create(0, 0, obj_dialoguer)
    self.con = 28
}
if (self.con == 28)
    _temp_local_var_8 = (d_ex() == 0)
else
    _temp_local_var_8 = 0
if _temp_local_var_8
{
    mus_volume(global.currentsong[1], 0, 30)
    self.hspeed = 16
    self.image_speed = 0.5
    with(self.bucket)
    {
        self.hspeed = 16
    }
    snd_play(snd_lancerlaugh)
    self.sprite_index = spr_lancer_lt_laugh
    self.con = 36
    self.alarm[4] = 60
}
if (self.con == 30)
{
    snd_free(global.currentsong[1])
    global.fe = 0
    global.fc = 1
    global.typer = 30
    global.msg[0] = scr_84_get_lang_string("obj_lancerscare2_slash_Step_0_gml_311_0"@4928)
    self.con = 31
    instance_create(0, 0, obj_dialoguer)
}
if (self.con == 31)
    _temp_local_var_9 = (~ d_ex())
else
    _temp_local_var_9 = 0
if _temp_local_var_9
{
    with(self.sus)
    {
        self.sprite_index = spr_susiel_dark
        self.hspeed = -6
        self.image_speed = 0.25
    }
    self.con = 32
    self.alarm[4] = 30
}
if (self.con == 33)
{
    with(self.sus)
    {
        self.sprite_index = spr_susier_dark
        scr_halt()
    }
    self.con = 34
    self.alarm[4] = 30
}
if (self.con == 35)
{
    global.fe = 1
    global.msg[0] = scr_84_get_lang_string("obj_lancerscare2_slash_Step_0_gml_343_0"@4929)
    instance_create(0, 0, obj_dialoguer)
    self.con = 37
}
if (self.con == 37)
    _temp_local_var_10 = (~ d_ex())
else
    _temp_local_var_10 = 0
if _temp_local_var_10
{
    with(obj_savepoint)
    {
        self.visible = 1
    }
    self.s = self.sus
    self.r = self.ral
    snd_free_all()
    scr_unmarkify_caterpillar()
    scr_caterpillar_facing(1)
    global.facing = 1
    self.con = 38
    scr_tempsave()
    global.interact = 0
    instance_destroy()
    if (global.plot <= 55)
        global.plot = 55
}
