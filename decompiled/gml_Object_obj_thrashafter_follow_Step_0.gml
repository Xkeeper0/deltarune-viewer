if (self.followcon == 1)
{
    if (obj_mainchara.x >= (self.x + 100))
    {
        self.sprite_index = spr_lancer_rt
        self.xval = 4
        if (obj_mainchara.px > 4)
            self.xval = obj_mainchara.px
        self.x = (self.x + self.xval)
        self.followbuffer = 10
    }
    if (obj_mainchara.x <= (self.x - 100))
    {
        self.sprite_index = spr_lancer_lt
        self.xval = -4
        if (obj_mainchara.px < -4)
            self.xval = obj_mainchara.px
        self.x = (self.x + self.xval)
        self.followbuffer = 10
    }
    if (self.followbuffer <= 0)
        self.sprite_index = spr_lancer_dt
}
self.followbuffer = (self.followbuffer - 1)
if (self.con == 1)
{
    self.x = obj_mainchara.x
    self.con = 2
}
if (self.con == 2)
{
    if (self.room == room_forest_afterthrash2)
    {
        if (obj_mainchara.x >= 500)
        {
            if (global.interact == 0)
                _temp_local_var_1 = (global.flag[229] < 3)
            else
                _temp_local_var_1 = 0
        }
        else
            _temp_local_var_1 = 0
        if _temp_local_var_1
        {
            global.interact = 1
            global.facing = 2
            with(obj_caterpillarchara)
            {
                self.fun = 1
                self.sprite_index = self.usprite
                self.image_index = 0
            }
            global.fc = 5
            global.fe = 3
            global.typer = 32
            global.msg[0] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_54_0"@4734)
            global.msg[1] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_55_0"@4735)
            scr_ralface(2, 8)
            global.msg[3] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_57_0"@4736)
            scr_lanface(4, 7)
            global.msg[5] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_59_0"@4737)
            global.msg[6] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_60_0"@4738)
            scr_susface(7, 0)
            global.msg[8] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_62_0"@4739)
            global.msg[9] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_63_0"@4740)
            scr_lanface(10, 1)
            global.msg[11] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_65_0"@4741)
            self.con = 4
            instance_create(0, 0, obj_dialoguer)
            global.flag[229] = 3
        }
        if (obj_mainchara.x >= 1400)
        {
            if (global.interact == 0)
                _temp_local_var_2 = (global.flag[229] < 4)
            else
                _temp_local_var_2 = 0
        }
        else
            _temp_local_var_2 = 0
        if _temp_local_var_2
        {
            global.interact = 1
            global.fc = 1
            global.fe = 0
            global.typer = 30
            global.msg[0] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_77_0"@4742)
            global.msg[1] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_78_0"@4743)
            global.msg[2] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_79_0"@4744)
            scr_ralface(3, 6)
            global.msg[4] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_81_0"@4745)
            scr_susface(5, 0)
            global.msg[6] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_83_0"@4746)
            scr_ralface(7, 1)
            global.msg[8] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_85_0"@4747)
            scr_susface(9, 7)
            global.msg[10] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_87_0"@4748)
            self.con = 6
            instance_create(0, 0, obj_dialoguer)
            global.flag[229] = 4
        }
        if (obj_mainchara.x >= 99999)
        {
            if (global.interact == 0)
                _temp_local_var_3 = (global.flag[229] < 5)
            else
                _temp_local_var_3 = 0
        }
        else
            _temp_local_var_3 = 0
        if _temp_local_var_3
        {
            global.interact = 1
            global.fc = 2
            global.fe = 8
            global.typer = 32
            global.msg[0] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_102_0"@4749)
            scr_susface(1, 0)
            global.msg[2] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_104_0"@4750)
            scr_ralface(3, 1)
            global.msg[4] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_106_0"@4751)
            scr_susface(5, 7)
            global.msg[6] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_108_0"@4752)
            self.con = 6
            instance_create(0, 0, obj_dialoguer)
            global.flag[229] = 5
        }
    }
    if (self.room == room_forest_afterthrash3)
    {
        if (obj_mainchara.x >= 360)
        {
            if (global.interact == 0)
                _temp_local_var_4 = (global.flag[229] < 6)
            else
                _temp_local_var_4 = 0
        }
        else
            _temp_local_var_4 = 0
        if _temp_local_var_4
        {
            global.interact = 1
            global.facing = 1
            self.followcon = 0
            self.sprite_index = spr_lancer_rt
            global.fc = 5
            global.fe = 2
            global.typer = 32
            global.msg[0] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_129_0"@4753)
            scr_susface(1, 2)
            global.msg[2] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_131_0"@4754)
            self.con = 20
            instance_create(0, 0, obj_dialoguer)
            global.flag[229] = 6
        }
        if (obj_mainchara.x >= 1200)
        {
            if (global.interact == 0)
                _temp_local_var_5 = (global.flag[229] < 7)
            else
                _temp_local_var_5 = 0
        }
        else
            _temp_local_var_5 = 0
        if _temp_local_var_5
        {
            global.interact = 1
            global.facing = 2
            with(obj_caterpillarchara)
            {
                self.fun = 1
                self.sprite_index = self.usprite
                self.image_index = 0
            }
            global.fc = 1
            global.fe = 0
            global.typer = 30
            global.msg[0] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_151_0"@4755)
            scr_lanface(1, 3)
            global.msg[2] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_153_0"@4756)
            scr_susface(3, 6)
            global.msg[4] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_155_0"@4757)
            scr_lanface(5, 1)
            global.msg[6] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_157_0"@4758)
            self.con = 6
            self.speclaugh = 1
            instance_create(0, 0, obj_dialoguer)
            global.flag[229] = 7
        }
    }
    if (self.room == room_forest_afterthrash4)
    {
        if (obj_mainchara.x >= 360)
        {
            if (global.interact == 0)
                _temp_local_var_6 = (global.flag[229] < 8)
            else
                _temp_local_var_6 = 0
        }
        else
            _temp_local_var_6 = 0
        if _temp_local_var_6
        {
            global.interact = 1
            global.facing = 2
            with(obj_caterpillarchara)
            {
                self.fun = 1
                self.sprite_index = self.usprite
                self.image_index = 0
            }
            self.sprite_index = spr_lancer_dt
            global.fc = 5
            global.fe = 3
            global.typer = 32
            global.msg[0] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_187_0"@4759)
            global.msg[1] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_188_0"@4760)
            scr_ralface(2, 8)
            global.msg[3] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_190_0"@4761)
            global.msg[4] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_191_0"@4762)
            global.msg[5] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_192_0"@4763)
            scr_lanface(6, 6)
            global.msg[7] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_194_0"@4764)
            global.msg[8] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_195_0"@4765)
            scr_ralface(9, 1)
            global.msg[10] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_197_0"@4766)
            scr_lanface(11, 4)
            global.msg[12] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_199_0"@4767)
            self.con = 4
            instance_create(0, 0, obj_dialoguer)
            global.flag[229] = 8
        }
        if (obj_mainchara.x >= 800)
        {
            if (global.interact == 0)
                _temp_local_var_7 = (global.flag[229] < 9)
            else
                _temp_local_var_7 = 0
        }
        else
            _temp_local_var_7 = 0
        if _temp_local_var_7
        {
            global.interact = 1
            self.sprite_index = spr_lancer_dt
            global.fc = 1
            global.fe = 0
            global.typer = 30
            global.msg[0] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_213_0"@4768)
            global.msg[1] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_214_0"@4769)
            scr_lanface(2, 2)
            global.msg[3] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_216_0"@4770)
            scr_susface(4, 2)
            global.msg[5] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_218_0"@4771)
            global.msg[6] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_219_0"@4772)
            scr_ralface(7, 6)
            global.msg[8] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_221_0"@4773)
            scr_susface(9, 2)
            global.msg[10] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_223_0"@4774)
            self.con = 4
            instance_create(0, 0, obj_dialoguer)
            global.flag[229] = 9
        }
        if (obj_mainchara.x >= 1200)
        {
            if (global.interact == 0)
                _temp_local_var_8 = (global.flag[229] < 10)
            else
                _temp_local_var_8 = 0
        }
        else
            _temp_local_var_8 = 0
        if _temp_local_var_8
        {
            global.interact = 1
            global.fc = 1
            global.fe = 12
            global.typer = 30
            global.msg[0] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_236_0"@4775)
            self.con = 4
            instance_create(0, 0, obj_dialoguer)
            global.flag[229] = 10
        }
    }
    if (self.room == room_forest_castleview)
    {
        if (obj_mainchara.x >= 720)
        {
            if (global.interact == 0)
                _temp_local_var_9 = (global.flag[229] < 11)
            else
                _temp_local_var_9 = 0
        }
        else
            _temp_local_var_9 = 0
        if _temp_local_var_9
        {
            global.interact = 1
            global.facing = 2
            with(obj_caterpillarchara)
            {
                self.fun = 1
                self.sprite_index = self.usprite
                self.image_index = 0
            }
            self.con = 12
            global.typer = 31
            global.fc = 2
            global.fe = 8
            global.msg[0] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_265_0"@4776)
            scr_lanface(1, 2)
            global.msg[2] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_267_0"@4777)
            global.msg[3] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_268_0"@4778)
            global.msg[4] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_269_0"@4779)
            scr_susface(5, 0)
            global.msg[6] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_271_0"@4780)
            scr_ralface(7, 0)
            global.msg[8] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_273_0"@4781)
            global.msg[9] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_274_0"@4782)
            scr_susface(10, 0)
            global.msg[11] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_276_0"@4783)
            global.msg[12] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_277_0"@4784)
            scr_lanface(13, 6)
            global.msg[14] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_279_0"@4785)
            instance_create(0, 0, obj_dialoguer)
            global.flag[229] = 11
        }
        if (obj_mainchara.x >= 1600)
        {
            if (global.interact == 0)
                _temp_local_var_10 = (global.flag[229] < 12)
            else
                _temp_local_var_10 = 0
        }
        else
            _temp_local_var_10 = 0
        if _temp_local_var_10
        {
            global.interact = 1
            global.facing = 2
            with(obj_caterpillarchara)
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
            global.msg[0] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_303_0"@4786)
            global.msg[1] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_304_0"@4787)
            global.msg[2] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_305_0"@4788)
            global.msg[3] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_306_0"@4789)
            scr_susface(4, 0)
            global.msg[5] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_308_0"@4790)
            global.msg[6] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_309_0"@4791)
            global.msg[7] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_310_0"@4792)
            global.msg[8] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_311_0"@4793)
            scr_lanface(9, "C"@2530)
            global.msg[10] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_313_0"@4794)
            instance_create(0, 0, obj_dialoguer)
            global.flag[229] = 12
        }
    }
}
if (self.con == 4)
    _temp_local_var_11 = (~ d_ex())
else
    _temp_local_var_11 = 0
if _temp_local_var_11
{
    global.facing = 1
    global.interact = 0
    self.con = 2
    self.followcon = 1
    with(obj_caterpillarchara)
    {
        self.fun = 0
        self.sprite_index = self.rsprite
        self.image_index = 0
    }
}
if (self.con == 6)
    _temp_local_var_12 = (~ d_ex())
else
    _temp_local_var_12 = 0
if _temp_local_var_12
{
    with(obj_caterpillarchara)
    {
        if (self.dsprite == 187)
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
    with(obj_caterpillarchara)
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
        with(obj_caterpillarchara)
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
    global.msg[0] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_393_0"@4797)
    global.msg[1] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_394_0"@4798)
    scr_lanface(2, 2)
    global.msg[3] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_396_0"@4799)
    global.msg[4] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_397_0"@4800)
    scr_susface(5, 6)
    global.msg[6] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_399_0"@4801)
    global.msg[7] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_400_0"@4802)
    instance_create(0, 0, obj_dialoguer)
}
if (self.con == 12)
{
    self.followcon = 0
    if (self.x <= (obj_mainchara.x + 100))
        self.x = (self.x + 10)
    else
        self.con = 4
    self.sprite_index = spr_lancer_ut
}
if (self.con >= 20)
    _temp_local_var_13 = (self.con < 80)
else
    _temp_local_var_13 = 0
if _temp_local_var_13
{
    if (self.con == 20)
        _temp_local_var_14 = (~ d_ex())
    else
        _temp_local_var_14 = 0
    if _temp_local_var_14
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
        with(self.s)
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
        with(self.s)
        {
            scr_depth()
        }
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
        with(self.s)
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
        with(self.s)
        {
            self.y = (self.y - 3)
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
                self.jumps = (self.jumps + 1)
            }
            else
            {
                self.con = 26
                self.alarm[4] = 20
                with(self.s)
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
        with(self.s)
        {
            self.sprite_index = spr_susier_dark
        }
        global.typer = 30
        global.fc = 1
        global.fe = 0
        global.msg[0] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_545_0"@4810)
        scr_lanface(1, 3)
        global.msg[2] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_547_0"@4811)
        global.msg[3] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_548_0"@4812)
        scr_susface(4, 6)
        global.msg[5] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_550_0"@4813)
        scr_lanface(6, 2)
        global.msg[7] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_552_0"@4814)
        instance_create(0, 0, obj_dialoguer)
        self.con = 28
        self.blender = 0
    }
    if (self.con == 28)
        _temp_local_var_15 = (~ d_ex())
    else
        _temp_local_var_15 = 0
    if _temp_local_var_15
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
        self.fmax = (self.fmax + 0.2)
        if instance_exists(self.flash)
            self.flash.siner = self.fmax
        if (self.fmax >= 5)
            self.con = 30
    }
    if (self.con == 30)
    {
        snd_play(snd_badexplosion)
        self.wh = instance_create(0, 0, obj_fadeout)
        self.wh.image_blend = 0xFFFFFF
        self.con = 31
        self.alarm[4] = 30
    }
    if (self.con == 32)
    {
        self.sprite_index = spr_lancer_lt_stool
        with(self.wh)
        {
            instance_destroy()
        }
        self.wh = instance_create(0, 0, obj_fadein)
        self.wh.fadespeed = -0.03
        self.wh.image_blend = 0xFFFFFF
        self.con = 33
        self.alarm[4] = 40
        with(self.flash)
        {
            instance_destroy()
        }
    }
    if (self.con == 34)
    {
        global.fe = 3
        global.msg[0] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_608_0"@4821)
        scr_ralface(1, 1)
        global.msg[2] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_610_0"@4822)
        scr_susface(3, 2)
        global.msg[4] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_612_0"@4823)
        self.con = 35
        instance_create(0, 0, obj_dialoguer)
    }
    if (self.con == 35)
        _temp_local_var_16 = (~ d_ex())
    else
        _temp_local_var_16 = 0
    if _temp_local_var_16
    {
        self.iy = (self.s.y - 40)
        with(self.s)
        {
            self.image_index = 1
            self.hspeed = 6
            self.y = (self.y - 6)
            self.vspeed = -9
            self.gravity = 1
        }
        self.con = 36
    }
    if (self.con == 36)
    {
        if (self.s.y >= self.iy)
            _temp_local_var_17 = (self.s.vspeed >= 0)
        else
            _temp_local_var_17 = 0
        if _temp_local_var_17
        {
            with(self.s)
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
        with(self.s)
        {
            self.sprite_index = spr_susieu_dark_jump
            self.y = (self.y - 5)
            self.vspeed = -11
            self.gravity = 1
        }
        self.con = 39
    }
    if (self.con == 39)
    {
        if (self.s.vspeed >= 0)
        {
            with(self.tree)
            {
                self.image_index = 1
            }
        }
        if (self.s.y >= (self.iy - 4))
        {
            with(self.s)
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
        with(self.s)
        {
            self.sprite_index = spr_susiel_dark
            self.image_index = 1
            self.hspeed = -4
            self.y = (self.y - 6)
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
            with(self.s)
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
        global.msg[0] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_723_0"@4825)
        scr_lanface(1, 3)
        global.msg[2] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_725_0"@4826)
        instance_create(0, 0, obj_dialoguer)
        self.con = 45
    }
    if (self.con == 45)
        _temp_local_var_18 = (~ d_ex())
    else
        _temp_local_var_18 = 0
    if _temp_local_var_18
    {
        with(self.s)
        {
            self.sprite_index = spr_susier_dark_unhappy
        }
        self.con = 46
        self.alarm[4] = 15
    }
    if (self.con == 47)
    {
        global.fc = 1
        global.typer = 30
        global.fe = 0
        global.msg[0] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_742_0"@4827)
        scr_lanface(1, 6)
        global.msg[2] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_744_0"@4828)
        global.msg[3] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_745_0"@4829)
        scr_susface(4, 0)
        global.msg[5] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_747_0"@4830)
        instance_create(0, 0, obj_dialoguer)
        self.con = 48
    }
    if (self.con == 48)
        _temp_local_var_19 = (~ d_ex())
    else
        _temp_local_var_19 = 0
    if _temp_local_var_19
    {
        with(self.s)
        {
            self.hspeed = 4
        }
        self.con = 49
        self.alarm[4] = 5
    }
    if (self.con == 50)
    {
        with(self.s)
        {
            scr_halt()
        }
        self.con = 51
        self.alarm[4] = 10
    }
    if (self.con == 52)
    {
        global.msg[0] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_771_0"@4831)
        scr_lanface(1, 3)
        global.msg[2] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_773_0"@4832)
        global.msg[3] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_774_0"@4833)
        instance_create(0, 0, obj_dialoguer)
        self.con = 53
    }
    if (self.con == 53)
        _temp_local_var_20 = (~ d_ex())
    else
        _temp_local_var_20 = 0
    if _temp_local_var_20
    {
        with(self.s)
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
        with(self.s)
        {
            scr_halt()
        }
        self.con = 56
        self.alarm[4] = 15
    }
    if (self.con == 57)
    {
        global.typer = 30
        global.fc = 1
        global.fe = 0
        global.msg[0] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_803_0"@4834)
        scr_lanface(1, 1)
        global.msg[2] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_805_0"@4835)
        instance_create(0, 0, obj_dialoguer)
        self.con = 58
    }
    if (self.con == 59)
        _temp_local_var_21 = (~ d_ex())
    else
        _temp_local_var_21 = 0
    if _temp_local_var_21
    {
        self.candysong[0] = snd_init("fanfare.ogg"@4495)
        self.candysong[1] = mus_play(self.candysong[0])
        global.fc = 0
        global.typer = 52
        global.msg[0] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_817_0"@4837)
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
        with(obj_dialoguer)
        {
            instance_destroy()
        }
        with(obj_writer)
        {
            instance_destroy()
        }
        global.typer = 30
        global.fe = 7
        global.fc = 1
        global.msg[0] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_839_0"@4838)
        instance_create(0, 0, obj_dialoguer)
        self.con = 65
    }
    if (self.con == 65)
        _temp_local_var_22 = (~ d_ex())
    else
        _temp_local_var_22 = 0
    if _temp_local_var_22
    {
        self.s.susx = self.susx
        self.s.susy = self.susy
        with(self.s)
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
        with(self.s)
        {
            instance_destroy()
        }
        with(self.r)
        {
            instance_destroy()
        }
        with(obj_caterpillarchara)
        {
            self.visible = 1
        }
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
if (self.con >= 100)
    _temp_local_var_23 = (self.con <= 150)
else
    _temp_local_var_23 = 0
if _temp_local_var_23
{
    if (self.con == 100)
        _temp_local_var_24 = (~ d_ex())
    else
        _temp_local_var_24 = 0
    if _temp_local_var_24
    {
        global.facing = 1
        scr_caterpillar_facing(global.facing)
        scr_markify_caterpillar()
        with(self.s)
        {
            self.sprite_index = spr_susier_dark
        }
        with(self.r)
        {
            self.sprite_index = spr_ralseir
        }
        self.sprite_index = spr_lancer_rt_unhappy
        self.hspeed = 6
        self.con = 101
    }
    if (self.con == 101)
        _temp_local_var_25 = (self.x >= (obj_mainchara.x + 40))
    else
        _temp_local_var_25 = 0
    if _temp_local_var_25
    {
        self.hspeed = 0
        global.typer = 32
        global.fc = 5
        global.fe = 6
        global.msg[0] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_932_0"@4839)
        scr_susface(1, 2)
        global.msg[2] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_934_0"@4840)
        global.msg[3] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_935_0"@4841)
        scr_lanface(4, "C"@2530)
        global.msg[5] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_937_0"@4842)
        scr_susface(6, 0)
        global.msg[7] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_939_0"@4843)
        scr_lanface(8, 5)
        global.msg[9] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_941_0"@4844)
        self.con = 102
        instance_create(0, 0, obj_dialoguer)
    }
    if (self.con == 102)
        _temp_local_var_26 = (~ d_ex())
    else
        _temp_local_var_26 = 0
    if _temp_local_var_26
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
        global.msg[0] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_962_0"@4845)
        global.msg[1] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_963_0"@4846)
        scr_susface(2, 0)
        global.msg[3] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_965_0"@4847)
        self.con = 107
        instance_create(0, 0, obj_dialoguer)
    }
    if (self.con == 107)
        _temp_local_var_27 = (~ d_ex())
    else
        _temp_local_var_27 = 0
    if _temp_local_var_27
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
        with(self.s)
        {
            self.sprite_index = spr_susier_dark_unhappy
        }
        snd_free_all()
        global.fc = 5
        global.typer = 32
        global.fe = 5
        global.msg[0] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_991_0"@4848)
        global.msg[1] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_992_0"@4849)
        self.con = 112
        instance_create(0, 0, obj_dialoguer)
    }
    if (self.con == 112)
        _temp_local_var_28 = (~ d_ex())
    else
        _temp_local_var_28 = 0
    if _temp_local_var_28
    {
        global.currentsong[0] = snd_init("creepychase.ogg"@4850)
        global.currentsong[1] = mus_loop(global.currentsong[0])
        self.hspeed = 18
        self.con = 113
        self.alarm[4] = 30
        self.exc = instance_create((self.s.x + 20), (self.s.y - 20), obj_excblcon)
    }
    if (self.con == 114)
    {
        with(self.exc)
        {
            instance_destroy()
        }
        global.fc = 1
        global.typer = 30
        global.fe = 9
        global.msg[0] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_1013_0"@4851)
        global.msg[1] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_1014_0"@4852)
        self.con = 115
        instance_create(0, 0, obj_dialoguer)
    }
    if (self.con == 115)
        _temp_local_var_29 = (~ d_ex())
    else
        _temp_local_var_29 = 0
    if _temp_local_var_29
    {
        with(self.s)
        {
            scr_depth()
            self.hspeed = 12
            self.image_speed = 0.25
        }
        self.con = 116
        self.alarm[4] = 30
    }
    if (self.con == 117)
        _temp_local_var_30 = (~ d_ex())
    else
        _temp_local_var_30 = 0
    if _temp_local_var_30
    {
        global.typer = 31
        global.fc = 2
        global.fe = 3
        global.msg[0] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_1038_0"@4853)
        instance_create(0, 0, obj_dialoguer)
        self.con = 118
    }
    if (self.con == 118)
        _temp_local_var_31 = (~ d_ex())
    else
        _temp_local_var_31 = 0
    if _temp_local_var_31
    {
        with(self.r)
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
        with(obj_mainchara)
        {
            self.cutscene = 1
        }
        self.block = instance_create((__view_get(e__VW.XView, 0) - 40), 200, obj_soliddark)
        self.block.image_yscale = 20
    }
}
