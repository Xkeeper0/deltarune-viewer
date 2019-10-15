if (self.con == 1)
{
    with(obj_mainchara)
    {
        self.visible = 0
    }
    self.k = scr_dark_marker(0, obj_mainchara.y, spr_krisr_dark)
    with(self.k)
    {
        self.hspeed = 12
        self.image_speed = 0.334
    }
    self.s = scr_dark_marker(340, (obj_mainchara.y - 10), spr_susied_dark_unhappy)
    self.con = 2
    self.alarm[4] = 22
}
if (self.con == 3)
{
    global.interact = 1
    with(self.k)
    {
        scr_halt()
    }
    with(self.s)
    {
        self.sprite_index = spr_susiel_dark_unhappy
    }
    global.typer = 30
    global.fc = 1
    global.fe = 9
    global.msg[0] = scr_84_get_lang_string("obj_lancerslideevent_slash_Step_0_gml_34_0"@5242)
    instance_create(0, 0, obj_dialoguer)
    self.con = 4
}
if (self.con == 4)
    _temp_local_var_1 = (d_ex() == 0)
else
    _temp_local_var_1 = 0
if _temp_local_var_1
{
    snd_play(snd_noise)
    with(self.s)
    {
        self.sprite_index = spr_susied_dark_unhappy
        self.image_speed = 0.334
        self.vspeed = 20
    }
    with(self.k)
    {
        self.sprite_index = spr_krisd_dark
    }
    self.con = 5
    self.alarm[4] = 30
}
if (self.con == 6)
{
    with(self.k)
    {
        self.vspeed = 4
        self.image_speed = 0.2
    }
    self.con = 7
    self.alarm[4] = 10
}
if (self.con == 8)
{
    snd_play(snd_noise)
    obj_mainchara.x = self.k.x
    obj_mainchara.y = self.k.y
    self.alarm[1] = 1
    self.slidesfx = snd_loop(snd_paper_surf)
    with(obj_mainchara)
    {
        self.cutscene = 1
        self.visible = 1
        self.vspeed = 20
        self.fun = 1
        self.sprite_index = spr_krisd_slide
        self.autorun = 2
    }
    if (self.seiz == 1)
    {
        with(obj_mainchara)
        {
            self.vspeed = 10
        }
    }
    with(self.k)
    {
        instance_destroy()
    }
    self.cameracon = 1
    self.con = 9
}
if (self.cameracon == 1)
{
    if (__view_get(e__VW.YView, 0) < 880)
    {
        if (self.seiz == 0)
            __view_set(e__VW.YView, 0, (__view_get(e__VW.YView, 0) + 20))
        else
            __view_set(e__VW.YView, 0, (__view_get(e__VW.YView, 0) + 10))
    }
    else
    {
        with(obj_mainchara)
        {
            self.vspeed = 0
        }
        global.interact = 0
        instance_create(0, 0, obj_overworld_spademaker)
        self.block1 = instance_create(0, (__view_get(e__VW.YView, 0) + 40), obj_soliddark)
        with(self.block1)
        {
            self.image_xscale = 40
        }
        self.block2 = instance_create(0, (__view_get(e__VW.YView, 0) + 440), obj_soliddark)
        with(self.block2)
        {
            self.image_xscale = 40
        }
        self.w[0] = instance_create(70, 2280, obj_wobblything_slide)
        self.w[1] = instance_create(550, 1560, obj_wobblything_slide)
        self.w[2] = instance_create(70, 1800, obj_wobblything_slide)
        self.w[3] = instance_create(550, 2040, obj_wobblything_slide)
        if self.seiz
        {
            with(obj_wobblything_slide)
            {
                self.vspeed = -10
            }
        }
        self.cameracon = 2
        self.shifted = 0
    }
}
if (self.cameracon == 2)
{
    self.slidetimer = (self.slidetimer + 1)
    if (self.seiz == 0)
    {
        tile_layer_shift(1000000, 0, -20)
        self.shifted = (self.shifted - 20)
    }
    else
    {
        tile_layer_shift(1000000, 0, -10)
        self.shifted = (self.shifted - 10)
    }
    if (self.shifted <= -480)
    {
        tile_layer_shift(1000000, 0, 480)
        self.shifted = (self.shifted + 480)
    }
    if (global.inv == 1)
        _temp_local_var_2 = (self.slidetimer <= 390)
    else
        _temp_local_var_2 = 0
    if _temp_local_var_2
        self.slidetimer = (self.slidetimer - 10)
    if (self.slidetimer == 390)
    {
        snd_volume(global.currentsong[1], 0, 120)
        snd_volume(self.slidesfx, 0, 120)
        with(obj_overworld_spademaker)
        {
            self.alarm[0] = -40
        }
        with(obj_overworld_spade)
        {
            self.gravity = -0.4
            self.active = 0
        }
        self.fo = instance_create(0, 0, obj_fadeout)
        with(self.fo)
        {
            self.image_blend = 0xFFFFFF
            self.fadespeed = 0.01
        }
    }
    if (self.slidetimer == 540)
    {
        snd_stop(self.slidesfx)
        snd_free(global.currentsong[0])
        global.interact = 1
        room_goto_next()
    }
}
