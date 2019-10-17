if (self.con > 0)
{
    if (self.con == 2)
    {
        self.persistent = 1
        __view_set(9, 0, -4)
        with (self.k)
        {
            self.fun = 1
            self.cutscene = 1
        }
        with (self.t)
            self.sprite_index = spr_toriel_u
        global.fc = 4
        global.fe = 2
        global.typer = 7
        global.msg[0] = scr_84_get_lang_string("obj_carcutscene_slash_Step_0_gml_17_0")
        self.dd = instance_create(0, 0, obj_dialoguer)
        self.dd.side = 0
        self.con = 3
    }
    if ((self.con == 3) && (instance_exists(obj_dialoguer) == 0))
    {
        mus_play(global.currentsong[0])
        self.alarm[5] = 20
        with (self.t)
        {
            self.image_speed = 0
            self.image_index = 0
        }
        scr_pan(0, 1, 60)
        self.con = 2.1
        self.alarm[4] = 40
        with (self.k)
        {
            self.sprite_index = spr_krisl
            self.image_speed = 0.25
            self.hspeed = -1
        }
    }
    if (self.con == 3.1)
    {
        with (self.t)
            self.sprite_index = spr_toriel_l
        with (self.k)
            scr_halt()
        with (self.k)
        {
            self.sprite_index = spr_krisd
            self.vspeed = 1
            self.image_speed = 0.2
        }
        self.con = 4
        self.alarm[4] = 60
    }
    if (self.con == 5)
    {
        with (self.t)
            self.sprite_index = spr_toriel_l
        with (self.k)
        {
            scr_halt()
            self.sprite_index = spr_krisr
        }
        self.con = 8
        self.alarm[4] = 40
    }
    if (self.con == 9)
    {
        with (self.c)
            self.depth = 6000
        with (self.t)
        {
            self.hspeed = -1
            self.image_speed = 0.2
        }
        with (self.k)
        {
            self.sprite_index = spr_krisr
            self.hspeed = 1
            self.vspeed = 0
            self.image_speed = 0.2
        }
        self.con = 10
        self.alarm[4] = 32
    }
    if (self.con == 11)
    {
        self.con = 12
        self.alarm[4] = 30
        self.ckx = (self.c.x - self.k.x)
        self.cky = (self.c.y - self.k.y)
        self.ctx = (self.c.x - self.t.x)
        self.cty = (self.c.y - self.t.y)
        with (self.t)
            self.visible = 0
        with (self.k)
            self.visible = 0
    }
    if (self.con == 13)
    {
        with (self.c)
        {
            self.sprite_index = spr_torcar_l
            self.hspeed = 1
            self.image_speed = 0.25
        }
        self.con = 14
        self.alarm[4] = 80
    }
    if (self.con == 15)
    {
        with (self.c)
            scr_halt()
        self.con = 16
        self.alarm[4] = 30
    }
    if (self.con == 17)
    {
        with (self.c)
        {
            self.hspeed = -1
            self.image_speed = 0.25
        }
        self.con = 18
        self.alarm[4] = 80
    }
    if (self.con == 19)
    {
        scr_pan(0, 0.5, 100)
        with (self.c)
        {
            self.sprite_index = spr_torcar_d
            self.hspeed = 0
            self.vspeed = 2
        }
        self.fade = instance_create(0, 0, obj_fadeout)
        self.fade.depth = 4000
        self.fade.height = 400
        self.fade.fadespeed = 0.01
        self.con = 20
        self.alarm[4] = 190
    }
    if (self.con == 21)
    {
        self.fade = instance_create(0, 0, obj_fadeout)
        self.fade.depth = -200
        self.fade.height = 400
        self.fade.fadespeed = 0.025
        self.fade.image_blend = 0x00FFFFFF
        self.con = 22
        self.alarm[4] = 45
    }
    if (self.con == 23.1)
    {
        self.car = scr_marker(390, 0, spr_torcar_d)
        with (self.car)
        {
            scr_depth()
            self.image_speed = 0.25
            self.vspeed = 3
        }
        __view_set(9, 0, -4)
        with (obj_mainchara)
        {
            self.visible = 0
            self.cutscene = 1
        }
        __view_set(0, 0, 180)
        scr_pan(2.5, 0, 900)
        global.interact = 1
        self.con = 24
        self.alarm[4] = (140 / self.car.vspeed)
        self.carcon = 1
        with (obj_npc_room)
            instance_destroy()
        self.catty = scr_marker(486, 68, spr_npc_catty)
        self.cattydad = scr_marker(574, 64, spr_npc_cattydad)
        self.bratty = scr_marker(744, 174, spr_npc_bratty)
        self.froggit = scr_marker(800, 114, spr_npc_froggit)
        with (self.froggit)
        {
            scr_depth()
            self.image_speed = 0.2
        }
        with (self.catty)
            scr_depth()
        with (self.cattydad)
            scr_depth()
        with (self.bratty)
            scr_depth()
    }
    if (self.con == 23)
    {
        with (obj_writer)
            instance_destroy()
        self.fade2 = instance_create(0, 0, obj_persistentfadein)
        self.fade2.image_blend = 0x00FFFFFF
        self.con = 23.1
        room_goto(room_town_north)
    }
    if (self.carcon == 1)
    {
        if (self.car.y >= 100)
        {
            with (self.catty)
            {
                self.sprite_index = spr_npc_catty_wave
                self.image_speed = 0.2
            }
        }
        if (self.car.x >= 550)
        {
            with (self.cattydad)
            {
                self.sprite_index = spr_npc_cattydad_wave
                self.image_speed = 0.2
            }
        }
    }
    if (self.con == 24)
        global.interact = 1
    if (self.con == 25)
    {
        with (self.car)
        {
            self.sprite_index = spr_torcar_r
            self.vspeed = 0
            self.hspeed = 3
        }
        self.con = 26
        self.alarm[4] = (240 / self.car.hspeed)
    }
    if (self.con == 27)
    {
        with (self.car)
        {
            self.sprite_index = spr_torcar_d
            self.hspeed = 0
            self.vspeed = 3
        }
        self.carcon = 0
        self.con = 133
        instance_create(0, 0, obj_fadeout)
        self.alarm[4] = 30
    }
    if (self.con == 130)
    {
        self.car = scr_marker(790, -60, spr_torcar_d)
        with (self.car)
        {
            scr_depth()
            self.image_speed = 0.25
            self.vspeed = 3
        }
        __view_set(9, 0, -4)
        with (obj_mainchara)
        {
            self.visible = 0
            self.cutscene = 1
        }
        __view_set(0, 0, 670)
        global.interact = 1
        self.con = 131
        self.alarm[4] = (200 / self.car.vspeed)
    }
    if (self.con == 29)
    {
        instance_create(0, 0, obj_persistentfadein)
        room_goto(room_town_mid)
        self.con = 130
    }
    if (self.con == 131)
        global.interact = 1
    if (self.con == 132)
    {
        instance_create(0, 0, obj_fadeout)
        self.alarm[4] = 30
        self.con = 133
    }
    if (self.con == 140)
    {
        self.car = scr_marker(810, 0, spr_torcar_d)
        with (self.car)
        {
            scr_depth()
            self.image_speed = 0.25
            self.vspeed = 3
        }
        with (obj_npc_room)
            instance_destroy()
        with (obj_npc_facing)
            instance_destroy()
        __view_set(9, 0, -4)
        with (obj_mainchara)
        {
            self.visible = 0
            self.cutscene = 1
        }
        __view_set(0, 0, 660)
        scr_pan(2, 0, 300)
        global.interact = 1
        self.con = 141
        self.alarm[4] = (140 / self.car.vspeed)
        self.carcon = 2
        self.qc = scr_marker(764, 85, spr_npc_qc_stand)
        self.undyne = scr_marker(905, 80, spr_undyne_dt)
        self.bear = scr_marker(710, 82, spr_npc_politicsbear)
        with (self.bear)
            scr_depth()
        with (self.qc)
            scr_depth()
        with (self.undyne)
            scr_depth()
    }
    if (self.con == 134)
    {
        instance_create(0, 0, obj_persistentfadein)
        room_goto(room_town_south)
        self.con = 140
    }
    if (self.carcon == 2)
    {
        if (self.car.y >= 100)
        {
            with (self.qc)
            {
                self.sprite_index = spr_npc_qc_wave
                self.image_speed = 0.2
            }
            with (self.undyne)
            {
                self.sprite_index = spr_undyne_d_wave
                self.image_speed = 0.2
            }
        }
        if (self.car.x >= 1000)
        {
        }
    }
    if (self.con == 141)
        global.interact = 1
    if (self.con == 142)
    {
        with (self.car)
        {
            self.vspeed = 0
            self.hspeed = 3
            self.sprite_index = spr_torcar_r
        }
        self.con = 143
        self.alarm[4] = (260 / self.car.hspeed)
    }
    if (self.con == 144)
    {
        self.carcon = 0
        instance_create(0, 0, obj_fadeout)
        self.alarm[4] = 30
        self.con = 145
    }
    if (self.con == 161)
    {
        self.car = scr_marker(0, 220, spr_torcar_r)
        with (self.car)
        {
            scr_depth()
            self.image_speed = 0.25
            self.hspeed = 2
        }
        __view_set(9, 0, -4)
        with (obj_mainchara)
        {
            self.visible = 0
            self.cutscene = 1
        }
        __view_set(0, 0, 0)
        __view_set(1, 0, (self.room_height - __view_get(3, 0)))
        global.interact = 1
        self.con = 162
        scr_pan(1, 0, 100)
        self.alarm[4] = (240 / self.car.hspeed)
    }
    if (self.con == 146)
    {
        instance_create(0, 0, obj_persistentfadein)
        room_goto(room_town_school)
        self.con = 161
    }
    if (self.con == 162)
        global.interact = 1
    if (self.con == 163)
    {
        with (self.car)
        {
            self.vspeed = -2
            self.hspeed = 0
            self.sprite_index = spr_torcar_u
        }
        self.con = 164
        self.alarm[4] = 30
    }
    if (self.con == 165)
    {
        with (self.car)
            scr_halt()
        self.con = 36
        self.alarm[4] = 30
    }
    if (self.con == 37)
    {
        self.v = 0
        with (self.car)
        {
            self.speed = 0
            self.image_speed = 0
        }
        self.con = 38
        self.alarm[4] = 15
    }
    if (self.con == 39)
    {
        scr_pan(1, -0.334, 100)
        with (self.car)
            self.depth = 500
        self.k = scr_marker(((self.car.x - self.ctx) + 10), (self.car.y - self.cty), spr_krisr)
        self.t = scr_marker((self.car.x - self.ckx), (self.car.y - self.cky), spr_toriel_l)
        with (self.k)
        {
            self.depth = 50000
            self.visible = 1
            self.image_speed = 0.2
            self.sprite_index = spr_krisr
            self.hspeed = 1
        }
        with (self.t)
        {
            self.image_speed = 0.2
            self.depth = 50000
            self.visible = 1
            self.sprite_index = spr_toriel_l
            self.hspeed = -1
        }
        self.con = 40
        self.alarm[4] = 30
    }
    if (self.con == 41)
    {
        with (self.car)
            self.depth = 600000
        with (self.k)
        {
            self.speed = 0
            self.sprite_index = spr_krisd
            self.image_index = 0
            self.image_speed = 0
        }
        with (self.t)
        {
            self.vspeed = 2
            self.hspeed = 0
            self.depth = 10000
            self.sprite_index = spr_toriel_d
            self.image_speed = 0.25
        }
        self.con = 42
        self.alarm[4] = 15
    }
    if (self.con == 43)
    {
        with (self.t)
        {
            self.sprite_index = spr_toriel_r
            self.vspeed = 0
            self.hspeed = 2
        }
        self.con = 44
        self.alarm[4] = 51
    }
    if (self.con == 45)
    {
        with (self.k)
            self.sprite_index = spr_krisr
        with (self.t)
        {
            self.hspeed = 0
            self.vspeed = -2
            self.sprite_index = spr_toriel_u
        }
        self.con = 46
        self.alarm[4] = 22
    }
    if (self.con == 47)
    {
        with (self.t)
        {
            self.speed = 0
            self.sprite_index = spr_toriel_l
            self.image_speed = 0
            self.image_index = 0
        }
        self.con = 48
        self.alarm[4] = 30
    }
    if (self.con == 49)
    {
        with (self.k)
            self.visible = 0
        with (self.t)
            self.sprite_index = spr_toriel_handhold_r
        self.con = 50
        self.alarm[4] = 30
    }
    if (self.con == 51)
    {
        with (self.t)
        {
            self.hspeed = 1
            self.image_speed = 0.1
        }
        self.con = 52
        self.alarm[4] = 44
    }
    if (self.con == 53)
    {
        scr_pan(0, -0.5, 999)
        with (self.t)
        {
            self.vspeed = -0.25
            self.hspeed = 0
            self.sprite_index = spr_toriel_handhold_u
        }
        self.fade = instance_create(0, 0, obj_fadeout)
        with (self.fade)
            self.fadespeed = 0.03
        self.con = 56
        self.persistent = 0
        self.alarm[4] = 40
    }
    if (self.con == 55)
        self.alarm[4] = 40
    if (self.con == 56)
        self.fade.y = 0
    if (self.con == 57)
    {
        self.pf = instance_create(0, 0, obj_persistentfadein)
        with (self.pf)
            self.image_alpha = 1.2
        room_goto(room_schoollobby)
    }
}
