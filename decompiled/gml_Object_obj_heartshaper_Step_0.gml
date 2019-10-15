if (self.actual == 0)
{
    self.siner = (self.siner + 1)
    self.dir = (self.dir + 2)
    self.xdir = (self.dir + 180)
    if (self.norot == 1)
    {
        self.i = 0
        while(true)
        {
            if (self.i < 20)
            {
                self.t = ((((self.i * 2) * 3.14159265358979) / 20) + (self.siner / 60))
                self.xx = (16 * ((sin(self.t) * sin(self.t)) * sin(self.t)))
                self.yy = ((((13 * cos(self.t)) - (5 * cos((2 * self.t)))) - (2 * cos((3 * self.t)))) - cos((4 * self.t)))
                self.xxx = ((obj_heart.x + 8) + (self.xx * self.radius))
                self.yyy = ((obj_heart.y + 8) - (self.yy * self.radius))
                draw_sprite(spr_heartbullet, 0, self.xxx, self.yyy)
                self.i = (self.i + 1)
                continue
            }
            break
        }
    }
}
if (self.actual == 1)
{
    if (self.made == 0)
    {
        self.t = 0
        while(true)
        {
            if (self.t < 16)
            {
                self.bul[self.t] = instance_create(-20, -20, obj_regularbullet_permanent)
                self.bul[self.t].damage = self.damage
                with(self.bul[self.t])
                {
                    self.grazepoints = 2
                    self.timepoints = 1
                    self.depth = 0
                    self.image_alpha = 0
                    self.sprite_index = spr_heartbullet
                }
                self.t = (self.t + 1)
                continue
            }
            break
        }
        self.made = 1
    }
    if (self.type == 0)
    {
        if (self.radius > self.maxradius)
            self.radius = (self.radius - 5)
        else
            self.radius = (self.radius + (sin((self.siner / 10)) / 2))
    }
    if (self.type == 1)
    {
        if (self.radius > self.maxradius)
            _temp_local_var_1 = (self.radcon == 0)
        else
            _temp_local_var_1 = 0
        if _temp_local_var_1
            self.radius = (self.radius - 4)
        else
        {
            self.radcon = 1
            self.radius = (self.radius + 8)
            self.active = 0
            self.image_alpha = (self.image_alpha - 0.1)
        }
    }
    self.dir = (self.dir + 2)
    self.siner = (self.siner + 1.5)
    self.tcount = 0
    self.t = 0
    while(true)
    {
        if (self.t < 16)
        {
            if instance_exists(self.bul[self.t])
            {
                self.tcount = (self.tcount + 1)
                if (self.radcon == 0)
                {
                    with(self.bul[self.t])
                    {
                        if (self.image_alpha < 1)
                            self.image_alpha = (self.image_alpha + 0.1)
                    }
                }
                self.xx = (sin((((3.14159265358979 * self.t) / 8) + (self.siner / 20))) * self.radius)
                self.yy = (cos((((3.14159265358979 * self.t) / 8) + (self.siner / 20))) * self.radius)
                self.xxx = ((self.thisx + 8) + self.xx)
                self.yyy = ((self.thisy + 8) - self.yy)
                self.bul[self.t].x = self.xxx
                self.bul[self.t].y = self.yyy
                if (self.radcon == 1)
                {
                    with(self.bul[self.t])
                    {
                        self.image_alpha = (self.image_alpha - 0.1)
                        self.active = 0
                        if (self.image_alpha <= 0.1)
                            instance_destroy()
                    }
                }
            }
            self.t = (self.t + 1)
            continue
        }
        break
    }
    if (self.tcount == 0)
        instance_destroy()
}
