if (self.room == room_cc_rurus1)
{
    if (self.con == 0)
        _temp_local_var_1 = (global.interact == 0)
    else
        _temp_local_var_1 = 0
    if _temp_local_var_1
    {
        self.cinstancecheck = 0
        if instance_exists(global.cinstance[0])
            _temp_local_var_2 = instance_exists(global.cinstance[1])
        else
            _temp_local_var_2 = 0
        if _temp_local_var_2
        {
            if (global.cinstance[0].x >= 125)
                _temp_local_var_3 = (global.cinstance[1].x >= 125)
            else
                _temp_local_var_3 = 0
            if _temp_local_var_3
                self.cinstancecheck = 1
        }
        if (obj_mainchara.x >= 125)
            _temp_local_var_4 = (self.cinstancecheck == 1)
        else
            _temp_local_var_4 = 0
        if _temp_local_var_4
        {
            with(self.flashobj)
            {
                instance_destroy()
            }
            global.interact = 1
            snd_free_all()
            snd_play(snd_impact)
            instance_create(0, 0, obj_shake)
            self.i = 0
            while(true)
            {
                if (self.i < 4)
                {
                    self.spike[self.i].image_index = 0
                    self.i = (self.i + 1)
                    continue
                }
                break
            }
            self.spikewall1 = instance_create(self.spike[0].x, self.spike[0].y, obj_soliddark)
            self.spikewall2 = instance_create(self.spike[2].x, self.spike[2].y, obj_soliddark)
            self.spikewall1.image_yscale = 2
            self.spikewall2.image_yscale = 2
            self.con = 1
            self.alarm[4] = 30
        }
    }
    if (self.con == 2)
    {
        self.darkfade = scr_marker(-10, -10, spr_pixel_white)
        self.darkfade.image_xscale = 700
        self.darkfade.image_yscale = 400
        self.darkfade.image_alpha = 0
        self.darkfade.depth = 800000
        self.darkfade.image_blend = 0x000000
        self.fade = 0
        self.con = 3
    }
    if (self.con == 3)
    {
        self.fade = (self.fade + 0.01)
        self.darkfade.image_alpha = self.fade
        if (self.fade >= 0.6)
        {
            self.con = 4
            self.alarm[4] = 20
        }
    }
    if (self.con == 5)
    {
        global.facing = 2
        with(obj_caterpillarchara)
        {
            self.fun = 1
            self.sprite_index = self.usprite
        }
        global.msg[0] = scr_84_get_lang_string("obj_rurus_event_slash_Step_0_gml_58_0"@4864)
        global.typer = 42
        instance_create(120, 50, obj_writer)
        self.con = 6
    }
    if (self.con == 6)
        _temp_local_var_5 = (~ instance_exists(obj_writer))
    else
        _temp_local_var_5 = 0
    if _temp_local_var_5
    {
        global.fc = 2
        global.fe = 3
        global.typer = 31
        global.msg[0] = scr_84_get_lang_string("obj_rurus_event_slash_Step_0_gml_71_0"@4865)
        self.con = 7
        instance_create(0, 0, obj_dialoguer)
    }
    if (self.con == 7)
        _temp_local_var_6 = (~ d_ex())
    else
        _temp_local_var_6 = 0
    if _temp_local_var_6
    {
        global.msg[0] = scr_84_get_lang_string("obj_rurus_event_slash_Step_0_gml_78_0"@4866)
        global.typer = 42
        instance_create(200, 50, obj_writer)
        self.con = 8
    }
    if (self.con == 8)
        _temp_local_var_7 = (~ instance_exists(obj_writer))
    else
        _temp_local_var_7 = 0
    if _temp_local_var_7
    {
        snd_play(snd_rurus_appear)
        self.appear = instance_create(self.x, self.y, obj_rurus_appear)
        self.visible = 0
        self.con = 14
        self.alarm[4] = 60
    }
    if (self.con == 15)
    {
        self.visible = 1
        with(self.appear)
        {
            instance_destroy()
        }
        self.vspeed = 0
        self.con = 16
        self.alarm[4] = 21
    }
    if (self.con == 16)
    {
        with(self.darkfade)
        {
            self.image_alpha = (self.image_alpha - 0.03)
            if (self.image_alpha <= 0)
                self.image_alpha = 0
        }
    }
    if (self.con == 17)
    {
        global.currentsong[0] = snd_init("ruruskaado.ogg"@3998)
        global.currentsong[1] = mus_loop(global.currentsong[0])
        global.fc = 18
        global.fe = 0
        global.typer = 6
        global.msg[0] = scr_84_get_lang_string("obj_rurus_event_slash_Step_0_gml_121_0"@4867)
        global.msg[1] = scr_84_get_lang_string("obj_rurus_event_slash_Step_0_gml_122_0"@4868)
        global.msg[2] = scr_84_get_lang_string("obj_rurus_event_slash_Step_0_gml_123_0"@4869)
        global.msg[3] = scr_84_get_lang_string("obj_rurus_event_slash_Step_0_gml_124_0"@4870)
        self.d = instance_create(0, 0, obj_dialoguer)
        self.d.side = 1
        self.con = 18
    }
    if (self.con == 18)
        _temp_local_var_8 = (~ d_ex())
    else
        _temp_local_var_8 = 0
    if _temp_local_var_8
    {
        snd_play(snd_power)
        self.fade = 0
        self.con = 19
        with(self.darkfade)
        {
            self.image_blend = 0xFFFFFF
            self.depth = -200
        }
    }
    if (self.con == 19)
    {
        self.fade = (self.fade + 0.1)
        self.darkfade.image_alpha = self.fade
        if (self.darkfade.image_alpha >= 1)
        {
            self.con = 20
            self.block = instance_create(320, 240, obj_pushableblock)
            self.block.event = 0
            self.tile = instance_create(280, 240, obj_blocktile)
        }
    }
    if (self.con == 20)
    {
        self.fade = (self.fade - 0.1)
        self.darkfade.image_alpha = self.fade
        if (self.fade <= 0)
        {
            with(self.darkfade)
            {
                instance_destroy()
            }
            self.con = 21
            global.msg[0] = scr_84_get_lang_string("obj_rurus_event_slash_Step_0_gml_164_0"@4873)
            self.d = instance_create(0, 0, obj_dialoguer)
            self.d.side = 1
        }
    }
    if (self.con == 21)
        _temp_local_var_9 = (~ d_ex())
    else
        _temp_local_var_9 = 0
    if _temp_local_var_9
    {
        with(self.floorwall)
        {
            instance_destroy()
        }
        self.interactable = instance_create(280, 160, obj_readable_room1)
        self.interactable.image_xscale = 4
        self.interactable.image_yscale = 2
        global.facing = 0
        with(obj_caterpillarchara)
        {
            self.fun = 0
        }
        global.interact = 0
        self.con = 25
    }
    if (self.con == 25)
    {
        if (self.block.sprite_index == spr_npc_block_solved)
            _temp_local_var_10 = (global.interact == 0)
        else
            _temp_local_var_10 = 0
        if _temp_local_var_10
        {
            snd_free_all()
            global.interact = 1
            snd_play(snd_won)
            with(self.spikewall1)
            {
                instance_destroy()
            }
            with(self.spikewall2)
            {
                instance_destroy()
            }
            with(self.interactable)
            {
                instance_destroy()
            }
            self.i = 0
            while(true)
            {
                if (self.i < 4)
                {
                    self.spike[self.i].image_index = 1
                    self.i = (self.i + 1)
                    continue
                }
                break
            }
            self.con = 26
            self.alarm[4] = 30
        }
    }
    if (self.con == 27)
    {
        global.fc = 18
        global.fe = 1
        global.typer = 42
        global.msg[0] = scr_84_get_lang_string("obj_rurus_event_slash_Step_0_gml_208_0"@4875)
        global.msg[1] = scr_84_get_lang_string("obj_rurus_event_slash_Step_0_gml_209_0"@4876)
        global.msg[2] = scr_84_get_lang_string("obj_rurus_event_slash_Step_0_gml_210_0"@4877)
        self.d = instance_create(0, 0, obj_dialoguer)
        self.d.side = 1
        self.con = 28
    }
    if (self.con == 28)
        _temp_local_var_11 = (~ d_ex())
    else
        _temp_local_var_11 = 0
    if _temp_local_var_11
    {
        self.vspeed = -8
        self.con = 29
    }
    if (self.con == 29)
        _temp_local_var_12 = (~ d_ex())
    else
        _temp_local_var_12 = 0
    if _temp_local_var_12
    {
        global.interact = 0
        global.facing = 0
        global.flag[217] = 1
        scr_tempsave()
        self.con = 30
    }
}
if (self.room == room_cc_rurus2)
{
    if (self.con == 0)
        _temp_local_var_13 = (global.interact == 0)
    else
        _temp_local_var_13 = 0
    if _temp_local_var_13
    {
        self.cinstancecheck = 0
        if instance_exists(global.cinstance[0])
            _temp_local_var_14 = instance_exists(global.cinstance[1])
        else
            _temp_local_var_14 = 0
        if _temp_local_var_14
        {
            if (global.cinstance[0].x >= 125)
                _temp_local_var_15 = (global.cinstance[1].x >= 125)
            else
                _temp_local_var_15 = 0
            if _temp_local_var_15
                self.cinstancecheck = 1
        }
        if (obj_mainchara.x >= 125)
            _temp_local_var_16 = (self.cinstancecheck == 1)
        else
            _temp_local_var_16 = 0
        if _temp_local_var_16
        {
            with(self.flashobj)
            {
                instance_destroy()
            }
            global.interact = 1
            snd_free_all()
            snd_play(snd_impact)
            instance_create(0, 0, obj_shake)
            self.i = 0
            while(true)
            {
                if (self.i < 4)
                {
                    self.spike[self.i].image_index = 0
                    self.i = (self.i + 1)
                    continue
                }
                break
            }
            self.spikewall1 = instance_create(self.spike[0].x, self.spike[0].y, obj_soliddark)
            self.spikewall2 = instance_create(self.spike[2].x, self.spike[2].y, obj_soliddark)
            self.spikewall1.image_yscale = 2
            self.spikewall2.image_yscale = 2
            self.con = 7
            self.alarm[4] = 30
        }
    }
    if (self.con == 8)
        _temp_local_var_17 = (~ instance_exists(obj_writer))
    else
        _temp_local_var_17 = 0
    if _temp_local_var_17
    {
        snd_play(snd_rurus_appear)
        self.appear = instance_create(self.x, self.y, obj_rurus_appear)
        self.visible = 0
        self.con = 14
        self.alarm[4] = 60
    }
    if (self.con == 15)
    {
        self.visible = 1
        with(self.appear)
        {
            instance_destroy()
        }
        self.vspeed = 0
        self.con = 16
        self.alarm[4] = 21
    }
    if (self.con == 17)
    {
        global.currentsong[0] = snd_init("ruruskaado.ogg"@3998)
        global.currentsong[1] = mus_loop(global.currentsong[0])
        snd_pitch(global.currentsong[1], 1.1)
        global.fc = 18
        global.fe = 0
        global.typer = 6
        global.msg[0] = scr_84_get_lang_string("obj_rurus_event_slash_Step_0_gml_295_0"@4878)
        global.msg[1] = scr_84_get_lang_string("obj_rurus_event_slash_Step_0_gml_296_0"@4879)
        global.msg[2] = scr_84_get_lang_string("obj_rurus_event_slash_Step_0_gml_297_0"@4880)
        global.msg[3] = scr_84_get_lang_string("obj_rurus_event_slash_Step_0_gml_298_0"@4881)
        self.d = instance_create(0, 0, obj_dialoguer)
        self.d.side = 1
        self.con = 18
    }
    if (self.con == 18)
        _temp_local_var_18 = (~ d_ex())
    else
        _temp_local_var_18 = 0
    if _temp_local_var_18
    {
        snd_play(snd_power)
        self.fade = 0
        self.con = 19
        self.darkfade = scr_marker(-10, -10, spr_pixel_white)
        self.darkfade.image_xscale = 700
        self.darkfade.image_yscale = 400
        with(self.darkfade)
        {
            self.image_blend = 0xFFFFFF
            self.depth = -200
        }
    }
    if (self.con == 19)
    {
        self.fade = (self.fade + 0.1)
        self.darkfade.image_alpha = self.fade
        if (self.darkfade.image_alpha >= 1)
        {
            self.con = 20
            self.block = instance_create(340, 240, obj_pushableblock)
            self.block.event = 0
            self.tile = instance_create(260, 240, obj_blocktile)
        }
    }
    if (self.con == 20)
    {
        self.fade = (self.fade - 0.1)
        self.darkfade.image_alpha = self.fade
        if (self.fade <= 0)
        {
            with(self.darkfade)
            {
                instance_destroy()
            }
            self.con = 21
            global.msg[0] = scr_84_get_lang_string("obj_rurus_event_slash_Step_0_gml_341_0"@4882)
            self.d = instance_create(0, 0, obj_dialoguer)
            self.d.side = 1
        }
    }
    if (self.con == 21)
        _temp_local_var_19 = (~ d_ex())
    else
        _temp_local_var_19 = 0
    if _temp_local_var_19
    {
        self.interactable = instance_create(280, 160, obj_readable_room1)
        self.interactable.image_xscale = 4
        self.interactable.image_yscale = 2
        with(self.floorwall)
        {
            instance_destroy()
        }
        global.facing = 0
        with(obj_caterpillarchara)
        {
            self.fun = 0
        }
        global.interact = 0
        self.con = 25
    }
    if (self.con == 25)
    {
        if (self.block.sprite_index == spr_npc_block_solved)
            _temp_local_var_20 = (global.interact == 0)
        else
            _temp_local_var_20 = 0
        if _temp_local_var_20
        {
            snd_free_all()
            global.interact = 1
            snd_play(snd_won)
            with(self.interactable)
            {
                instance_destroy()
            }
            with(self.spikewall1)
            {
                instance_destroy()
            }
            with(self.spikewall2)
            {
                instance_destroy()
            }
            self.i = 0
            while(true)
            {
                if (self.i < 4)
                {
                    self.spike[self.i].image_index = 1
                    self.i = (self.i + 1)
                    continue
                }
                break
            }
            self.con = 26
            self.alarm[4] = 30
        }
    }
    if (self.con == 27)
    {
        global.fc = 18
        global.fe = 1
        global.typer = 6
        global.msg[0] = scr_84_get_lang_string("obj_rurus_event_slash_Step_0_gml_385_0"@4883)
        global.msg[1] = scr_84_get_lang_string("obj_rurus_event_slash_Step_0_gml_386_0"@4884)
        global.msg[2] = scr_84_get_lang_string("obj_rurus_event_slash_Step_0_gml_387_0"@4885)
        global.msg[3] = scr_84_get_lang_string("obj_rurus_event_slash_Step_0_gml_388_0"@4886)
        global.msg[4] = scr_84_get_lang_string("obj_rurus_event_slash_Step_0_gml_389_0"@4887)
        global.msg[5] = scr_84_get_lang_string("obj_rurus_event_slash_Step_0_gml_390_0"@4888)
        scr_ralface(6, 1)
        global.msg[7] = scr_84_get_lang_string("obj_rurus_event_slash_Step_0_gml_392_0"@4889)
        self.d = instance_create(0, 0, obj_dialoguer)
        self.d.side = 1
        self.con = 28
    }
    if (self.con == 28)
        _temp_local_var_21 = (~ d_ex())
    else
        _temp_local_var_21 = 0
    if _temp_local_var_21
    {
        global.fc = 18
        global.fe = 1
        global.typer = 6
        global.msg[0] = scr_84_get_lang_string("obj_rurus_event_slash_Step_0_gml_404_0"@4890)
        self.d = instance_create(0, 0, obj_dialoguer)
        self.d.side = 1
        self.hspeed = 12
        self.con = 29
    }
    if (self.con == 29)
        _temp_local_var_22 = (~ d_ex())
    else
        _temp_local_var_22 = 0
    if _temp_local_var_22
    {
        global.interact = 0
        global.facing = 0
        global.flag[218] = 1
        scr_tempsave()
        self.con = 30
    }
}
