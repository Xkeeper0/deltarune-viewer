if (self.bgdraw == 1)
{
    self.rate *= 0.952380952380952
    if (self.rate <= 0.01)
        self.rate = 0
    self.rate_alpha -= 0.02
    draw_sprite_ext(spr_krisandsusie_fall, 0, (__view_get(0, 0) + 160), ((__view_get(1, 0) - (self.rate * 84)) + 200), self.rate, self.rate, 0, 0x00FFFFFF, self.rate_alpha)
}
draw_self()
