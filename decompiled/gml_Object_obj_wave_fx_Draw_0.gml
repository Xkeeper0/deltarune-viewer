draw_self()
self.wave_siner = (self.wave_siner + 1)
self.i = 0
while(true)
{
    if (self.i < self.wave_max)
    {
        draw_sprite_part(self.sprite_index, 0, self.i, 0, 1, self.sprite_height, ((self.x + self.i) + (sin(((self.wave_siner + self.i) / 30)) * 2)), self.y)
        self.i = (self.i + 1)
        continue
    }
    break
}
