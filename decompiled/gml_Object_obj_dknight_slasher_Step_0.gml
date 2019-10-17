if (self.con == 0)
{
    self.throwernumber = instance_number(self.object_index)
    self.con = 12
    self.movecon = 4
    self.timer = 0
    self.thrown = 0
    self.image_index = 0
}
if (self.movecon == 4)
{
    self.movesiner += 1
    if (global.turntimer >= 30)
    {
        if (self.movefactor < 1)
            self.movefactor += 0.1
    }
    self.y = (self.ystart + ((sin((self.movesiner / 16)) * 40) * self.movefactor))
    if (global.turntimer <= 30)
    {
        if (self.movefactor > 0)
            self.movefactor -= 0.1
        else
            self.movefactor = 0
    }
}
if (self.con == 10)
{
    self.timer = 0
    self.thrown = 0
    self.image_index = 0
    if (global.turntimer > 15)
        self.con = 11
}
if (self.con == 11)
{
    self.image_index += 0.334
    if ((self.image_index >= 4) && (self.thrown == 0))
    {
        self.swordbullet = instance_create((self.x + 6), (self.y + 34), obj_regularbullet)
        self.swordbullet.siner = self.movesiner
        scr_bullet_inherit(self.swordbullet)
        self.swordbullet.throwernumber = self.throwernumber
        with (self.swordbullet)
        {
            self.active = 1
            self.sprite_index = spr_diamondswordbullet
            self.image_xscale = 2
            self.image_yscale = 2
            move_towards_point((obj_heart.x + 8), (obj_heart.y + 8), (9 + (sin((self.siner / 10)) * 4)))
            if (self.throwernumber == 2)
                self.speed *= 0.85
            if (self.throwernumber == 3)
                self.speed *= 0.7
            self.direction += (5 - random(10))
            self.image_angle = self.direction
        }
        self.swordbullet.depth = (self.depth + 1)
        self.thrown = 1
    }
    if (self.image_index >= 6)
    {
        self.con = 12
        self.timer = 0
    }
}
if (self.con == 12)
{
    self.timer += 1
    if (self.timer >= (self.throwernumber * 3))
        self.con = 10
}
