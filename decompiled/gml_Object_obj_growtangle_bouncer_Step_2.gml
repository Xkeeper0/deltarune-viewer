if (self.type == 0)
{
    if (self.con == 0)
    {
        self.ux = (self.ux + 30)
        self.dx = (self.dx - 30)
        self.lx = (self.lx + 30)
        self.rx = (self.rx - 30)
        self.con = 0.4
    }
    if (self.con == 0.4)
    {
        self.minitimer = (self.minitimer + 1)
        if (self.minitimer >= 14)
            self.con = 0.5
    }
    if (self.con == 0.5)
        _temp_local_var_1 = (self.speed < 4.6)
    else
        _temp_local_var_1 = 0
    if _temp_local_var_1
        self.speed = (self.speed + 0.2)
    if (self.con == 0.5)
        _temp_local_var_2 = (self.speed >= 4.6)
    else
        _temp_local_var_2 = 0
    if _temp_local_var_2
    {
        self.timer = (self.timer + 1)
        if (self.timer >= 170)
            self.con = 1
    }
    if (self.con == 1)
    {
        self.speed = (self.speed - 0.2)
        if (self.speed <= 0.1)
            event_user(2)
    }
}
if (self.type == 1)
{
    if (self.con == 0)
    {
        self.direction = (self.direction + (random(20) - random(20)))
        self.con = 0.5
    }
    if (self.con == 0.5)
        _temp_local_var_3 = (self.speed < 5.2)
    else
        _temp_local_var_3 = 0
    if _temp_local_var_3
        self.speed = (self.speed + 0.2)
    if (self.hspeed >= 4.2)
    {
        if (self.vspeed > 0)
        {
            self.vspeed = (self.vspeed + 0.1)
            self.hspeed = (self.hspeed - 0.1)
        }
        else
        {
            self.vspeed = (self.vspeed - 0.1)
            self.hspeed = (self.hspeed - 0.1)
        }
    }
    if (self.hspeed <= -4.2)
    {
        if (self.vspeed > 0)
        {
            self.vspeed = (self.vspeed + 0.1)
            self.hspeed = (self.hspeed + 0.1)
        }
        else
        {
            self.vspeed = (self.vspeed - 0.1)
            self.hspeed = (self.hspeed + 0.1)
        }
    }
    if (self.vspeed >= 4.2)
    {
        if (self.hspeed > 0)
        {
            self.hspeed = (self.hspeed + 0.1)
            self.vspeed = (self.vspeed - 0.1)
        }
        else
        {
            self.hspeed = (self.hspeed - 0.1)
            self.vspeed = (self.vspeed - 0.1)
        }
    }
    if (self.vspeed <= -4.2)
    {
        if (self.hspeed > 0)
        {
            self.hspeed = (self.hspeed + 0.1)
            self.vspeed = (self.vspeed + 0.1)
        }
        else
        {
            self.hspeed = (self.hspeed - 0.1)
            self.vspeed = (self.vspeed + 0.1)
        }
    }
    if (self.con == 0.5)
        _temp_local_var_4 = (self.speed >= 5.2)
    else
        _temp_local_var_4 = 0
    if _temp_local_var_4
    {
        self.timer = (self.timer + 1)
        if (self.timer >= 90)
            self.con = 1
    }
    if (self.con == 1)
    {
        self.speed = (self.speed - 0.4)
        if (self.speed <= 0.1)
            event_user(2)
    }
}
if (self.type == 2)
{
    if (self.con == 0)
    {
        self.direction = (self.direction + (random(20) - random(20)))
        self.con = 0.5
        self.ux = (self.ux + 50)
        self.dx = (self.dx - 50)
        self.lx = (self.lx + 50)
        self.rx = (self.rx - 50)
    }
    if (self.con == 0.5)
        _temp_local_var_5 = (self.speed < 5.2)
    else
        _temp_local_var_5 = 0
    if _temp_local_var_5
        self.speed = (self.speed + 0.2)
    if (self.con == 0.5)
        _temp_local_var_6 = (self.speed >= 5.2)
    else
        _temp_local_var_6 = 0
    if _temp_local_var_6
    {
        self.timer = (self.timer + 1)
        if (self.timer >= 70)
            self.con = 1
    }
    if (self.con == 1)
    {
        self.speed = (self.speed - 0.5)
        if (self.speed <= 0.1)
            event_user(2)
    }
}
if (self.type == 3)
{
    if (self.con == 0)
    {
        self.direction = (self.direction + (random(20) - random(20)))
        self.con = 0.4
        self.ux = (self.ux + 50)
        self.dx = (self.dx - 50)
        self.lx = (self.lx + 50)
        self.rx = (self.rx - 50)
    }
    if (self.con == 0.4)
    {
        self.minitimer = (self.minitimer + 1)
        if (self.minitimer >= 14)
            self.con = 0.5
    }
    if (self.con == 0.5)
        _temp_local_var_7 = (self.speed < 4.4)
    else
        _temp_local_var_7 = 0
    if _temp_local_var_7
        self.speed = (self.speed + 0.2)
    if (self.con == 0.5)
        _temp_local_var_8 = (self.speed >= 4.4)
    else
        _temp_local_var_8 = 0
    if _temp_local_var_8
    {
        self.timer = (self.timer + 1)
        if (self.timer >= 170)
            self.con = 1
    }
    if (self.con == 1)
    {
        self.speed = (self.speed - 0.5)
        if (self.speed <= 0.1)
            event_user(2)
    }
}
if (self.type == 4)
{
    if (self.con == 0)
    {
        self.direction = (self.direction + (random(10) - random(10)))
        self.con = 0.5
        self.ux = (self.ux + 50)
        self.dx = (self.dx - 50)
        self.lx = (self.lx + 50)
        self.rx = (self.rx - 50)
    }
    if (self.con == 0.5)
        _temp_local_var_9 = (self.speed < 7)
    else
        _temp_local_var_9 = 0
    if _temp_local_var_9
        self.speed = (self.speed + 0.2)
    if (self.con == 0.5)
        _temp_local_var_10 = (self.speed >= 7)
    else
        _temp_local_var_10 = 0
    if _temp_local_var_10
    {
        self.timer = (self.timer + 1)
        if (self.timer >= 90)
            self.con = 1
    }
    if (self.con == 1)
    {
        self.speed = (self.speed - 0.5)
        if (self.speed <= 0.1)
        {
            self.active = 0
            event_user(2)
        }
    }
}
if (self.type == 5)
{
    if (self.con == 0)
    {
        self.ux = (self.ux + 30)
        self.dx = (self.dx - 30)
        self.lx = (self.lx + 30)
        self.rx = (self.rx - 30)
        self.con = 0.4
    }
    if (self.con == 0.4)
    {
        self.minitimer = (self.minitimer + 1)
        if (self.minitimer >= 14)
            self.con = 0.5
    }
    if (self.con == 0.5)
        _temp_local_var_11 = (self.speed < 4)
    else
        _temp_local_var_11 = 0
    if _temp_local_var_11
        self.speed = (self.speed + 0.2)
    if (self.con == 0.5)
        _temp_local_var_12 = (self.speed >= 4)
    else
        _temp_local_var_12 = 0
    if _temp_local_var_12
    {
        self.timer = (self.timer + 1)
        if (self.timer >= 170)
            self.con = 1
    }
    if (self.con == 1)
    {
        self.speed = (self.speed - 0.2)
        if (self.speed <= 0.1)
            event_user(2)
    }
}
if instance_exists(obj_growtangle)
{
    obj_growtangle.x = self.x
    obj_growtangle.y = self.y
    self.lborder = (self.x - (self.sprite_width / 2))
    self.rborder = (self.x + (self.sprite_width / 2))
    self.uborder = (self.y - (self.sprite_height / 2))
    self.dborder = (self.y + (self.sprite_height / 2))
    if (self.lborder < self.lx)
        _temp_local_var_13 = (self.hspeed < 0)
    else
        _temp_local_var_13 = 0
    if _temp_local_var_13
    {
        self.hspeed = (variable)(- self.hspeed)
        self.bumpnoise = 1
    }
    if (self.rborder > self.rx)
        _temp_local_var_14 = (self.hspeed > 0)
    else
        _temp_local_var_14 = 0
    if _temp_local_var_14
    {
        self.hspeed = (variable)(- self.hspeed)
        self.bumpnoise = 1
    }
    if (self.uborder < self.ux)
        _temp_local_var_15 = (self.vspeed < 0)
    else
        _temp_local_var_15 = 0
    if _temp_local_var_15
    {
        self.vspeed = (variable)(- self.vspeed)
        self.bumpnoise = 1
    }
    if (self.dborder > self.dx)
        _temp_local_var_16 = (self.vspeed > 0)
    else
        _temp_local_var_16 = 0
    if _temp_local_var_16
    {
        self.vspeed = (variable)(- self.vspeed)
        self.bumpnoise = 1
    }
    if (self.bumpnoise == 1)
    {
        snd_play(snd_bump)
        snd_play(snd_screenshake)
        self.bumpnoise = 0
        if (~ instance_exists(obj_shake))
            instance_create(0, 0, obj_shake)
    }
}
if (self.grazed == 1)
{
    if (self.timerbonus == 0)
    {
        self.timer = (self.timer + 2)
        self.timerbonus = 1
    }
    self.grazetimer = (self.grazetimer + 1)
    if (self.grazetimer >= 15)
    {
        self.timerbonus = 0
        self.grazetimer = 0
        self.grazed = 0
    }
}
