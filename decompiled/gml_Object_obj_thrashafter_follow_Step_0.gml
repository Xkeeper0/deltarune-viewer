if (self.followcon == 1)
{
    if (obj_mainchara.x >= (self.x + 100))
    {
        self.sprite_index = spr_lancer_rt
        self.xval = 4
        if (obj_mainchara.px > 4)
            self.xval = obj_mainchara.px
        self.x += self.xval
        self.followbuffer = 10
    }
    if (obj_mainchara.x <= (self.x - 100))
    {
        self.sprite_index = spr_lancer_lt
        self.xval = -4
        if (obj_mainchara.px < -4)
            self.xval = obj_mainchara.px
        self.x += self.xval
        self.followbuffer = 10
    }
    if (self.followbuffer <= 0)
        self.sprite_index = spr_lancer_dt
}
self.followbuffer -= 1
if (self.con == 1)
{
    self.x = obj_mainchara.x
    self.con = 2
}
if (self.con == 2)
{
    if (self.room == room_forest_afterthrash2)
    {
        if ((obj_mainchara.x >= 500) && ((global.interact == 0) && (global.flag[229] < 3)))
        {
            global.interact = 1
            global.facing = 2
            with (obj_caterpillarchara)
            {
                self.fun = 1
                self.sprite_index = self.usprite
                self.image_index = 0
            }
            global.fc = 5
            global.fe = 3
            global.typer = 32
            global.msg[0] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_54_0")
            global.msg[1] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_55_0")
            scr_ralface(2, 8)
            global.msg[3] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_57_0")
            scr_lanface(4, 7)
            global.msg[5] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_59_0")
            global.msg[6] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_60_0")
            scr_susface(7, 0)
            global.msg[8] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_62_0")
            global.msg[9] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_63_0")
            scr_lanface(10, 1)
            global.msg[11] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_65_0")
            self.con = 4
            instance_create(0, 0, obj_dialoguer)
            global.flag[229] = 3
        }
        if ((obj_mainchara.x >= 1400) && ((global.interact == 0) && (global.flag[229] < 4)))
        {
            global.interact = 1
            global.fc = 1
            global.fe = 0
            global.typer = 30
            global.msg[0] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_77_0")
            global.msg[1] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_78_0")
            global.msg[2] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_79_0")
            scr_ralface(3, 6)
            global.msg[4] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_81_0")
            scr_susface(5, 0)
            global.msg[6] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_83_0")
            scr_ralface(7, 1)
            global.msg[8] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_85_0")
            scr_susface(9, 7)
            global.msg[10] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_87_0")
            self.con = 6
            instance_create(0, 0, obj_dialoguer)
            global.flag[229] = 4
        }
        if ((obj_mainchara.x >= 99999) && ((global.interact == 0) && (global.flag[229] < 5)))
        {
            global.interact = 1
            global.fc = 2
            global.fe = 8
            global.typer = 32
            global.msg[0] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_102_0")
            scr_susface(1, 0)
            global.msg[2] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_104_0")
            scr_ralface(3, 1)
            global.msg[4] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_106_0")
            scr_susface(5, 7)
            global.msg[6] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_108_0")
            self.con = 6
            instance_create(0, 0, obj_dialoguer)
            global.flag[229] = 5
        }
    }
    if (self.room == room_forest_afterthrash3)
    {
        if ((obj_mainchara.x >= 360) && ((global.interact == 0) && (global.flag[229] < 6)))
        {
            global.interact = 1
            global.facing = 1
            self.followcon = 0
            self.sprite_index = spr_lancer_rt
            global.fc = 5
            global.fe = 2
            global.typer = 32
            global.msg[0] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_129_0")
            scr_susface(1, 2)
            global.msg[2] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_131_0")
            self.con = 20
            instance_create(0, 0, obj_dialoguer)
            global.flag[229] = 6
        }
        if ((obj_mainchara.x >= 1200) && ((global.interact == 0) && (global.flag[229] < 7)))
        {
            global.interact = 1
            global.facing = 2
            with (obj_caterpillarchara)
            {
                self.fun = 1
                self.sprite_index = self.usprite
                self.image_index = 0
            }
            global.fc = 1
            global.fe = 0
            global.typer = 30
            global.msg[0] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_151_0")
            scr_lanface(1, 3)
            global.msg[2] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_153_0")
            scr_susface(3, 6)
            global.msg[4] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_155_0")
            scr_lanface(5, 1)
            global.msg[6] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_157_0")
            self.con = 6
            self.speclaugh = 1
            instance_create(0, 0, obj_dialoguer)
            global.flag[229] = 7
        }
    }
    if (self.room == room_forest_afterthrash4)
    {
        if ((obj_mainchara.x >= 360) && ((global.interact == 0) && (global.flag[229] < 8)))
        {
            global.interact = 1
            global.facing = 2
            with (obj_caterpillarchara)
            {
                self.fun = 1
                self.sprite_index = self.usprite
                self.image_index = 0
            }
            self.sprite_index = spr_lancer_dt
            global.fc = 5
            global.fe = 3
            global.typer = 32
            global.msg[0] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_187_0")
            global.msg[1] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_188_0")
            scr_ralface(2, 8)
            global.msg[3] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_190_0")
            global.msg[4] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_191_0")
            global.msg[5] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_192_0")
            scr_lanface(6, 6)
            global.msg[7] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_194_0")
            global.msg[8] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_195_0")
            scr_ralface(9, 1)
            global.msg[10] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_197_0")
            scr_lanface(11, 4)
            global.msg[12] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_199_0")
            self.con = 4
            instance_create(0, 0, obj_dialoguer)
            global.flag[229] = 8
        }
        if ((obj_mainchara.x >= 800) && ((global.interact == 0) && (global.flag[229] < 9)))
        {
            global.interact = 1
            self.sprite_index = spr_lancer_dt
            global.fc = 1
            global.fe = 0
            global.typer = 30
            global.msg[0] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_213_0")
            global.msg[1] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_214_0")
            scr_lanface(2, 2)
            global.msg[3] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_216_0")
            scr_susface(4, 2)
            global.msg[5] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_218_0")
            global.msg[6] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_219_0")
            scr_ralface(7, 6)
            global.msg[8] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_221_0")
            scr_susface(9, 2)
            global.msg[10] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_223_0")
            self.con = 4
            instance_create(0, 0, obj_dialoguer)
            global.flag[229] = 9
        }
        if ((obj_mainchara.x >= 1200) && ((global.interact == 0) && (global.flag[229] < 10)))
        {
            global.interact = 1
            global.fc = 1
            global.fe = 12
            global.typer = 30
            global.msg[0] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_236_0")
            self.con = 4
            instance_create(0, 0, obj_dialoguer)
            global.flag[229] = 10
        }
    }
    if (self.room == room_forest_castleview)
    {
        if ((obj_mainchara.x >= 720) && ((global.interact == 0) && (global.flag[229] < 11)))
        {
            global.interact = 1
            global.facing = 2
            with (obj_caterpillarchara)
            {
                self.fun = 1
                self.sprite_index = self.usprite
                self.image_index = 0
            }
            self.con = 12
            global.typer = 31
            global.fc = 2
            global.fe = 8
            global.msg[0] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_265_0")
            scr_lanface(1, 2)
            global.msg[2] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_267_0")
            global.msg[3] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_268_0")
            global.msg[4] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_269_0")
            scr_susface(5, 0)
            global.msg[6] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_271_0")
            scr_ralface(7, 0)
            global.msg[8] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_273_0")
            global.msg[9] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_274_0")
            scr_susface(10, 0)
            global.msg[11] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_276_0")
            global.msg[12] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_277_0")
            scr_lanface(13, 6)
            global.msg[14] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_279_0")
            instance_create(0, 0, obj_dialoguer)
            global.flag[229] = 11
        }
        if ((obj_mainchara.x >= 1600) && ((global.interact == 0) && (global.flag[229] < 12)))
        {
            global.interact = 1
            global.facing = 2
            with (obj_caterpillarchara)
            {
                self.fun = 1
                self.sprite_index = self.usprite
                self.image_index = 0
            }
            self.con = 100
            self.followcon = 0
            self.sprite_index = spr_lancer_rt_unhappy
            global.typer = 32
            global.fc = 5
            global.fe = 6
            global.msg[0] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_303_0")
            global.msg[1] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_304_0")
            global.msg[2] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_305_0")
            global.msg[3] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_306_0")
            scr_susface(4, 0)
            global.msg[5] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_308_0")
            global.msg[6] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_309_0")
            global.msg[7] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_310_0")
            global.msg[8] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_311_0")
            scr_lanface(9, "C")
            global.msg[10] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_313_0")
            instance_create(0, 0, obj_dialoguer)
            global.flag[229] = 12
        }
    }
}
if ((self.con == 4) && (!d_ex()))
{
    global.facing = 1
    global.interact = 0
    self.con = 2
    self.followcon = 1
    with (obj_caterpillarchara)
    {
        self.fun = 0
        self.sprite_index = self.rsprite
        self.image_index = 0
    }
}
if ((self.con == 6) && (!d_ex()))
{
    with (obj_caterpillarchara)
    {
        if (self.dsprite == spr_susied_dark)
        {
            self.fun = 1
            self.sprite_index = spr_susier_dark_laugh
            self.image_speed = 0.25
        }
    }
    self.followcon = 0
    self.sprite_index = spr_lancer_lt_laugh
    self.image_speed = 0.25
    self.ll = snd_play(snd_lancerlaugh)
    self.sl = snd_play(snd_suslaugh)
    snd_volume(self.ll, 0.8, 0)
    snd_volume(self.sl, 0.8, 0)
    self.con = 7
    self.alarm[4] = 50
}
if (self.con == 8)
{
    with (obj_caterpillarchara)
    {
        self.fun = 0
        self.image_speed = 0
        self.sprite_index = self.rsprite
    }
    self.sprite_index = spr_lancer_dt
    self.followcon = 1
    self.image_speed = 0
    global.interact = 0
    self.con = 2
    if (self.speclaugh == 1)
    {
        self.con = 9
        global.interact = 1
        with (obj_caterpillarchara)
        {
            self.fun = 0
            self.image_speed = 0
            self.sprite_index = self.usprite
        }
    }
}
if (self.con == 9)
{
    self.con = 4
    global.fe = 2
    global.fc = 1
    global.typer = 30
    global.msg[0] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_393_0")
    global.msg[1] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_394_0")
    scr_lanface(2, 2)
    global.msg[3] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_396_0")
    global.msg[4] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_397_0")
    scr_susface(5, 6)
    global.msg[6] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_399_0")
    global.msg[7] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_400_0")
    instance_create(0, 0, obj_dialoguer)
}
if (self.con == 12)
{
    self.followcon = 0
    if (self.x <= (obj_mainchara.x + 100))
        self.x += 10
    else
        self.con = 4
    self.sprite_index = spr_lancer_ut
}
if ((self.con >= 20) && (self.con < 80))
{
    if ((self.con == 20) && (!d_ex()))
    {
        self.depth = 800000
        self.pointx = (self.tree.x + 5)
        self.pointy = (self.tree.y + 100)
        scr_markify_caterpillar()
        self.s.pointx = self.pointx
        self.s.pointy = self.pointy
        self.susx = self.s.x
        self.susy = self.s.y
        self.hspeed = 10
        self.treecon = 1
        self.sprite_index = spr_lancer_rt
        with (self.s)
        {
            self.sprite_index = spr_susier_dark
            scr_move_to_point_over_time(self.pointx, (self.pointy - 10), 60)
            self.image_speed = 0.25
        }
        self.con = 21
        self.alarm[4] = 60
    }
    if (self.con == 21)
    {
        with (self.s)
            scr_depth()
    }
    if (self.treecon == 1)
    {
        if (self.x >= (self.tree.x + 160))
        {
            self.hspeed = 0
            self.vspeed = 10
            self.sprite_index = spr_lancer_dt
            self.treecon = 2
        }
    }
    if (self.treecon == 2)
    {
        if (self.y >= self.pointy)
        {
            self.depth = 100000
            self.vspeed = 0
            self.hspeed = -10
            self.sprite_index = spr_lancer_lt
            self.treecon = 3
        }
    }
    if (self.treecon == 3)
    {
        if (self.x <= (self.pointx + 65))
        {
            self.x = (self.pointx + 55)
            scr_halt()
        }
    }
    if (self.con == 22)
    {
        self.sprite_index = spr_lancer_lt
        with (self.s)
        {
            scr_halt()
            self.sprite_index = spr_susieu_dark_jump
        }
        self.con = 23
        self.jumps = 0
        self.jsy = self.s.y
        self.alarm[4] = 15
    }
    if (self.con == 24)
    {
        self.con = 25
        with (self.s)
        {
            self.y -= 3
            self.vspeed = -6
            self.gravity = 1
        }
    }
    if (self.con == 25)
    {
        if (self.s.y >= (self.jsy - 6))
        {
            if (self.jumps < 2)
            {
                self.s.y = self.jsy
                self.vspeed = 0
                self.gravity = 0
                self.con = 24
                self.jumps += 1
            }
            else
            {
                self.con = 26
                self.alarm[4] = 20
                with (self.s)
                {
                    self.gravity = 0
                    self.vspeed = 0
                }
                self.s.y = self.jsy
            }
        }
    }
    if (self.con == 27)
    {
        with (self.s)
            self.sprite_index = spr_susier_dark
        global.typer = 30
        global.fc = 1
        global.fe = 0
        global.msg[0] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_545_0")
        scr_lanface(1, 3)
        global.msg[2] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_547_0")
        global.msg[3] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_548_0")
        scr_susface(4, 6)
        global.msg[5] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_550_0")
        scr_lanface(6, 2)
        global.msg[7] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_552_0")
        instance_create(0, 0, obj_dialoguer)
        self.con = 28
        self.blender = 0
    }
    if ((self.con == 28) && (!d_ex()))
    {
        self.blender = 0
        snd_play(snd_boost)
        self.con = 29
        self.flash = scr_oflash()
        self.flash.flashspeed = 0
        self.fmax = 0
    }
    if (self.con == 29)
    {
        self.fmax += 0.2
        if instance_exists(self.flash)
            self.flash.siner = self.fmax
        if (self.fmax >= 5)
            self.con = 30
    }
    if (self.con == 30)
    {
        snd_play(snd_badexplosion)
        self.wh = instance_create(0, 0, obj_fadeout)
        self.wh.image_blend = 0x00FFFFFF
        self.con = 31
        self.alarm[4] = 30
    }
    if (self.con == 32)
    {
        self.sprite_index = spr_lancer_lt_stool
        with (self.wh)
            instance_destroy()
        self.wh = instance_create(0, 0, obj_fadein)
        self.wh.fadespeed = -0.03
        self.wh.image_blend = 0x00FFFFFF
        self.con = 33
        self.alarm[4] = 40
        with (self.flash)
            instance_destroy()
    }
    if (self.con == 34)
    {
        global.fe = 3
        global.msg[0] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_608_0")
        scr_ralface(1, 1)
        global.msg[2] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_610_0")
        scr_susface(3, 2)
        global.msg[4] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_612_0")
        self.con = 35
        instance_create(0, 0, obj_dialoguer)
    }
    if ((self.con == 35) && (!d_ex()))
    {
        self.iy = (self.s.y - 40)
        with (self.s)
        {
            self.image_index = 1
            self.hspeed = 6
            self.y -= 6
            self.vspeed = -9
            self.gravity = 1
        }
        self.con = 36
    }
    if (self.con == 36)
    {
        if ((self.s.y >= self.iy) && (self.s.vspeed >= 0))
        {
            with (self.s)
            {
                self.vspeed = 0
                self.gravity = 0
                self.hspeed = 0
                self.image_index = 0
            }
            self.con = 37
            self.alarm[4] = 5
        }
    }
    if (self.con == 38)
    {
        self.iy = self.s.y
        with (self.s)
        {
            self.sprite_index = spr_susieu_dark_jump
            self.y -= 5
            self.vspeed = -11
            self.gravity = 1
        }
        self.con = 39
    }
    if (self.con == 39)
    {
        if (self.s.vspeed >= 0)
        {
            with (self.tree)
                self.image_index = 1
        }
        if (self.s.y >= (self.iy - 4))
        {
            with (self.s)
            {
                self.vspeed = 0
                self.gravity = 0
            }
            self.con = 39.1
            self.alarm[4] = 5
        }
    }
    if (self.con == 40.1)
    {
        with (self.s)
        {
            self.sprite_index = spr_susiel_dark
            self.image_index = 1
            self.hspeed = -4
            self.y -= 6
            self.vspeed = -6
            self.gravity = 1
        }
        self.con = 41
    }
    if (self.con == 41)
    {
        if (self.s.y >= (self.jsy - 8))
        {
            self.s.y = self.jsy
            self.sprite_index = spr_lancer_lt
            with (self.s)
            {
                self.image_index = 0
                self.hspeed = 0
                self.gravity = 0
                self.vspeed = 0
            }
            self.con = 42
        }
    }
    if (self.con == 42)
    {
        self.con = 43
        self.alarm[4] = 15
    }
    if (self.con == 44)
    {
        global.fc = 1
        global.fe = 2
        global.typer = 30
        global.msg[0] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_723_0")
        scr_lanface(1, 3)
        global.msg[2] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_725_0")
        instance_create(0, 0, obj_dialoguer)
        self.con = 45
    }
    if ((self.con == 45) && (!d_ex()))
    {
        with (self.s)
            self.sprite_index = spr_susier_dark_unhappy
        self.con = 46
        self.alarm[4] = 15
    }
    if (self.con == 47)
    {
        global.fc = 1
        global.typer = 30
        global.fe = 0
        global.msg[0] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_742_0")
        scr_lanface(1, 6)
        global.msg[2] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_744_0")
        global.msg[3] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_745_0")
        scr_susface(4, 0)
        global.msg[5] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_747_0")
        instance_create(0, 0, obj_dialoguer)
        self.con = 48
    }
    if ((self.con == 48) && (!d_ex()))
    {
        with (self.s)
            self.hspeed = 4
        self.con = 49
        self.alarm[4] = 5
    }
    if (self.con == 50)
    {
        with (self.s)
            scr_halt()
        self.con = 51
        self.alarm[4] = 10
    }
    if (self.con == 52)
    {
        global.msg[0] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_771_0")
        scr_lanface(1, 3)
        global.msg[2] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_773_0")
        global.msg[3] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_774_0")
        instance_create(0, 0, obj_dialoguer)
        self.con = 53
    }
    if ((self.con == 53) && (!d_ex()))
    {
        with (self.s)
        {
            self.hspeed = -4
            self.image_speed = 0.25
            self.sprite_index = spr_susiel_dark_unhappy
        }
        self.con = 54
        self.alarm[4] = 10
    }
    if (self.con == 55)
    {
        with (self.s)
            scr_halt()
        self.con = 56
        self.alarm[4] = 15
    }
    if (self.con == 57)
    {
        global.typer = 30
        global.fc = 1
        global.fe = 0
        global.msg[0] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_803_0")
        scr_lanface(1, 1)
        global.msg[2] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_805_0")
        instance_create(0, 0, obj_dialoguer)
        self.con = 58
    }
    if ((self.con == 59) && (!d_ex()))
    {
        self.candysong[0] = snd_init("fanfare.ogg")
        self.candysong[1] = mus_play(self.candysong[0])
        global.fc = 0
        global.typer = 52
        global.msg[0] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_817_0")
        self.d = instance_create(0, 0, obj_dialoguer)
        self.d.skippable = 0
        self.con = 60
        self.alarm[4] = 30
    }
    if (self.con == 58)
    {
        snd_pause(global.currentsong[1])
        self.con = 59
    }
    if (self.con == 61)
    {
        snd_free(self.candysong[0])
        snd_resume(global.currentsong[1])
        with (obj_dialoguer)
            instance_destroy()
        with (obj_writer)
            instance_destroy()
        global.typer = 30
        global.fe = 7
        global.fc = 1
        global.msg[0] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_839_0")
        instance_create(0, 0, obj_dialoguer)
        self.con = 65
    }
    if ((self.con == 65) && (!d_ex()))
    {
        self.s.susx = self.susx
        self.s.susy = self.susy
        with (self.s)
        {
            self.sprite_index = spr_susiel_dark
            scr_move_to_point_over_time(self.susx, self.susy, 40)
            self.image_speed = 0.25
        }
        self.treecon = 10
        self.con = 66
        self.alarm[4] = 40
    }
    if (self.con == 67)
    {
        global.facing = 1
        with (self.s)
            instance_destroy()
        with (self.r)
            instance_destroy()
        with (obj_caterpillarchara)
            self.visible = 1
        global.interact = 0
        self.followcon = 1
        self.con = 2
    }
    if (self.treecon == 10)
    {
        self.sprite_index = spr_lancer_rt
        self.hspeed = 8
        self.treecon = 11
    }
    if (self.treecon == 11)
    {
        if (self.x >= (self.tree.x + 160))
        {
            self.sprite_index = spr_lancer_dt
            self.hspeed = 0
            self.vspeed = -8
            self.treecon = 12
        }
    }
    if (self.treecon == 12)
    {
        if (self.y <= (self.ystart + 10))
        {
            self.depth = (self.tree.depth + 1000)
            self.vspeed = 0
            self.y = self.ystart
            self.treecon = 13
        }
    }
}
if ((self.con >= 100) && (self.con <= 150))
{
    if ((self.con == 100) && (!d_ex()))
    {
        global.facing = 1
        scr_caterpillar_facing(global.facing)
        scr_markify_caterpillar()
        with (self.s)
            self.sprite_index = spr_susier_dark
        with (self.r)
            self.sprite_index = spr_ralseir
        self.sprite_index = spr_lancer_rt_unhappy
        self.hspeed = 6
        self.con = 101
    }
    if ((self.con == 101) && (self.x >= (obj_mainchara.x + 40)))
    {
        self.hspeed = 0
        global.typer = 32
        global.fc = 5
        global.fe = 6
        global.msg[0] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_932_0")
        scr_susface(1, 2)
        global.msg[2] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_934_0")
        global.msg[3] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_935_0")
        scr_lanface(4, "C")
        global.msg[5] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_937_0")
        scr_susface(6, 0)
        global.msg[7] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_939_0")
        scr_lanface(8, 5)
        global.msg[9] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_941_0")
        self.con = 102
        instance_create(0, 0, obj_dialoguer)
    }
    if ((self.con == 102) && (!d_ex()))
    {
        self.hspeed = 4
        self.con = 103
        self.alarm[4] = 10
    }
    if (self.con == 104)
    {
        scr_halt()
        self.con = 105
        self.alarm[4] = 30
    }
    if (self.con == 106)
    {
        global.msg[0] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_962_0")
        global.msg[1] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_963_0")
        scr_susface(2, 0)
        global.msg[3] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_965_0")
        self.con = 107
        instance_create(0, 0, obj_dialoguer)
    }
    if ((self.con == 107) && (!d_ex()))
    {
        self.hspeed = 4
        self.con = 108
        self.alarm[4] = 10
    }
    if (self.con == 109)
    {
        self.hspeed = 0
        self.con = 110
        self.alarm[4] = 60
    }
    if (self.con == 111)
    {
        with (self.s)
            self.sprite_index = spr_susier_dark_unhappy
        snd_free_all()
        global.fc = 5
        global.typer = 32
        global.fe = 5
        global.msg[0] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_991_0")
        global.msg[1] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_992_0")
        self.con = 112
        instance_create(0, 0, obj_dialoguer)
    }
    if ((self.con == 112) && (!d_ex()))
    {
        global.currentsong[0] = snd_init("creepychase.ogg")
        global.currentsong[1] = mus_loop(global.currentsong[0])
        self.hspeed = 18
        self.con = 113
        self.alarm[4] = 30
        self.exc = instance_create((self.s.x + 20), (self.s.y - 20), obj_excblcon)
    }
    if (self.con == 114)
    {
        with (self.exc)
            instance_destroy()
        global.fc = 1
        global.typer = 30
        global.fe = 9
        global.msg[0] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_1013_0")
        global.msg[1] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_1014_0")
        self.con = 115
        instance_create(0, 0, obj_dialoguer)
    }
    if ((self.con == 115) && (!d_ex()))
    {
        with (self.s)
        {
            scr_depth()
            self.hspeed = 12
            self.image_speed = 0.25
        }
        self.con = 116
        self.alarm[4] = 30
    }
    if ((self.con == 117) && (!d_ex()))
    {
        global.typer = 31
        global.fc = 2
        global.fe = 3
        global.msg[0] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_1038_0")
        instance_create(0, 0, obj_dialoguer)
        self.con = 118
    }
    if ((self.con == 118) && (!d_ex()))
    {
        with (self.r)
        {
            scr_depth()
            self.hspeed = 12
            self.image_speed = 0.25
        }
        self.con = 119
        self.alarm[4] = 30
    }
    if (self.con == 120)
    {
        global.interact = 0
        scr_losechar()
        global.facing = 0
        self.con = 121
        with (obj_mainchara)
            self.cutscene = 1
        self.block = instance_create((__view_get(0, 0) - 40), 200, obj_soliddark)
        self.block.image_yscale = 20
    }
}
