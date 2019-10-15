if (self.t >= 6)
    _temp_local_var_1 = (self.t <= 26)
else
    _temp_local_var_1 = 0
if _temp_local_var_1
{
    self.afterimage = (self.afterimage + 1)
    d3d_set_fog(1, 16777215, 0, 1)
    draw_sprite_ext(self.sprite_index, self.image_index, (self.x + (self.afterimage * 4)), self.y, self.image_xscale, self.image_yscale, 0, self.image_blend, (0.7 - (self.afterimage / 25)))
    draw_sprite_ext(self.sprite_index, self.image_index, (self.x + (self.afterimage * 8)), self.y, self.image_xscale, self.image_yscale, 0, self.image_blend, (0.4 - (self.afterimage / 30)))
    d3d_set_fog(0, 0, 0, 0)
}
if (self.t < 6)
{
    if (self.t < 5)
        draw_sprite_ext(self.sprite_index, self.image_index, self.x, self.y, self.image_xscale, self.image_yscale, 0, self.image_blend, (1 - (self.neotone / 4)))
    d3d_set_fog(1, 16777215, 0, 1)
    self.maxwhite = (self.t / 5)
    if (self.maxwhite > 1)
        self.maxwhite = 1
    draw_sprite_ext(self.sprite_index, self.image_index, self.x, self.y, self.image_xscale, self.image_yscale, 0, self.image_blend, (self.maxwhite - (self.tone / 5)))
    d3d_set_fog(0, 0, 0, 0)
}
if (self.t >= 1)
    _temp_local_var_2 = (self.t <= 5)
else
    _temp_local_var_2 = 0
if _temp_local_var_2
{
    self.i = 0
    while(true)
    {
        if (self.i < 2)
        {
            self.star[self.starcount] = instance_create((self.x + random(self.sprite_width)), (self.y + random(self.sprite_height)), obj_marker)
            with(self.star[self.starcount])
            {
                self.image_xscale = 2
                self.image_yscale = 2
                self.sprite_index = spr_sparestar_anim
                self.image_alpha = 2
                self.image_speed = 0.25
                self.hspeed = -3
                self.gravity = 0.5
                self.gravity_direction = 0
            }
            self.starcount = (self.starcount + 1)
            self.i = (self.i + 1)
            continue
        }
        break
    }
}
if (self.t >= 5)
    _temp_local_var_3 = (self.t <= 30)
else
    _temp_local_var_3 = 0
if _temp_local_var_3
{
    self.i = 0
    while(true)
    {
        if (self.i < self.starcount)
        {
            with(self.star[self.i])
            {
                self.image_angle = (self.image_angle + 10)
                self.image_alpha = (self.image_alpha - 0.1)
                if (self.image_alpha <= 0)
                    instance_destroy()
            }
            self.i = (self.i + 1)
            continue
        }
        break
    }
}
if (self.t >= 5)
    _temp_local_var_4 = (self.t < 10)
else
    _temp_local_var_4 = 0
if _temp_local_var_4
    self.tone = (self.tone + 1)
if (self.t >= 9)
{
    self.neotone = (self.neotone + 1)
    if (self.neotone >= 30)
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
}
self.t = (self.t + 1)
