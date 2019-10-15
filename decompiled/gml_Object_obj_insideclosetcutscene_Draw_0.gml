if (self.bgdraw == 1)
{
    self.rate = (self.rate * 0.952380952380952)
    if (self.rate <= 0.01)
        self.rate = 0
    self.rate_alpha = (self.rate_alpha - 0.02)
    draw_sprite_ext(spr_krisandsusie_fall, 0, (__view_get(e__VW.XView, 0) + 160), ((__view_get(e__VW.YView, 0) - (self.rate * 84)) + 200), self.rate, self.rate, 0, 0xFFFFFF, self.rate_alpha)
}
draw_self()
