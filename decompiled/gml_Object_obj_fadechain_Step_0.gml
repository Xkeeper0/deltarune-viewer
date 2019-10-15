self.timer = (self.timer + 1)
if (self.timer >= 30)
{
    self.active = 0
    self.image_alpha = (self.image_alpha - 0.1)
    if (self.image_alpha <= 0)
        instance_destroy()
    self.hspeed = (self.hspeed + lengthdir_x(0.2, self.bdir))
    self.vspeed = (self.vspeed + lengthdir_y(0.2, self.bdir))
}
