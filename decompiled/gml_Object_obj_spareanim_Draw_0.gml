if ((self.t >= 6) && (self.t <= 26))
{
    self.afterimage += 1
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
if ((self.t >= 1) && (self.t <= 5))
{
    for (self.i = 0; self.i < 2; self.i += 1)
    {
        self.star[self.starcount] = instance_create((self.x + random(self.sprite_width)), (self.y + random(self.sprite_height)), obj_marker)
        with (self.star[self.starcount])
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
        self.starcount += 1
    }
}
if ((self.t >= 5) && (self.t <= 30))
{
    for (self.i = 0; self.i < self.starcount; self.i += 1)
    {
        with (self.star[self.i])
        {
            self.image_angle += 10
            self.image_alpha -= 0.1
            if (self.image_alpha <= 0)
                instance_destroy()
        }
    }
}
if ((self.t >= 5) && (self.t < 10))
    self.tone += 1
if (self.t >= 9)
{
    self.neotone += 1
    if (self.neotone >= 30)
    {
        for (self.i = 0; self.i < self.starcount; self.i += 1)
        {
            with (self.star[self.i])
                instance_destroy()
        }
        instance_destroy()
    }
}
self.t += 1
