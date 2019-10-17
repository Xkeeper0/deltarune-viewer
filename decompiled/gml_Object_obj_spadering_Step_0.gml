if (self.t == 0)
{
    if (self.size > 1)
        self.startang = (-random(180))
    for (self.i = 0; self.i < self.maxspade; self.i += 1)
    {
        self.spadeang = (((360 / self.maxspade) * self.i) + self.startang)
        if (self.side == 1)
            self.spadeang = (-self.spadeang)
        self.spadex = lengthdir_x(300, (self.spadeang + 180))
        self.spadey = lengthdir_y(300, (self.spadeang + 180))
        self.spade[self.i] = instance_create((self.spadex + obj_battlesolid.x), (self.spadey + obj_battlesolid.y), obj_collidebullet)
        scr_bullet_inherit(self.spade[self.i])
        self.spade[self.i].sprite_index = spr_spadebullet
        self.spade[self.i].image_alpha = 0
        self.spade[self.i].active = 1
        self.spade[self.i].image_blend = 0x00C0C0C0
        self.spade[self.i].direction = self.spadeang
        self.spade[self.i].image_angle = self.spadeang
        self.spade[self.i].speed = 26
        self.spade[self.i].image_xscale = self.size
        self.spade[self.i].image_yscale = self.size
    }
}
if ((self.t >= 1) && (self.t < 15))
{
    for (self.i = 0; self.i < self.maxspade; self.i += 1)
    {
        with (self.spade[self.i])
        {
            self.speed *= 0.87
            self.image_alpha += 0.1
        }
    }
}
if (self.t == 15)
{
    for (self.i = 0; self.i < self.maxspade; self.i += 1)
    {
        with (self.spade[self.i])
        {
            self.speed = 0
            self.image_alpha += 0.1
        }
    }
}
if ((self.t >= 15) && (self.con == 0))
{
    self.spadet += 1
    if (self.special == 1)
        self.spadet += 6
    if (self.spadet >= 4)
    {
        with (self.spade[self.startspade])
        {
            self.image_blend = 0x00FFFFFF
            self.gravity_direction = self.direction
            self.speed = -3.4
        }
        self.spade[self.startspade].gravity = self.grav
        self.startspade += 1
        if (self.startspade >= self.maxspade)
        {
            self.con = 1
            instance_destroy()
        }
        self.spadet = 0
    }
}
self.t += 1
