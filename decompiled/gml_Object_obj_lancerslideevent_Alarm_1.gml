self.dust = instance_create((obj_mainchara.x + 20), (obj_mainchara.y + 30), obj_slidedust)
with(self.dust)
{
    self.vspeed = -6
    self.hspeed = (-1 + random(2))
}
self.alarm[1] = 4
