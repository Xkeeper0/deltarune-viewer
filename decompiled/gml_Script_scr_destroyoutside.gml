if (global.mnfight != 2)
    instance_destroy()
if (self.x < (__view_get(e__VW.XView, 0) - self.sprite_width))
    instance_destroy()
if (self.x > ((__view_get(e__VW.XView, 0) + 640) + self.sprite_width))
    instance_destroy()
if (self.y < (__view_get(e__VW.YView, 0) - self.sprite_height))
    instance_destroy()
if (self.y > ((__view_get(e__VW.YView, 0) + 480) + self.sprite_height))
    instance_destroy()
