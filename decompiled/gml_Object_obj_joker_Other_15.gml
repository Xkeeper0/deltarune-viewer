if (self.attacked == 0)
{
    self.turns += 1
    self.chaosdance += 1
    if (self.chaosdance >= 9)
        self.chaosdance = 0
    self.remat = global.monsterat[self.myself]
    global.monsterat[self.myself] *= self.pfactor
    if (self.jattack == 0)
    {
        self.dc = instance_create(self.x, self.y, obj_dbulletcontroller)
        self.dc.type = 70
        self.dc.target = self.mytarget
        self.dc.grazepoints = 2
        self.dc.damage = (global.monsterat[self.myself] * 5)
        with (self.body)
            self.condition = 2
    }
    if (self.jattack == 1)
    {
        self.dc = instance_create(self.x, self.y, obj_dbulletcontroller)
        self.dc.grazepoints = 3
        self.dc.type = 65
        self.dc.target = self.mytarget
        self.dc.damage = (global.monsterat[self.myself] * 5)
    }
    if (self.jattack == 2)
    {
        self.dc = instance_create(self.x, self.y, obj_dbulletcontroller)
        self.dc.type = 49
        self.dc.target = 3
        self.dc.damage = (global.monsterat[self.myself] * 4)
        self.dc.grazepoints = 3
        with (self.body)
            self.condition = 2
    }
    if (self.jattack == 3)
    {
        if (self.body.condition < 4)
            self.body.condition = 5
        self.dc = instance_create(self.x, self.y, obj_dbulletcontroller)
        self.dc.grazepoints = 3
        self.dc.type = 75
        self.dc.target = self.mytarget
        self.dc.damage = (global.monsterat[self.myself] * 6)
    }
    if (self.jattack == 4)
    {
        snd_play(scr_84_get_sound("snd_joker_anything"))
        self.dc = instance_create(self.x, self.y, obj_dbulletcontroller)
        self.dc.type = 62
        self.dc.target = self.mytarget
        self.dc.inv = 20
        self.dc.damage = (global.monsterat[self.myself] * 5)
        self.dc.grazepoints = 2
    }
    if (self.jattack == 5)
    {
        self.dc = instance_create(self.x, self.y, obj_dbulletcontroller)
        self.dc.grazepoints = 3
        self.dc.type = 50
        self.dc.target = 3
        self.dc.damage = (global.monsterat[self.myself] * 4)
        global.turntimer = 300
        with (self.body)
            self.condition = 2
    }
    if (self.jattack == 6)
    {
        self.dc = instance_create(self.x, self.y, obj_dbulletcontroller)
        self.dc.type = 73
        self.dc.target = self.mytarget
        self.dc.damage = (global.monsterat[self.myself] * 5)
    }
    if (self.jattack == 7)
    {
        self.dc = instance_create(self.x, self.y, obj_dbulletcontroller)
        self.dc.type = 68
        self.dc.target = self.mytarget
        self.dc.grazepoints = 2
        self.dc.damage = (global.monsterat[self.myself] * 5)
    }
    if (self.jattack == 8)
    {
        snd_play(scr_84_get_sound("snd_joker_anything"))
        self.dc = instance_create(self.x, self.y, obj_dbulletcontroller)
        self.dc.inv = 20
        self.dc.type = 61
        self.dc.target = self.mytarget
        self.dc.grazepoints = 3
        self.dc.damage = (global.monsterat[self.myself] * 5)
        global.turntimer = 240
    }
    if (self.jattack == 9)
    {
        self.dc = instance_create(self.x, self.y, obj_dbulletcontroller)
        self.dc.type = 48
        self.dc.target = 3
        self.dc.damage = (global.monsterat[self.myself] * 4)
        self.dc.grazepoints = 4
        global.turntimer = 270
        with (self.body)
            self.condition = 2
    }
    if (self.jattack == 10)
    {
        self.dc = instance_create(self.x, self.y, obj_dbulletcontroller)
        self.dc.type = 72
        self.dc.target = self.mytarget
        self.dc.damage = (global.monsterat[self.myself] * 5)
    }
    if (self.jattack == 11)
    {
        if (self.body.condition < 4)
            self.body.condition = 5
        self.dc = instance_create(self.x, self.y, obj_dbulletcontroller)
        self.dc.type = 76
        self.dc.target = self.mytarget
        self.dc.grazepoints = 3
        self.dc.damage = (global.monsterat[self.myself] * 6)
    }
    if (self.jattack == 12)
    {
        self.dc = instance_create(self.x, self.y, obj_dbulletcontroller)
        self.dc.type = 71
        self.dc.target = self.mytarget
        self.dc.damage = (global.monsterat[self.myself] * 5)
        self.dc.grazepoints = 2
        with (self.body)
            self.condition = 2
    }
    if (self.jattack == 13)
    {
        self.dc = instance_create(self.x, self.y, obj_dbulletcontroller)
        self.dc.type = 46
        self.dc.target = 3
        self.dc.damage = (global.monsterat[self.myself] * 4)
        self.dc.grazepoints = 4
        global.turntimer = 330
        with (self.body)
            self.condition = 2
    }
    if (self.jattack == 14)
    {
        self.dc = instance_create(self.x, self.y, obj_dbulletcontroller)
        self.dc.type = 74
        self.dc.target = self.mytarget
        self.dc.damage = (global.monsterat[self.myself] * 4)
    }
    if (self.jattack == 15)
    {
        self.dc = instance_create(self.x, self.y, obj_dbulletcontroller)
        self.dc.type = 77
        self.dc.target = self.mytarget
        self.dc.damage = (global.monsterat[self.myself] * 4)
        global.turntimer = 1500
        if (self.body.condition < 4)
            self.body.condition = 5
    }
    if (self.jattack == 99)
    {
        self.dc = instance_create(self.x, self.y, obj_dbulletcontroller)
        self.dc.type = 47
        self.dc.target = 3
        self.dc.damage = (global.monsterat[self.myself] * 4)
        global.turntimer = 300
        with (self.body)
            self.condition = 2
    }
    if (self.jattack == 999)
    {
        self.dc = instance_create(self.x, self.y, obj_dbulletcontroller)
        self.dc.type = 25
        self.dc.target = self.mytarget
        self.dc.damage = (global.monsterat[self.myself] * 4)
        global.turntimer = 300
    }
    with (obj_dbulletcontroller)
        self.joker = 1
    self.pfactor = 1
    global.monsterat[self.myself] = self.remat
    self.attacked = 1
}
