if ((self.con > 0) && (self.con < 50))
{
    if (self.con == 1)
    {
        global.interact = 1
        self.con = 1.1
        self.alarm[4] = 30
    }
    if (self.con == 1.1)
        global.interact = 1
    if (self.con == 2.1)
    {
        global.facing = 2
        self.k = scr_marker(obj_mainchara.x, obj_mainchara.y, spr_krisu)
        with (self.k)
        {
            self.vspeed = -1
            self.image_speed = 0.1
        }
        obj_mainchara.visible = 0
        self.con = 1.2
        self.alarm[4] = 70
    }
    if (self.con == 2.2)
    {
        obj_mainchara.y = self.k.y
        obj_mainchara.visible = 1
        with (self.k)
            instance_destroy()
        self.con = 2
        self.alarm[4] = 30
    }
    if (self.con == 3)
    {
        global.fc = 0
        global.typer = 18
        global.msg[0] = scr_84_get_lang_string("obj_flowershop_event_slash_Step_0_gml_44_0")
        global.msg[1] = scr_84_get_lang_string("obj_flowershop_event_slash_Step_0_gml_45_0")
        global.msg[2] = scr_84_get_lang_string("obj_flowershop_event_slash_Step_0_gml_46_0")
        global.msg[3] = scr_84_get_lang_string("obj_flowershop_event_slash_Step_0_gml_47_0")
        self.con = 4
        instance_create(0, 0, obj_dialoguer)
    }
    if ((self.con == 4) && (!d_ex()))
    {
        self.image_speed = 0.25
        self.con = 5
        self.alarm[4] = 30
    }
    if (self.con == 6)
    {
        self.image_speed = 0.05
        self.image_index = 0
        self.con = 7
        self.alarm[4] = 10
    }
    if (self.con == 8)
    {
        global.msg[0] = scr_84_get_lang_string("obj_flowershop_event_slash_Step_0_gml_69_0")
        instance_create(0, 0, obj_dialoguer)
        self.con = 9
    }
    if ((self.con == 9) && (d_ex() == 0))
    {
        self.con = 10
        self.alarm[4] = 20
    }
    if (self.con == 11)
    {
        scr_halt()
        self.sprite_index = spr_asgorer
        self.con = 11.1
        self.alarm[4] = 20
    }
    if (self.con == 12.1)
    {
        self.sprite_index = spr_asgored
        self.con = 13
        self.alarm[4] = 20
    }
    if (self.con == 14)
    {
        global.fc = 10
        global.fe = 1
        global.msc = 0
        global.msg[0] = scr_84_get_lang_string("obj_flowershop_event_slash_Step_0_gml_100_0")
        instance_create(0, 0, obj_dialoguer)
        self.con = 15
    }
    if ((self.con == 15) && (!d_ex()))
    {
        self.exc = instance_create((self.x + 25), (self.y - 2), obj_excblcon)
        snd_play(snd_b)
        self.con = 16
        self.alarm[4] = 30
    }
    if (self.con == 17)
    {
        global.fe = 4
        global.msg[0] = scr_84_get_lang_string("obj_flowershop_event_slash_Step_0_gml_116_0")
        self.con = 18
        instance_create(0, 0, obj_dialoguer)
    }
    if ((self.con == 18) && (d_ex() == 0))
    {
        self.sprite_index = spr_asgored
        self.image_speed = 0.334
        self.vspeed = 4
        self.con = 19
    }
    if (self.con == 19)
    {
        if (self.y >= (obj_mainchara.y - 26))
        {
            self.vspeed = 0
            self.y = (obj_mainchara.y - 26)
            obj_mainchara.visible = 0
            self.image_index = 0
            self.image_speed = 0.25
            self.sprite_index = spr_asgore_hug
            self.con = 20
            self.alarm[4] = 68
        }
    }
    if (self.con == 21)
    {
        obj_mainchara.visible = 1
        self.sprite_index = spr_asgored
        self.vspeed = -2
        self.image_speed = 0.2
        self.image_index = 0
        self.con = 21.1
        self.alarm[4] = 10
    }
    if (self.con == 22.1)
    {
        self.vspeed = 0
        self.image_index = 0
        self.image_speed = 0
        self.con = 22
        self.alarm[4] = 20
    }
    if (self.con == 23)
    {
        self.vspeed = 0
        self.image_index = 0
        self.image_speed = 0
        global.fe = 2
        global.msg[0] = scr_84_get_lang_string("obj_flowershop_event_slash_Step_0_gml_171_0")
        global.msg[1] = scr_84_get_lang_string("obj_flowershop_event_slash_Step_0_gml_172_0")
        instance_create(0, 0, obj_dialoguer)
        self.con = 24
    }
    if ((self.con == 24) && (!d_ex()))
    {
        self.sprite_index = spr_asgorer
        self.con = 25
        self.alarm[4] = 15
    }
    if (self.con == 26)
    {
        self.sprite_index = spr_asgoreu
        self.image_speed = 0.25
        self.vspeed = -3
        self.con = 27
    }
    if (self.con == 27)
    {
        if (self.y <= 27)
        {
            self.y = 27
            self.vspeed = 0
            self.image_speed = 0
            self.image_index = 0
            self.con = 28
            self.alarm[4] = 15
        }
    }
    if (self.con == 29)
    {
        self.sprite_index = spr_asgorer
        self.con = 30
        self.alarm[4] = 15
    }
    if (self.con == 31)
    {
        self.sprite_index = spr_asgored
        global.fe = 1
        global.msg[0] = scr_84_get_lang_string("obj_flowershop_event_slash_Step_0_gml_216_0")
        global.msg[1] = scr_84_get_lang_string("obj_flowershop_event_slash_Step_0_gml_217_0")
        instance_create(0, 0, obj_dialoguer)
        self.con = 32
    }
    if ((self.con == 32) && (!d_ex()))
    {
        global.interact = 0
        self.visible = 0
        self.asg = instance_create(self.x, (self.y + self.sprite_height), obj_npc_facing)
        self.con = 50
        global.flag[262] = 1
    }
}
if (self.con >= 50)
{
    if (self.con == 50)
    {
        if ((obj_mainchara.y >= 180) && (global.interact == 0))
        {
            with (obj_npc_facing)
                instance_destroy()
            self.sprite_index = spr_asgored
            self.visible = 1
            global.interact = 1
            obj_mainchara.y = 180
            self.con = 50.1
            self.alarm[4] = 30
            self.exc = instance_create((self.x + 25), (self.y - 2), obj_excblcon)
            snd_play(snd_b)
        }
    }
    if (self.con == 51.1)
    {
        global.facing = 2
        global.typer = 18
        global.fc = 10
        global.fe = 2
        global.msg[0] = scr_84_get_lang_string("obj_flowershop_event_slash_Step_0_gml_260_0")
        self.con = 52
        instance_create(0, 0, obj_dialoguer)
    }
    if ((self.con == 52) && (!d_ex()))
    {
        self.con = 53
        self.alarm[4] = 10
    }
    if (self.con == 54)
    {
        self.sprite_index = spr_asgored
        self.image_speed = 0.2
        self.vspeed = 2
        self.con = 55
    }
    if (self.con == 55)
    {
        if (self.y >= (obj_mainchara.y - 34))
        {
            self.vspeed = 0
            self.y = (obj_mainchara.y - 34)
            self.image_index = 0
            self.image_speed = 0
            self.con = 57
            self.alarm[4] = 20
        }
    }
    if (self.con == 58)
    {
        global.fe = 6
        global.msg[0] = scr_84_get_lang_string("obj_flowershop_event_slash_Step_0_gml_297_0")
        scr_noface(1)
        global.writersnd[0] = 97
        global.msg[2] = scr_84_get_lang_string("obj_flowershop_event_slash_Step_0_gml_300_0")
        global.flag[262] = 2
        scr_litemget(4)
        instance_create(0, 0, obj_dialoguer)
        self.con = 59
    }
    if ((self.con == 59) && (!d_ex()))
    {
        self.vspeed = -3
        self.image_speed = 0.25
        self.con = 60
    }
    if ((self.con == 60) && (self.y <= self.ystart))
    {
        self.y = self.ystart
        scr_halt()
        self.con = 61
        self.alarm[4] = 10
    }
    if (self.con == 62)
    {
        global.typer = 18
        global.fc = 10
        global.fe = 0
        global.msg[0] = scr_84_get_lang_string("obj_flowershop_event_slash_Step_0_gml_327_0")
        instance_create(0, 0, obj_dialoguer)
        self.con = 63
    }
    if ((self.con == 63) && (!d_ex()))
    {
        self.asg = instance_create(self.x, (self.y + self.sprite_height), obj_npc_facing)
        global.interact = 0
        self.visible = 0
        self.con = 70
    }
}
if instance_exists(obj_mainchara)
    global.flag[264] = obj_mainchara.x
