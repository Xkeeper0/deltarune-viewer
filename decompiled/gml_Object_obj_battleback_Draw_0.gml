self.xx = __view_get(0, 0)
self.yy = __view_get(1, 0)
self.siner += 0.5
self.siner2 += 1
draw_set_alpha(self.image_alpha)
draw_set_color(0x00000000)
draw_rectangle(-10, -10, (self.room_width + 10), (self.room_height + 10), 0)
draw_set_alpha(1)
if (self.destroy == 0)
{
    if (self.image_alpha <= 1)
        self.image_alpha += 0.1
}
draw_background_tiled_ext(bg_battleback1, round((-100 + self.siner)), round((-100 + self.siner)), 1, 1, self.image_blend, (self.image_alpha / 2))
draw_background_tiled_ext(bg_battleback1, round((-200 - self.siner2)), round((-210 - self.siner2)), 1, 1, self.image_blend, self.image_alpha)
if (self.siner >= 100)
    self.siner -= 100
if (self.siner2 >= 100)
    self.siner2 -= 100
if (self.destroy == 1)
{
    self.image_alpha -= 0.1
    if (self.image_alpha <= 0)
        instance_destroy()
}
