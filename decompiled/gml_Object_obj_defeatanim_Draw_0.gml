if (self.t == 0)
    draw_self()
self.sweat = 0
if (self.g <= 5)
    self.sweat = 1
if ((self.g >= 9) && (self.g <= 13))
    self.sweat = 1
if (self.sweat == 1)
    draw_sprite(spr_defeatsweat, 0, (self.x - 6), (self.y - 6))
if (self.t >= 1)
{
    for (self.i = 0; self.i <= 80; self.i += 1)
    {
        self.alph = 0.4
        draw_sprite_ext(self.sprite_index, self.image_index, (self.x + (4 * self.i)), self.y, self.image_xscale, self.image_yscale, 0, self.image_blend, ((self.alph - (self.t / 8)) + (self.i / 200)))
    }
    if (self.t >= 15)
        instance_destroy()
}
