if (self.con == 4)
{
    self.htimer = (self.htimer + 1)
    if (self.htimer >= 10)
    {
        self.friction = 0
        self.speed = 0
    }
    if (self.htimer >= 20)
    {
        self.active = 0
        self.image_alpha = (self.image_alpha - 0.2)
    }
    if (self.htimer >= 25)
    {
        if (global.turntimer >= 0)
            global.turntimer = -2
    }
}
if (self.con == 3)
{
    self.htimer = (self.htimer + 1)
    if (self.htimer >= self.hmax)
    {
        self.direction = self.image_angle
        self.speed = 2.5
        self.friction = -0.5
        if (self.joker == 1)
            self.speed = 5
        self.con = 4
        self.htimer = 0
    }
}
if (self.con == 2)
{
    self.htimer = (self.htimer + 1)
    self.image_angle = (self.image_angle + 24)
    if (self.htimer >= self.spinmax)
    {
        self.hmax = 19
        if (self.joker == 1)
            self.hmax = 15
        self.image_angle = (270 + (self.spinmax * 24))
        self.con = 3
        self.htimer = 0
    }
}
if (self.con == 1)
{
    self.htimer = (self.htimer + 1)
    if (self.htimer >= 10)
    {
        self.spinmax = choose(26.25, 30, 33.75, 37.5)
        if (self.joker == 1)
            self.spinmax = (15 + random(15))
        self.con = 2
        self.htimer = 0
    }
}
if (self.con == 0)
{
    self.image_alpha = (self.image_alpha + 0.2)
    self.image_xscale = (self.image_xscale - 0.2)
    self.image_yscale = (self.image_yscale - 0.2)
    self.htimer = (self.htimer + 1)
    if (self.htimer >= 5)
    {
        self.con = 1
        self.htimer = 0
        self.active = 1
    }
}
if (self.grazed == 1)
    self.grazetimer = (self.grazetimer + 1)
if (self.grazetimer >= 15)
{
    self.grazetimer = 0
    self.grazed = 0
}
