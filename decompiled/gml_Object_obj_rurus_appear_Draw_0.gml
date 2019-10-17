if (self.timer >= 0)
{
    if (self.type == 1)
        self.sprite_index = spr_checkers_idle_white
    self.timer += 1
    self.xc = (self.x + (self.sprite_width / 2))
    draw_set_color(0x00FFFFFF)
    if (self.rect_width > 1)
    {
        for (self.i = 3; self.i >= 1; self.i -= 1)
        {
            draw_set_alpha((((1.25 - (self.i / 4)) * self.rect_width) / 50))
            draw_rectangle((self.xc - (self.rect_width * (1 + (self.i / 4)))), -200, (self.xc + (self.rect_width * (1 + (self.i / 4)))), (self.y + self.sprite_height), 0)
        }
    }
    draw_set_alpha(1)
    if (self.timer <= 15)
    {
        if (self.rect_width <= 50)
        {
            self.rect_width += 2
            self.rect_width *= 1.25
        }
    }
    if (self.timer >= 15)
    {
        if (self.type == 0)
        {
            draw_sprite_ext(self.sprite_index, self.r_index, self.x, ((self.y - 32) + (self.r_index * 4)), self.image_xscale, self.image_yscale, 0, 0x00FFFFFF, 1)
            if (self.r_index < 8)
                self.r_index += 0.334
            else
                self.r_index = 8
        }
        if (self.type == 1)
        {
            draw_sprite_ext(spr_checkers_idle, 0, self.x, ((self.y - 32) + (self.r_index * 4)), self.image_xscale, self.image_yscale, 0, 0x00FFFFFF, 1)
            draw_sprite_ext(spr_checkers_idle_white, 0, self.x, ((self.y - 32) + (self.r_index * 4)), self.image_xscale, self.image_yscale, 0, 0x00FFFFFF, (1 - (self.r_index / 8)))
            if (self.r_index < 8)
                self.r_index += 0.334
            else
                self.r_index = 8
        }
    }
    if (self.timer >= 36)
    {
        if (self.rect_width >= 2)
        {
            self.rect_width -= 1
            self.rect_width *= 0.9
        }
        else
            self.rect_width = 0
    }
}
