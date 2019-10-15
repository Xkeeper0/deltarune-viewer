if (global.monster[self.myself] == 1)
{
    if (global.mnfight == 1)
        _temp_local_var_1 = (self.talked == 0)
    else
        _temp_local_var_1 = 0
    if _temp_local_var_1
    {
        if (global.mercymod[self.myself] < 100)
            scr_randomtarget()
        if (~ instance_exists(obj_darkener))
            instance_create(0, 0, obj_darkener)
        global.typer = 50
        global.msg[0] = " "@24
        self.g = scr_enemyblcon((self.x - 160), self.y, 3)
        with(self.g.mywriter)
        {
            instance_destroy()
        }
        with(self.g)
        {
            instance_destroy()
        }
        self.talked = 1
        self.talktimer = 0
    }
    if (self.talked == 1)
        _temp_local_var_2 = (global.mnfight == 1)
    else
        _temp_local_var_2 = 0
    if _temp_local_var_2
    {
        self.rtimer = 0
        scr_blconskip(5)
        if (global.mnfight == 2)
        {
            if (~ instance_exists(obj_moveheart))
                scr_moveheart()
            if (~ instance_exists(obj_growtangle))
                instance_create((__view_get(e__VW.XView, 0) + 320), (__view_get(e__VW.YView, 0) + 170), obj_growtangle)
        }
    }
    if (global.mnfight == 2)
        _temp_local_var_3 = (self.attacked == 0)
    else
        _temp_local_var_3 = 0
    if _temp_local_var_3
    {
        self.rtimer = (self.rtimer + 1)
        if (self.rtimer == 12)
        {
            global.turntimer = 150
            self.pontotal = scr_monsterpop()
            self.i = 0
            while(true)
            {
                if (self.i < 3)
                {
                    if (global.monster[self.i] == 1)
                        _temp_local_var_4 = (global.mercymod[self.i] >= 100)
                    else
                        _temp_local_var_4 = 0
                    if _temp_local_var_4
                        self.pontotal = (self.pontotal - 1)
                    self.i = (self.i + 1)
                    continue
                }
                break
            }
            if (self.pontotal == 3)
                self.maxshot = 3
            if (self.pontotal == 2)
                self.maxshot = 4
            if (self.pontotal == 1)
                self.maxshot = 5
            if (self.pontotal <= 0)
            {
                global.turntimer = 10
                self.maxshot = 6
            }
            self.shotcount = 0
            self.totalshotcount = 0
            self.activetimer = 1
            self.shotbuffer = 8
            if (global.mercymod[self.myself] < 100)
                self.eyecon = 20
            self.turns = (self.turns + 1)
            self.attacked = 1
            global.typer = 6
            global.fc = 0
            self.rr = choose(0, 1, 2, 3, 4)
            if (self.rr == 0)
                global.battlemsg[0] = scr_84_get_lang_string("obj_ponman_enemy_slash_Step_0_gml_64_0"@8344)
            if (self.rr == 1)
                global.battlemsg[0] = scr_84_get_lang_string("obj_ponman_enemy_slash_Step_0_gml_65_0"@8345)
            if (self.rr == 2)
                global.battlemsg[0] = scr_84_get_lang_string("obj_ponman_enemy_slash_Step_0_gml_66_0"@8346)
            if (self.rr == 3)
                global.battlemsg[0] = scr_84_get_lang_string("obj_ponman_enemy_slash_Step_0_gml_67_0"@8347)
            if (self.rr == 4)
                global.battlemsg[0] = scr_84_get_lang_string("obj_ponman_enemy_slash_Step_0_gml_68_0"@8348)
            if (global.monsterstatus[self.myself] == 1)
                global.battlemsg[0] = scr_84_get_lang_string("obj_ponman_enemy_slash_Step_0_gml_69_0"@8349)
            if (global.monsterhp[self.myself] <= (global.monstermaxhp[self.myself] / 3))
                global.battlemsg[0] = scr_84_get_lang_string("obj_ponman_enemy_slash_Step_0_gml_70_0"@8350)
            if (global.mercymod[self.myself] >= global.mercymax[self.myself])
                global.msg[0] = scr_84_get_lang_string("obj_ponman_enemy_slash_Step_0_gml_71_0"@8351)
            if (global.monstercomment[self.myself] == scr_84_get_lang_string("obj_ponman_enemy_slash_Step_0_gml_72_0"@8352))
                global.msg[0] = scr_84_get_lang_string("obj_ponman_enemy_slash_Step_0_gml_72_1"@8353)
        }
        else
            global.turntimer = 120
    }
    if (global.mnfight == 2)
    {
        if (global.turntimer <= 1)
        {
            if (self.battlecancel == 1)
                scr_mercyadd(self.myself, 100)
            if (self.battlecancel == 2)
            {
                with(obj_battlecontroller)
                {
                    self.noreturn = 1
                }
                self.con = 1
                self.battlecancel = 3
            }
        }
    }
}
if (global.myfight == 3)
{
    self.xx = __view_get(e__VW.XView, 0)
    self.yy = __view_get(e__VW.YView, 0)
    if (self.acting == 1)
        _temp_local_var_6 = (self.actcon == 0)
    else
        _temp_local_var_6 = 0
    if _temp_local_var_6
    {
        self.actcon = 1
        global.msg[0] = scr_84_get_lang_string("obj_ponman_enemy_slash_Step_0_gml_106_0"@8354)
        scr_battletext_default()
    }
    if (self.acting == 2)
        _temp_local_var_7 = (self.actcon == 0)
    else
        _temp_local_var_7 = 0
    if _temp_local_var_7
    {
        global.msg[0] = scr_84_get_lang_string("obj_ponman_enemy_slash_Step_0_gml_114_0"@8355)
        self.sleeping = 1
        scr_mercyadd(self.myself, 100)
        scr_battletext_default()
        self.actcon = 1
    }
    if (self.acting == 3)
        _temp_local_var_8 = (self.actcon == 0)
    else
        _temp_local_var_8 = 0
    if _temp_local_var_8
    {
        snd_pause(global.batmusic[1])
        if (self.lullabied == 0)
        {
            self.singy = snd_play(snd_ralseising1)
            with(self.object_index)
            {
                self.lullabied = 1
            }
        }
        else
        {
            self.singy = snd_play(snd_ralseising2)
            with(self.object_index)
            {
                self.lullabied = 0
            }
        }
        global.msg[0] = scr_84_get_lang_string("obj_ponman_enemy_slash_Step_0_gml_134_0"@8357)
        with(obj_heroralsei)
        {
            self.visible = 0
        }
        self.ralsing = scr_dark_marker(obj_heroralsei.x, obj_heroralsei.y, spr_ralseib_sing)
        with(self.ralsing)
        {
            self.image_speed = 0.2
        }
        self.lullatimer = 0
        scr_battletext_default()
        self.actcon = 10
    }
    if (self.acting == 4)
        _temp_local_var_9 = (self.actcon == 0)
    else
        _temp_local_var_9 = 0
    if _temp_local_var_9
    {
        self.actcon = 1
        global.msg[0] = scr_84_get_lang_string("obj_ponman_enemy_slash_Step_0_gml_150_0"@8360)
        if (scr_monsterpop() > 1)
            global.msg[0] = scr_84_get_lang_string("obj_ponman_enemy_slash_Step_0_gml_152_0"@8361)
        self.i = 0
        while(true)
        {
            if (self.i < 3)
            {
                global.monstercomment[self.i] = scr_84_get_lang_string("obj_ponman_enemy_slash_Step_0_gml_155_0"@8362)
                global.automiss[self.i] = 1
                self.i = (self.i + 1)
                continue
            }
            break
        }
        scr_battletext_default()
    }
    if (self.actcon == 1)
        _temp_local_var_10 = (~ instance_exists(obj_writer))
    else
        _temp_local_var_10 = 0
    if _temp_local_var_10
    {
        self.actcon = 0
        scr_attackphase()
    }
    if (self.actcon == 10)
    {
        self.lullatimer = (self.lullatimer + 1)
        if (self.lullatimer >= 30)
            self.actcon = 11
    }
    if (self.actcon == 11)
        _temp_local_var_11 = (instance_exists(obj_writer) == 0)
    else
        _temp_local_var_11 = 0
    if _temp_local_var_11
    {
        with(self.ralsing)
        {
            instance_destroy()
        }
        with(obj_heroralsei)
        {
            self.visible = 1
        }
        snd_stop(self.singy)
        snd_resume(global.batmusic[1])
        global.msg[0] = scr_84_get_lang_string("obj_ponman_enemy_slash_Step_0_gml_186_0"@8363)
        if (scr_monsterpop() > 1)
            _temp_local_var_12 = scr_havechar(2)
        else
            _temp_local_var_12 = 0
        if _temp_local_var_12
        {
            self.dx = 0
            while(true)
            {
                if (self.dx < 3)
                {
                    if (global.char[self.dx] == 2)
                    {
                        if (global.charcond[self.dx] != 5)
                        {
                            global.charcond[self.dx] = 5
                            global.faceaction[self.dx] = 9
                            global.charmove[self.dx] = 0
                            global.msg[0] = scr_84_get_lang_string("obj_ponman_enemy_slash_Step_0_gml_198_0"@8364)
                        }
                    }
                    self.dx = (self.dx + 1)
                    continue
                }
                break
            }
        }
        self.sleeping = 1
        scr_mercyadd(self.myself, 100)
        with(obj_monsterparent)
        {
            global.monstercomment[self.myself] = scr_84_get_lang_string("obj_ponman_enemy_slash_Step_0_gml_208_0"@8365)
            global.monsterstatus[self.myself] = 1
        }
        scr_battletext_default()
        self.actcon = 1
    }
}
if (global.myfight == 7)
    self.hspeed = 15
if (self.sleeping == 1)
    self.eyecon = 999
if (self.eyecon == 0)
{
    self.eye_angle = (180 + (sin((self.siner / 8)) * 30))
    if (self.eye_radius < 8)
        self.eye_radius = (self.eye_radius + 2)
    else
        self.eye_radius = 8
    if (self.addup == 0)
        self.image_index = 1
    else
        self.image_index = 3
    if (self.eye_angle > 200)
    {
        self.image_index = 0
        self.addup = 1
    }
    if (self.eye_angle < 160)
    {
        self.image_index = 2
        self.addup = 0
    }
}
if (self.eyecon == 10)
{
    self.activetimer = 0
    with(obj_regularbullet)
    {
        self.active = 0
        self.image_alpha = (self.image_alpha - 0.1)
    }
    self.image_index = 0
    self.eye_radius = (self.eye_radius * 0.7)
    if (abs(self.eye_radius) < 0.5)
    {
        self.eye_radius = 0
        self.eye_angle = 0
    }
    if (global.turntimer <= 1)
        self.eyecon = 0
}
if (self.eyecon == 20)
{
    if (self.spinspeed < 10)
        self.spinspeed = (self.spinspeed + 1)
    if (self.pontotal > 1)
        self.siner = (self.siner + (self.spinspeed / 8))
    else
        self.siner = (self.siner + (self.spinspeed / 20))
    self.eye_angle = (180 + (sin((self.siner / 8)) * 70))
    if (self.eye_radius < 8)
        self.eye_radius = (self.eye_radius + 1)
    self.grandbuffer = (self.grandbuffer - 1)
    if instance_exists(obj_heart)
        self.x_angle = point_direction(((self.eyex + 28) + self.x), ((self.eyey + 32) + self.y), (obj_heart.x + 8), (obj_heart.y + 8))
    else
        self.x_angle = 0
    if (abs((self.x_angle - self.eye_angle)) < 25)
    {
        if (self.eye_angle >= 120)
            _temp_local_var_13 = (self.eye_angle <= 240)
        else
            _temp_local_var_13 = 0
    }
    else
        _temp_local_var_13 = 0
    if _temp_local_var_13
    {
        if (self.shotbuffer < 0)
        {
            if (self.shotcount < 3)
                _temp_local_var_14 = (self.totalshotcount < self.maxshot)
            else
                _temp_local_var_14 = 0
        }
        else
            _temp_local_var_14 = 0
        if _temp_local_var_14
        {
            self.shotcount = (self.shotcount + 1)
            if (self.pontotal == 2)
                self.shotcount = (self.shotcount + 1)
            if (self.pontotal == 3)
                self.shotcount = (self.shotcount + 1)
            if (self.shotcount >= 3)
            {
                self.totalshotcount = (self.totalshotcount + 1)
                self.shotcount = 0
                if (self.pontotal == 1)
                    self.shotbuffer = 10
                if (self.pontotal == 2)
                    self.shotbuffer = 13
                if (self.pontotal == 3)
                    self.shotbuffer = 22
            }
            if (self.totalshotcount >= self.maxshot)
                self.maxtimer = 1
            snd_play(snd_hurt1)
            self.bul = instance_create(((self.eyex + 28) + self.x), ((self.eyey + 32) + self.y), obj_regularbullet)
            self.bul.speed = 2
            self.bul.timepoints = 2.5
            self.bul.target = self.mytarget
            self.bul.damage = (global.monsterat[self.myself] * 5)
            self.bul.friction = -0.11
            if (self.pontotal == 1)
                self.bul.friction = -0.12
            self.bul.direction = self.eye_angle
            with(self.bul)
            {
                self.sprite_index = spr_diamondbullet
                self.image_angle = self.direction
            }
        }
    }
    if (self.maxtimer > 0)
        self.maxtimer = (self.maxtimer + 1)
    if (global.turntimer < 10)
        self.eyecon = 10
}
self.siner = (self.siner + 1)
self.shotbuffer = (self.shotbuffer - 1)
if (self.becomesleep == 1)
{
    self.eyecon = 999
    self.sleeping = 1
    self.becomesleep = 0
    self.sleep_index = 5
}
if (self.eye_angle < 0)
    self.eye_angle = (self.eye_angle + 360)
if (self.eye_angle > 360)
    self.eye_angle = (self.eye_angle - 360)
self.eyex = lengthdir_x(self.eye_radius, self.eye_angle)
self.eyey = lengthdir_y(self.eye_radius, self.eye_angle)
