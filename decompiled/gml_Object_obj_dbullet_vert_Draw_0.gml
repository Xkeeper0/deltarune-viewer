if (self.dont == 0)
{
    if (self.active == 0)
    {
        draw_sprite_ext(self.sprite_index, 0, self.x, self.y, (3 - (self.image_alpha * 2)), (3 - (self.image_alpha * 2)), 0, 0xFFFFFF, self.image_alpha)
        if (self.image_alpha < 1)
        {
            self.image_alpha = (self.image_alpha + 0.1)
            if (self.type == 1)
            {
                self.vspeed = 3
                self.gravity = -0.5
            }
        }
        else
        {
            if (self.type == 0)
            {
                if ((obj_heart.y + 8) < self.y)
                {
                    self.vspeed = 1
                    self.gravity = -0.2
                }
                else
                {
                    self.vspeed = -2
                    self.gravity = 1
                }
            }
            self.active = 1
        }
    }
    draw_sprite_ext(self.sprite_index, 0, self.x, self.y, (2 - self.image_alpha), (2 - self.image_alpha), 0, 0xFFFFFF, self.image_alpha)
    if (self.type == 0)
    {
        if (self.speed > 8)
            self.speed = 8
    }
    if (self.y > (__view_get(e__VW.YView, 0) + 500))
        instance_destroy()
    if (self.y < (__view_get(e__VW.YView, 0) - 20))
        instance_destroy()
}
self.dont = 0
