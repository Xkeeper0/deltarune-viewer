if ((self.con == 0) && (global.interact == 0))
{
    self.xx = __view_get(0, 0)
    self.yy = __view_get(1, 0)
    if (obj_mainchara.x >= self.x)
    {
        global.interact = 1
        global.facing = 1
        with (obj_caterpillarchara)
            self.visible = 0
        with (obj_mainchara)
            self.visible = 0
        self.r = scr_dark_marker(obj_caterpillarchara.x, obj_caterpillarchara.y, spr_ralseir)
        self.k = scr_dark_marker(obj_mainchara.x, obj_mainchara.y, spr_krisr_dark)
        if (global.flag[250] == 0)
        {
            with (obj_marker)
            {
                self.hspeed = 2
                self.image_speed = 0.2
            }
            scr_pan(4, 0, 70)
            mus_volume(global.currentsong[1], 0, 90)
            with (obj_mainchara)
                self.cutscene = 1
            self.con = 1
            self.alarm[4] = 90
        }
        else
        {
            with (obj_marker)
            {
                self.hspeed = 4
                self.image_speed = 0.2
            }
            scr_pan(8, 0, 35)
            mus_volume(global.currentsong[1], 0, 45)
            with (obj_mainchara)
                self.cutscene = 1
            self.con = 1
            self.alarm[4] = 45
        }
        self.thrashmachine = instance_create((self.xx + 740), (self.yy + 160), obj_thrashmachine)
        with (self.thrashmachine)
        {
            self.value = 0
            self.animate = 0
            self.bad = 1
        }
    }
}
if (self.con == 2)
{
    with (self.k)
        scr_halt()
    with (self.r)
        scr_halt()
    global.typer = 31
    global.fc = 2
    global.fe = 3
    global.msg[0] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_56_0")
    global.msg[1] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_57_0")
    if (global.flag[250] == 1)
    {
        global.fc = 2
        global.fe = 9
        global.msg[0] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_62_0")
    }
    if (global.flag[250] >= 2)
    {
        global.fc = 2
        global.fe = 12
        global.msg[0] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_68_0")
    }
    instance_create(0, 0, obj_dialoguer)
    self.con = 3
    self.valuetimer = 0
}
if ((self.con == 3) && (!d_ex()))
{
    self.valuetimer += 1
    if (global.flag[250] >= 1)
        self.valuetimer += 1
    with (self.thrashmachine)
    {
        if (self.value < 1)
            self.value += 0.04
        else
            self.value = 1
    }
    if (self.valuetimer >= 60)
        self.con = 4
}
if ((self.con == 4) && (!d_ex()))
{
    global.typer = 31
    global.fc = 2
    global.fe = 9
    global.msg[0] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_93_0")
    if (global.flag[250] == 1)
    {
        global.fe = 12
        global.msg[0] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_97_0")
    }
    if (global.flag[250] >= 2)
    {
        global.fe = 6
        global.msg[0] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_102_0")
    }
    instance_create(0, 0, obj_dialoguer)
    self.con = 17
}
if ((self.con == 17) && (!d_ex()))
{
    global.encounterno = 31
    scr_encountersetup(global.encounterno)
    self.l = scr_dark_marker((global.monstermakex[1] + 200), (global.monstermakey[1] - 50), spr_lancer_lt)
    self.s = scr_dark_marker((global.monstermakex[0] + 200), global.monstermakey[0], spr_susiel_dark)
    with (self.l)
    {
        scr_depth()
        self.hspeed = -5
        self.image_speed = 0.1
    }
    with (self.s)
    {
        scr_depth()
        self.hspeed = -5
        self.image_speed = 0.1
    }
    self.con = 18
    self.alarm[4] = 40
}
if (self.con == 19)
{
    with (self.l)
        scr_halt()
    with (self.s)
        scr_halt()
    self.con = 20
    self.alarm[4] = 20
}
if ((self.con == 21) && (!d_ex()))
{
    global.typer = 32
    global.fc = 5
    global.fe = 2
    global.msg[0] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_148_0")
    global.msg[1] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_149_0")
    self.con = 21.1
    if (global.flag[250] < 1)
        instance_create(0, 0, obj_dialoguer)
}
if ((self.con == 21.1) && (!d_ex()))
{
    with (self.r)
        self.sprite_index = spr_ralsei_shock_overworld
    snd_play(snd_badexplosion)
    snd_play(snd_lancerlaugh)
    self.boom = scr_dark_marker(self.thrashmachine.x, (self.thrashmachine.y + 40), spr_realisticexplosion)
    with (self.boom)
    {
        self.depth = -400
        self.image_speed = 0.5
        self.image_xscale = 3
        self.image_yscale = 3
    }
    with (self.s)
    {
        self.sprite_index = spr_susiel_dark_laugh
        self.image_speed = 0.25
    }
    with (self.l)
    {
        self.sprite_index = spr_lancer_lt_laugh
        self.image_speed = 0.25
    }
    self.con = 21.2
    self.boomtimer = 0
}
if (self.con == 21.2)
{
    self.boomtimer += 1
    if instance_exists(self.boom)
    {
        if (self.boom.image_index >= 5)
        {
            with (self.thrashmachine)
                instance_destroy()
        }
    }
    with (self.boom)
    {
        if (self.image_index >= 16)
            instance_destroy()
    }
    if (self.boomtimer >= 70)
        self.con = 21.3
}
if (self.con == 21.3)
{
    with (self.s)
    {
        scr_halt()
        self.sprite_index = spr_susiel_dark
    }
    with (self.l)
    {
        scr_halt()
        self.sprite_index = spr_lancer_lt
    }
    with (self.r)
        self.sprite_index = spr_ralseir
    global.fc = 1
    global.typer = 30
    global.fe = 2
    global.msg[0] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_210_0")
    scr_ralface(1, 1)
    global.msg[2] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_212_0")
    global.msg[3] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_213_0")
    scr_susface(4, 2)
    global.msg[5] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_215_0")
    scr_lanface(6, 1)
    global.msg[7] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_217_0")
    scr_susface(8, 2)
    global.msg[9] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_219_0")
    scr_ralface(10, 1)
    global.msg[11] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_221_0")
    global.msg[12] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_222_0")
    scr_susface(13, 2)
    global.msg[14] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_224_0")
    global.msg[15] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_225_0")
    global.msg[16] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_226_0")
    global.msg[17] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_227_0")
    if (global.flag[250] == 1)
    {
        global.fc = 2
        global.fe = 3
        global.typer = 31
        global.msg[0] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_233_0")
        scr_lanface(1, 3)
        global.msg[2] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_235_0")
        scr_ralface(3, 1)
        global.msg[4] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_237_0")
        global.msg[5] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_238_0")
        scr_susface(6, 0)
        global.msg[7] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_240_0")
        scr_lanface(8, 6)
        global.msg[9] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_242_0")
        global.msg[10] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_243_0")
        scr_susface(11, 2)
        global.msg[12] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_245_0")
    }
    if (global.flag[250] >= 2)
    {
        global.fc = 2
        global.fe = 6
        global.typer = 31
        global.msg[0] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_252_0")
        scr_susface(1, 7)
        global.msg[2] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_254_0")
        scr_ralface(3, "A")
        global.msg[4] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_256_0")
        scr_lanface(5, 3)
        global.msg[6] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_258_0")
    }
    instance_create(0, 0, obj_dialoguer)
    self.con = 26
}
if ((self.con == 26) && (!d_ex()))
{
    with (self.s)
    {
        self.sprite_index = spr_susieb_attack
        self.image_xscale = -2
        self.x += 80
    }
    snd_play(snd_laz_c)
    self.con = 27
}
if (self.con == 27)
{
    with (self.s)
        self.image_index += 0.2
    if (self.s.image_index >= 4)
    {
        self.con = 28
        self.alarm[4] = 20
    }
}
if (self.con == 29)
{
    self.lcon = 1
    self.ltimer = 0
    self.remlx = self.l.x
    with (self.s)
    {
        self.sprite_index = spr_susie_enemy
        self.image_xscale = 2
        self.x -= 80
    }
    global.fe = 2
    global.fc = 1
    global.typer = 30
    global.msc = 450
    scr_text(global.msc)
    if (global.flag[250] == 1)
    {
        global.fc = 2
        global.fe = 9
        global.typer = 31
        global.msg[0] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_302_0")
        scr_susface(1, 2)
        global.msg[2] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_304_0")
    }
    if (global.flag[250] >= 2)
    {
        global.fc = 1
        global.fe = 2
        global.typer = 30
        global.msg[0] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_312_0")
        scr_ralface(1, 6)
        global.msg[2] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_314_0")
        scr_lanface(3, 2)
        global.msg[4] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_316_0")
    }
    d_make()
    self.con = 30
    self.choosetimer = 0
}
if (self.lcon == 1)
{
    with (self.l)
        self.x += 15
    if (self.l.x >= (__view_get(0, 0) + 700))
    {
        with (self.l)
        {
            self.sprite_index = spr_lancerbike
            self.image_speed = 0.1
            self.y += 50
        }
        self.lcon = 2
    }
}
if (self.lcon == 2)
{
    with (self.l)
        self.x -= 15
    if (self.l.x <= self.remlx)
    {
        self.l.x = self.remlx
        self.lcon = 3
    }
}
if (self.con == 30)
{
    if instance_exists(obj_choicer_neo)
    {
        self.choosetimer += 1
        if (self.choosetimer >= 30)
        {
            if (obj_choicer_neo.choiced == 0)
            {
                with (obj_choicer_neo)
                {
                    self.canchoose = 1
                    self.mychoice = 1
                    event_user(0)
                }
            }
            self.con = 31
        }
    }
    if (!d_ex())
        self.con = 31
}
if ((self.con == 31) && ((!d_ex()) && (self.lcon == 3)))
{
    global.flag[250] += 1
    obj_mainchara.x = self.k.x
    obj_mainchara.y = self.k.y
    global.cinstance[0].x = self.r.x
    global.cinstance[0].y = self.r.y
    global.facing = 1
    with (global.cinstance[0])
        scr_caterpillar_interpolate()
    scr_caterpillar_facing(global.facing)
    with (self.s)
        self.visible = 0
    self.s.depth = 100
    with (self.l)
        self.visible = 0
    with (self.k)
        self.visible = 0
    with (self.r)
        self.visible = 0
    global.specialbattle = 0
    global.flag[9] = 1
    snd_play(snd_weaponpull)
    self.beaten = 1
    global.specialbattle = 3
    global.batmusic[0] = snd_init("lancerfight.ogg")
    self.bc = instance_create(0, 0, obj_battlecontroller)
    with (self.bc)
        self.skipvictory = 1
    self.con = 35
}
if (self.con == 35)
{
    if (!instance_exists(obj_battlecontroller))
    {
        snd_free_all()
        with (self.s)
            self.visible = 1
        with (self.l)
            self.visible = 1
        self.con = 45
        global.interact = 1
    }
}
if ((self.con == 45) && (!d_ex()))
{
    global.interact = 1
    if (global.flag[249] == 0)
    {
        with (self.s)
            self.sprite_index = spr_susie_enemy_defeat
    }
    self.lcon = 4
    self.con = 46
    self.alarm[4] = 30
}
if (self.con == 46)
    global.interact = 1
if (self.lcon == 4)
{
    with (self.l)
        self.x += 15
    if (self.l.x >= (__view_get(0, 0) + 700))
    {
        with (self.l)
        {
            self.sprite_index = spr_lancer_lt
            self.image_speed = 0
            self.y -= 50
        }
        self.lcon = 5
    }
}
if (self.lcon == 5)
{
    with (self.l)
        self.x -= 15
    if (self.l.x <= self.remlx)
    {
        self.l.x = self.remlx
        self.lcon = 6
    }
}
if ((self.con == 47) && (self.lcon == 6))
{
    global.typer = 30
    global.fe = 9
    global.fc = 1
    global.msg[0] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_454_0")
    global.msg[1] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_455_0")
    global.msg[2] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_456_0")
    if (global.flag[249] == 1)
    {
        global.fe = 0
        global.msg[0] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_461_0")
        global.msg[1] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_462_0")
        scr_lanface(2, 3)
        global.msg[3] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_464_0")
        scr_susface(4, 0)
        global.msg[5] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_466_0")
        global.msg[6] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_467_0")
    }
    self.con = 48
    instance_create(0, 0, obj_dialoguer)
}
if ((self.con == 48) && (!d_ex()))
{
    with (self.s)
        self.sprite_index = spr_susiel_dark_unhappy
    self.s.kx = self.k.x
    self.s.ky = self.k.y
    with (self.s)
    {
        scr_move_to_point_over_time((self.kx + 120), (self.ky - 15), 60)
        self.image_speed = 0.2
    }
    self.con = 49
    self.alarm[4] = 60
}
if (self.con == 50)
{
    with (self.s)
        scr_halt()
    global.typer = 31
    global.fc = 2
    global.fe = 6
    global.msg[0] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_489_0")
    scr_susface(1, 4)
    global.msg[2] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_491_0")
    instance_create(0, 0, obj_dialoguer)
    self.con = 51
}
if ((self.con == 51) && (!d_ex()))
{
    with (self.s)
        self.sprite_index = spr_susier_dark_unhappy
    with (self.l)
        self.sprite_index = spr_lancer_lt_unhappy
    self.con = 52
    self.alarm[4] = 20
}
if (self.con == 53)
{
    global.typer = 32
    global.fc = 5
    global.fe = 6
    global.msg[0] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_509_0")
    global.msg[1] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_510_0")
    global.msg[2] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_511_0")
    self.con = 54
    instance_create(0, 0, obj_dialoguer)
}
if ((self.con == 54) && (!d_ex()))
{
    with (self.s)
    {
        self.hspeed = -6
        self.image_index = 1
    }
    self.con = 55
    self.alarm[4] = 4
}
if (self.con == 56)
{
    with (self.s)
        scr_halt()
    self.con = 57
    self.alarm[4] = 15
}
if (self.con == 58)
{
    global.typer = 30
    global.fc = 1
    global.fe = 6
    global.msg[0] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_535_0")
    d_make()
    self.con = 59
}
if ((self.con == 59) && (!d_ex()))
{
    with (self.s)
    {
        self.sprite_index = spr_susier_dark
        self.image_speed = 0.2
        self.hspeed = 6
    }
    self.con = 60
    self.alarm[4] = 8
}
if (self.con == 61)
{
    with (self.s)
        scr_halt()
    global.fe = 2
    global.msg[0] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_551_0")
    global.msg[1] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_552_0")
    d_make()
    self.con = 62
}
if ((self.con == 62) && (!d_ex()))
{
    with (self.s)
        self.sprite_index = spr_susiel_dark_unhappy
    self.con = 63
    self.alarm[4] = 30
}
if (self.con == 64)
{
    with (self.s)
        self.sprite_index = spr_susier_dark
    global.fe = 2
    self.name = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_568_0")
    if (global.flag[214] == 1)
        self.name = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_569_0")
    if (global.flag[214] == 2)
        self.name = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_570_0")
    if (global.flag[214] == 3)
        self.name = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_571_0")
    global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_573_0"), self.name)
    scr_lanface(1, 3)
    global.msg[2] = scr_84_get_subst_string(scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_575_0"), self.name)
    global.msg[3] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_576_0")
    d_make()
    with (self.l)
        self.sprite_index = spr_lancer_lt
    self.con = 65
}
if ((self.con == 65) && (!d_ex()))
{
    with (self.l)
        self.sprite_index = spr_lancer_rt_unhappy
    global.fe = 4
    global.msg[0] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_586_0")
    d_make()
    self.con = 66
}
if ((self.con == 66) && (!d_ex()))
{
    with (self.l)
        self.sprite_index = spr_lancer_lt
    global.fe = 3
    global.msg[0] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_595_0")
    scr_susface(1, 2)
    global.msg[2] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_597_0")
    scr_ralface(3, 3)
    global.msg[4] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_599_0")
    global.msg[5] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_600_0")
    scr_lanface(6, 8)
    global.msg[7] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_602_0")
    self.con = 67
    d_make()
}
if ((self.con == 67) && (!d_ex()))
{
    global.currentsong[0] = snd_init("fanfare.ogg")
    global.currentsong[1] = mus_play(global.currentsong[0])
    global.fc = 0
    global.typer = 52
    global.msg[0] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_615_0")
    self.d = instance_create(0, 0, obj_dialoguer)
    self.d.skippable = 0
    self.con = 70
}
if (self.con == 9999)
{
    snd_free_all()
    with (obj_dialoguer)
        instance_destroy()
    with (obj_writer)
        instance_destroy()
    global.typer = 30
    global.fe = 8
    global.fc = 1
    global.msg[0] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_629_0")
    instance_create(0, 0, obj_dialoguer)
    self.con = 70
}
if ((self.con == 70) && (!d_ex()))
{
    snd_free_all()
    obj_mainchara.x = self.k.x
    obj_mainchara.y = self.k.y
    self.scon = 1
    self.lcon = 20
    with (obj_mainchara)
        self.visible = 1
    with (self.k)
        self.visible = 0
    if (global.plot < 130)
        global.plot = 130
    self.con = 71
    scr_pan_to_obj(obj_mainchara, 50)
    self.alarm[4] = 52
}
if (self.scon == 1)
{
    with (self.s)
    {
        self.sprite_index = spr_susiel_dark
        self.image_index += 0.2
        self.x -= 10
    }
    if (self.s.x <= (self.r.x - 50))
    {
        scr_losechar()
        scr_getchar(3)
        scr_getchar(2)
        self.s.visible = 0
        global.cinstance[1] = instance_create(self.s.x, self.s.y, obj_caterpillarchara)
        global.cinstance[1].target = 24
        self.scon = 2
    }
}
if (self.lcon == 20)
{
    self.l.sprite_index = spr_lancer_lt
    self.l.x -= 15
    self.l.y += 0.5
    if (self.l.x <= (self.r.x - 120))
        self.lcon = 21
}
if (self.lcon == 21)
{
    self.npc = instance_create(self.l.x, self.l.y, obj_npc_room)
    self.npc.sprite_index = spr_lancer_rt
    self.lcon = 22
    global.flag[229] = 1
    with (self.l)
        self.visible = 0
}
if (self.con == 72)
{
    self.savepoint = instance_create(640, 80, obj_savepoint)
    with (self.r)
        self.visible = 0
    global.cinstance[0].x = self.r.x
    global.cinstance[0].y = self.r.y
    with (global.cinstance[0])
    {
        self.visible = 1
        scr_caterpillar_interpolate()
    }
    with (global.cinstance[1])
    {
        self.visible = 1
        scr_caterpillar_interpolate()
    }
    scr_caterpillar_facing(1)
    with (obj_mainchara)
        self.cutscene = 0
    global.interact = 0
    global.facing = 0
    scr_tempsave()
    self.con = 99
}
if ((global.plot < 150) && ((self.con == 99) && ((global.interact == 0) && (obj_mainchara.x <= 80))))
{
    obj_mainchara.x = 82
    global.interact = 1
    global.typer = 31
    global.fc = 2
    global.fe = 1
    global.msg[0] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_712_0")
    global.msg[1] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_713_0")
    instance_create(0, 0, obj_dialoguer)
    self.con = 100
}
if ((self.con == 100) && (!d_ex()))
{
    self.con = 99
    global.interact = 0
}
