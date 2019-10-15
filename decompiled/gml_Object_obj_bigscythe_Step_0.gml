if (self.type == 0)
{
    if (self.x >= (obj_battlesolid.x + 100))
        self.hspeed = (self.hspeed - 0.5)
    if (self.x <= (obj_battlesolid.x - 100))
        self.hspeed = (self.hspeed + 0.5)
}
if (self.type == 1)
{
    if (self.y >= (obj_battlesolid.y + 100))
        self.vspeed = (self.vspeed - 0.5)
    if (self.y <= (obj_battlesolid.y - 100))
        self.vspeed = (self.vspeed + 0.5)
}
self.siner = (self.siner + 1)
self.image_angle = (self.image_angle + self.anglespeed)
if (self.image_alpha < 1)
    self.image_alpha = (self.image_alpha + 0.1)
self.grazetimer = (self.grazetimer + 1)
if (self.grazetimer >= 3)
{
    self.grazetimer = 0
    self.grazed = 0
}
