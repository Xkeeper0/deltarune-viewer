if (self.t <= 25)
    self.image_alpha += 0.04
if (self.t == 25)
    self.active = 1
if (self.t == 0)
{
    self.maxspeed = abs(self.hspeed)
    self.hspeed = 0
}
self.t += 1
self.siner += self.sinspeed
self.sinfactor_0 = sin(((self.siner - 1) / 20))
self.sinfactor = sin((self.siner / 20))
self.sinsign = (self.sinfactor - self.sinfactor_0)
self.x = (obj_battlesolid.x - (self.sinfactor * 150))
self.image_xscale = (self.sinsign * 50)
if (self.image_xscale > 2)
    self.image_xscale = 2
if (self.image_xscale < -2)
    self.image_xscale = -2
if (self.sinsign > 0)
{
    self.depth = 21
    self.active = 0
    self.image_blend = 0x00808080
}
if (self.sinsign < 0)
{
    self.depth = 0
    if (self.image_alpha >= 1)
        self.active = 1
    self.image_blend = 0x00FFFFFF
}
self.vsin += 1
if ((self.altmode == 0) || ((self.altmode == 2) || (self.altmode == 3)))
    self.y += (sin((self.vsin / 10)) * 3.5)
if (self.altmode == 1)
    self.y -= (sin((self.vsin / 10)) * 3.5)
if (self.altmode == 99)
{
    self.altsin += 1
    self.y += (cos((self.altsin / 20)) * 2)
}
if (self.altmode == 99)
{
    self.altsin += 1
    self.y += (cos((self.altsin / 10)) * 2)
}
