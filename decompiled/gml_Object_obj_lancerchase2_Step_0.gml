if (self.con == 1)
{
    self.s = scr_dark_marker(400, 200, spr_susier_dark_unhappy)
    self.r = scr_dark_marker(300, 200, spr_ralseir)
    with(obj_marker)
    {
        scr_depth()
        self.hspeed = 12
        self.image_speed = 0.334
    }
    self.con = 2
}
if (self.con == 2)
{
    if (global.interact == 0)
        _temp_local_var_1 = (obj_mainchara.x >= 100)
    else
        _temp_local_var_1 = 0
    if _temp_local_var_1
    {
        global.interact = 1
        self.con = 3
        self.alarm[4] = 14
        self.i = 0
        while(true)
        {
            if (self.i < self.dmax)
            {
                self.d[self.i] = scr_dark_marker((400 + (self.i * 120)), -100, spr_diamond_knight_overworld)
                with(self.d[self.i])
                {
                    self.vspeed = 10
                    scr_depth()
                }
                self.i = (self.i + 1)
                continue
            }
            break
        }
    }
}
if (self.con == 4)
{
    self.i = 0
    while(true)
    {
        if (self.i < self.dmax)
        {
            with(self.d[self.i])
            {
                scr_halt()
            }
            self.i = (self.i + 1)
            continue
        }
        break
    }
    self.con = 5
    self.alarm[4] = 15
}
if (self.con == 6)
{
    global.typer = 6
    global.fc = 0
    global.msg[0] = scr_84_get_lang_string("obj_lancerchase2_slash_Step_0_gml_43_0"@4388)
    global.msg[1] = scr_84_get_lang_string("obj_lancerchase2_slash_Step_0_gml_44_0"@4389)
    self.con = 7
    self.doo = instance_create(0, 0, obj_dialoguer)
    self.doo.side = 1
}
if (self.con == 7)
    _temp_local_var_2 = (~ d_ex())
else
    _temp_local_var_2 = 0
if _temp_local_var_2
{
    global.interact = 0
    instance_create(0, 0, obj_overworld_spademaker)
    self.con = 8
}
if (self.con == 8)
{
    self.siner = (self.siner + 1)
    self.i = 0
    while(true)
    {
        if (self.i < self.dmax)
        {
            self.d[self.i].x = (self.d[self.i].x + (sin(((self.siner + (self.i * 2)) / 8)) * 2))
            self.i = (self.i + 1)
            continue
        }
        break
    }
}
if (self.con == 20)
{
    self.dtimer = 0
    self.dsiner = 0
    if (obj_mainchara.y <= 2640)
    {
        self.i = 0
        while(true)
        {
            if (self.i < 19)
            {
                self.dactive[self.i] = 0
                self.dsiner[self.i] = self.i
                self.dl[self.i] = scr_dark_marker(-100, (20 + (self.i * 140)), spr_diamond_knight_overworld)
                self.dr[self.i] = scr_dark_marker(660, (20 + (self.i * 140)), spr_diamond_knight_overworld)
                self.i = (self.i + 1)
                continue
            }
            break
        }
        self.con = 21
    }
}
if (self.con == 21)
{
    self.dtimer = (self.dtimer + 1)
    self.i = 0
    while(true)
    {
        if (self.i < 19)
        {
            if (obj_mainchara.y < (self.dl[self.i].y + 80))
                self.dactive[self.i] = 1
            if (self.dactive[self.i] == 1)
            {
                if (self.dsiner[self.i] < 140)
                    self.dsiner[self.i] = (self.dsiner[self.i] + 10)
                self.dl[self.i].x = ((-100 + self.dsiner[self.i]) + (sin(((self.dtimer + (self.i * 6)) / 16)) * 8))
                self.dr[self.i].x = ((660 - self.dsiner[self.i]) - (sin(((self.dtimer + (self.i * 6)) / 16)) * 8))
            }
            self.i = (self.i + 1)
            continue
        }
        break
    }
}
