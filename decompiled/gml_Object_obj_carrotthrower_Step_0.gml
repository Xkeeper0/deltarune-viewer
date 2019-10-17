self.buffer += 1
if (self.buffer == 19)
{
    self.gravity = 0
    self.vspeed = 0
    self.hspeed = (4 * self.dir)
    self.depth = -10
}
if (self.buffer >= 19)
{
    self.y = (obj_battlesolid.y - (obj_battlesolid.sprite_height / 2))
    if (self.x <= ((obj_battlesolid.x - (obj_battlesolid.sprite_width / 2)) + 20))
    {
        self.x += 4
        if (self.hspeed < 0)
            self.hspeed = (-self.hspeed)
    }
    if (self.x <= ((obj_battlesolid.x - (obj_battlesolid.sprite_width / 2)) + 20))
    {
        self.x += 4
        if (self.hspeed < 0)
            self.hspeed = (-self.hspeed)
    }
    if (self.x >= ((obj_battlesolid.x + (obj_battlesolid.sprite_width / 2)) - 20))
    {
        self.x -= 4
        if (self.hspeed > 0)
            self.hspeed = (-self.hspeed)
    }
    if ((self.buffer >= 20) && ((self.con == 0) && (abs((self.x - (obj_heart.x + 10))) < 30)))
        self.con = 5
    if (self.con == 5)
    {
        self.image_speed = 0.5
        self.con = 6
    }
    if (self.con == 6)
    {
        if ((self.image_index >= 2) && (self.throw == 0))
        {
            self.throw = 1
            self.carrot = instance_create(self.x, self.y, obj_collidebullet)
            scr_bullet_inherit(self.carrot)
            with (self.carrot)
            {
                self.speedmax = 7
                if (scr_monsterpop() == 2)
                    self.speedmax = 6
                if (scr_monsterpop() == 3)
                    self.speedmax = 5
                self.active = 1
                self.image_xscale = 2
                self.image_yscale = 2
                self.vspeed = self.speedmax
                self.image_speed = 0.25
                self.sprite_index = spr_carrotbullet
            }
        }
        if (self.image_index >= 3)
        {
            self.throw = 0
            self.image_speed = 0
            self.con = 7
            self.alarm[4] = 15
            if (scr_monsterpop() == 2)
                self.alarm[4] = 22
            if (scr_monsterpop() == 3)
                self.alarm[4] = 30
        }
    }
    if (self.con == 8)
    {
        self.image_index = 0
        self.con = 0
    }
}
