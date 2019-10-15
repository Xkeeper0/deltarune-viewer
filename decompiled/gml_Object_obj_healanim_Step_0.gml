self.t = (self.t + 1)
if instance_exists(self.target)
{
    if (self.t == 1)
    {
        self.x = self.target.x
        self.y = self.target.y
        self.image_xscale = self.target.image_xscale
        self.image_yscale = self.target.image_yscale
        self.sprite_index = self.target.sprite_index
        self.sw = self.sprite_width
        self.sh = self.sprite_height
        self.herocheck = 0
        if (self.target.object_index == obj_herokris)
            self.herocheck = 1
        if (self.target.object_index == obj_herosusie)
            self.herocheck = 1
        if (self.target.object_index == obj_heroralsei)
            self.herocheck = 1
        if (self.herocheck == 1)
        {
            self.sw = self.target.mywidth
            self.sh = self.target.myheight
        }
        with(self.target)
        {
            scr_oflash()
        }
    }
    if (self.t >= 1)
        _temp_local_var_1 = (self.t <= 5)
    else
        _temp_local_var_1 = 0
    if _temp_local_var_1
    {
        self.i = 0
        while(true)
        {
            if (self.i < 2)
            {
                self.star[self.starcount] = instance_create((self.x + random(self.sw)), (self.y + random(self.sh)), obj_marker)
                with(self.star[self.starcount])
                {
                    self.image_angle = random(360)
                    self.depth = -10
                    self.image_xscale = 2
                    self.image_yscale = 2
                    self.image_alpha = 2
                    self.image_speed = 0.25
                    self.hspeed = (2 - random(2))
                    self.vspeed = (-3 - random(2))
                    self.friction = 0.2
                }
                self.star[self.starcount].sprite_index = self.particlesprite
                self.star[self.starcount].image_blend = self.particlecolor
                self.starcount = (self.starcount + 1)
                self.i = (self.i + 1)
                continue
            }
            break
        }
    }
    if (self.t >= 5)
        _temp_local_var_2 = (self.t <= 30)
    else
        _temp_local_var_2 = 0
    if _temp_local_var_2
    {
        self.i = 0
        while(true)
        {
            if (self.i < self.starcount)
            {
                with(self.star[self.i])
                {
                    self.image_angle = (self.image_angle - 10)
                    self.image_alpha = (self.image_alpha - 0.1)
                    if (self.image_alpha <= 0)
                        instance_destroy()
                }
                self.i = (self.i + 1)
                continue
            }
            break
        }
        if (self.t >= 30)
            instance_destroy()
    }
}
else
{
    self.i = 0
    while(true)
    {
        if (self.i < self.starcount)
        {
            with(self.star[self.i])
            {
                instance_destroy()
            }
            self.i = (self.i + 1)
            continue
        }
        break
    }
    instance_destroy()
}
