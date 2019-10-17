if (self.con == 1)
{
    global.interact = 1
    self.sus = scr_dark_marker((obj_mainchara.x - 100), global.cinstance[1].y, spr_susier_dark)
    self.ral = scr_dark_marker((obj_mainchara.x - 50), global.cinstance[0].y, spr_ralseir)
    self.k = scr_dark_marker(obj_mainchara.x, obj_mainchara.y, spr_krisr_dark)
    with (obj_caterpillarchara)
        instance_destroy()
    with (obj_mainchara)
        self.visible = 0
    with (obj_marker)
    {
        self.hspeed = 4
        self.image_speed = 0.2
    }
    self.con = 2
    self.alarm[4] = 40
}
if (self.con == 2)
    global.interact = 1
if (self.con == 3)
{
    self.con = 4
    with (obj_marker)
        scr_halt()
    obj_mainchara.x = self.k.x
    obj_mainchara.visible = 1
    with (self.k)
        instance_destroy()
    self.alarm[4] = 30
    instance_create((self.ral.x + 20), (self.ral.y - 20), obj_excblcon)
}
if (self.con == 5)
{
    global.typer = 31
    global.fc = 2
    global.fe = 8
    global.msg[0] = scr_84_get_lang_string("obj_boxpuzzle_event_slash_Step_0_gml_39_0")
    scr_susface(1, 0)
    global.msg[2] = scr_84_get_lang_string("obj_boxpuzzle_event_slash_Step_0_gml_41_0")
    scr_ralface(3, 8)
    global.msg[4] = scr_84_get_lang_string("obj_boxpuzzle_event_slash_Step_0_gml_43_0")
    self.con = 6
    instance_create(0, 0, obj_dialoguer)
}
if ((self.con == 6) && (d_ex() == 0))
{
    with (self.sus)
        self.sprite_index = spr_susieu_dark
    global.facing = 2
    with (self.ral)
    {
        self.sprite_index = spr_ralseiu
        self.vspeed = -6
        self.image_speed = 0.25
    }
    self.con = 12
}
if (self.con == 12)
{
    global.facing = 2
    if (self.ral.y <= 100)
    {
        with (self.ral)
            scr_halt()
        with (self.ral)
            self.sprite_index = spr_ralseid
        self.con = 13
        self.alarm[4] = 10
    }
}
if (self.con == 14)
{
    global.fc = 2
    global.fe = 3
    global.typer = 31
    global.msg[0] = scr_84_get_lang_string("obj_boxpuzzle_event_slash_Step_0_gml_82_0")
    global.msg[1] = scr_84_get_lang_string("obj_boxpuzzle_event_slash_Step_0_gml_83_0")
    global.msg[2] = scr_84_get_lang_string("obj_boxpuzzle_event_slash_Step_0_gml_84_0")
    global.msg[3] = scr_84_get_lang_string("obj_boxpuzzle_event_slash_Step_0_gml_85_0")
    scr_susface(4, 2)
    global.msg[5] = scr_84_get_lang_string("obj_boxpuzzle_event_slash_Step_0_gml_87_0")
    instance_create(0, 0, obj_dialoguer)
    self.con = 5.5
}
if ((self.con == 5.5) && (d_ex() == 0))
{
    global.facing = 1
    with (self.sus)
    {
        self.sprite_index = spr_susier_dark
        self.hspeed = 12
        self.image_speed = 0.334
    }
    self.con = 6.5
}
if (self.con == 6.5)
{
    if (self.sus.x >= 480)
    {
        self.sus.vspeed = -12
        self.sus.hspeed = 0
        self.sus.sprite_index = spr_susieu_dark
        self.con = 7.5
    }
}
if (self.con == 7.5)
{
    if (self.sus.y <= 100)
    {
        with (self.sus)
            scr_halt()
        self.con = 8.5
        self.alarm[4] = 10
    }
}
if (self.con == 9.5)
{
    with (self.sus)
        self.sprite_index = spr_susied_dark
    global.typer = 30
    global.fc = 1
    global.fe = 1
    global.msg[0] = scr_84_get_lang_string("obj_boxpuzzle_event_slash_Step_0_gml_134_0")
    scr_ralface(1, 3)
    global.msg[2] = scr_84_get_lang_string("obj_boxpuzzle_event_slash_Step_0_gml_136_0")
    scr_susface(3, 2)
    global.msg[4] = scr_84_get_lang_string("obj_boxpuzzle_event_slash_Step_0_gml_138_0")
    scr_ralface(5, 8)
    global.msg[6] = scr_84_get_lang_string("obj_boxpuzzle_event_slash_Step_0_gml_140_0")
    instance_create(0, 0, obj_dialoguer)
    self.con = 15
}
if ((self.con == 15) && (d_ex() == 0))
{
    global.flag[212] = 1
    with (obj_pushableblock)
        self.event = 0
    self.sus2 = instance_create(self.sus.x, self.sus.y, obj_npc_facing)
    self.ral2 = instance_create(self.ral.x, self.ral.y, obj_npc_facing)
    with (self.sus)
        instance_destroy()
    with (self.ral)
        instance_destroy()
    global.interact = 0
    self.con = 20
    self.boxcon = 1
    self.leavecon = 1
}
if ((self.leavecon == 1) && (global.interact == 0))
{
    if (obj_mainchara.x < 70)
    {
        obj_mainchara.x = 70
        global.facing = 1
        global.interact = 1
        self.leavecon = 2
        global.typer = 30
        global.fc = 1
        global.fe = 7
        global.msg[0] = scr_84_get_lang_string("obj_boxpuzzle_event_slash_Step_0_gml_170_0")
        instance_create(0, 0, obj_dialoguer)
    }
}
if (self.leavecon == 2)
{
    if (d_ex() == 0)
    {
        self.leavecon = 1
        global.interact = 0
    }
}
if (self.con == 20)
{
    self.boxcount = 0
    self.tilecount = 0
    with (obj_pushableblock)
    {
        if (self.sprite_index == spr_npc_block_solved)
        {
            with (obj_boxpuzzle_event)
                self.boxcount += 1
        }
    }
    with (obj_blocktile)
    {
        if (self.sprite_index == spr_glowtile_on)
        {
            with (obj_boxpuzzle_event)
                self.tilecount += 1
        }
    }
    if ((self.boxcount == 0) && ((global.interact == 0) && (self.boxon == 2)))
    {
        global.fc = 2
        global.fe = 1
        global.typer = 31
        global.interact = 1
        self.boxon = 3
        global.msg[0] = scr_84_get_lang_string("obj_boxpuzzle_event_slash_Step_0_gml_207_0")
        scr_susface(1, 2)
        global.msg[2] = scr_84_get_lang_string("obj_boxpuzzle_event_slash_Step_0_gml_209_0")
        instance_create(0, 0, obj_dialoguer)
    }
    if ((self.boxcount == 1) && ((global.interact == 0) && (self.boxon == 0)))
    {
        global.fc = 2
        global.fe = 6
        global.typer = 31
        global.interact = 1
        self.boxon = 1
        global.msg[0] = scr_84_get_lang_string("obj_boxpuzzle_event_slash_Step_0_gml_220_0")
        scr_susface(1, 2)
        global.msg[2] = scr_84_get_lang_string("obj_boxpuzzle_event_slash_Step_0_gml_222_0")
        global.msg[3] = scr_84_get_lang_string("obj_boxpuzzle_event_slash_Step_0_gml_223_0")
        instance_create(0, 0, obj_dialoguer)
    }
    if ((self.boxcount >= 2) && (global.interact == 0))
    {
        self.image_index = 1
        with (self.groundblock)
            instance_destroy()
        global.interact = 1
        instance_create(0, 0, obj_shake)
        snd_play(snd_impact)
        self.con = 25
        self.alarm[4] = 30
    }
    else if ((self.tilecount == 2) && ((self.boxcount == 1) && ((global.interact == 0) && (self.boxcon == 1))))
    {
        global.interact = 1
        self.boxcon = 2
        global.fc = 2
        global.fe = 6
        global.typer = 31
        global.msg[0] = scr_84_get_lang_string("obj_boxpuzzle_event_slash_Step_0_gml_248_0")
        global.msg[1] = scr_84_get_lang_string("obj_boxpuzzle_event_slash_Step_0_gml_249_0")
        scr_susface(2, 1)
        global.msg[3] = scr_84_get_lang_string("obj_boxpuzzle_event_slash_Step_0_gml_251_0")
        global.msg[4] = scr_84_get_lang_string("obj_boxpuzzle_event_slash_Step_0_gml_252_0")
        scr_ralface(5, 1)
        global.msg[6] = scr_84_get_lang_string("obj_boxpuzzle_event_slash_Step_0_gml_254_0")
        scr_susface(7, 2)
        global.msg[8] = scr_84_get_lang_string("obj_boxpuzzle_event_slash_Step_0_gml_256_0")
        instance_create(0, 0, obj_dialoguer)
    }
}
if (self.boxcon == 2)
{
    if (d_ex() == 0)
    {
        self.boxcon = 3
        global.interact = 0
    }
}
if (self.boxon == 1)
{
    if (d_ex() == 0)
    {
        self.boxon = 2
        global.interact = 0
    }
}
if (self.boxon == 3)
{
    if (d_ex() == 0)
    {
        self.boxon = 4
        global.interact = 0
    }
}
if (self.con == 26)
{
    global.typer = 31
    global.fc = 2
    global.fe = 0
    global.msg[0] = scr_84_get_lang_string("obj_boxpuzzle_event_slash_Step_0_gml_295_0")
    scr_susface(1, 0)
    global.msg[2] = scr_84_get_lang_string("obj_boxpuzzle_event_slash_Step_0_gml_297_0")
    global.msg[3] = scr_84_get_lang_string("obj_boxpuzzle_event_slash_Step_0_gml_298_0")
    self.con = 27
    instance_create(0, 0, obj_dialoguer)
}
if (self.con == 27)
{
    if (d_ex() == 0)
    {
        global.facing = 2
        self.ral3 = scr_dark_marker(self.ral2.x, self.ral2.y, spr_ralseir)
        self.sus3 = scr_dark_marker(self.sus2.x, self.sus2.y, spr_susiel_dark)
        with (self.ral2)
            instance_destroy()
        with (self.sus2)
            instance_destroy()
        with (self.sus3)
        {
            scr_depth()
            self.hspeed = -8
            self.image_speed = 0.334
        }
        self.con = 28
    }
}
if (self.con == 28)
{
    global.interact = 1
    if ((self.sus3.x <= ((self.room_width / 2) - 20)) && (d_ex() == 0))
    {
        with (self.sus3)
        {
            self.image_speed = 0.334
            self.vspeed = -8
            self.hspeed = 0
            self.sprite_index = spr_susieu_dark
        }
        self.con = 29
        self.alarm[4] = 60
    }
}
if (self.con == 30)
{
    with (self.ral3)
        self.sprite_index = spr_ralseid
    global.typer = 31
    global.fc = 2
    global.fe = 8
    global.msg[0] = scr_84_get_lang_string("obj_boxpuzzle_event_slash_Step_0_gml_347_0")
    self.dl = instance_create(0, 0, obj_dialoguer)
    self.dl.side = 1
    self.con = 31
}
if (self.con == 31)
{
    if (d_ex() == 0)
    {
        with (self.ral3)
        {
            scr_depth()
            self.sprite_index = spr_ralseir
            self.hspeed = 6
            self.image_speed = 0.25
        }
        self.con = 32
    }
}
if (self.con == 32)
{
    if (self.ral3.x >= ((self.room_width / 2) - 20))
    {
        with (self.ral3)
        {
            self.vspeed = -6
            self.hspeed = 0
            self.sprite_index = spr_ralseiu
        }
        self.con = 33
        self.alarm[4] = 30
    }
}
if (self.con == 34)
{
    with (obj_pushableblock)
        self.event = 1
    self.con = 35
    scr_tempsave()
    if (global.plot < 50)
        global.plot = 50
    global.facing = 0
    global.interact = 0
    self.leavecon = 0
}
if (self.con == 50)
{
    if (d_ex() == 0)
    {
        self.con = 51
        global.interact = 1
        self.fade = instance_create(0, 0, obj_fadeout)
        self.alarm[4] = 30
    }
}
if (self.con == 52)
{
    instance_create(290, 200, obj_npc_room)
    instance_create(460, 370, obj_npc_room)
    self.ral3 = scr_dark_marker(self.ral2.x, self.ral2.y, spr_ralseir)
    with (self.ral3)
        scr_depth()
    with (self.ral2)
        instance_destroy()
    self.sus3 = scr_dark_marker(((self.room_width / 2) - 22), self.sus2.y, spr_susied_dark)
    with (self.sus3)
        scr_depth()
    with (self.sus2)
        instance_destroy()
    snd_play(snd_impact)
    self.con = 53
    self.alarm[4] = 30
}
if (self.con == 54)
{
    self.image_index = 2
    with (self.groundblock)
        instance_destroy()
    with (obj_pushableblock)
        instance_destroy()
    with (self.fade)
        instance_destroy()
    global.facing = 2
    instance_create(0, 0, obj_fadein)
    self.con = 55
    self.alarm[4] = 50
}
if (self.con == 56)
{
    global.msg[0] = scr_84_get_lang_string("obj_boxpuzzle_event_slash_Step_0_gml_437_0")
    self.dl = instance_create(0, 0, obj_dialoguer)
    self.dl.side = 1
    global.interact = 1
    self.con = 28
}
