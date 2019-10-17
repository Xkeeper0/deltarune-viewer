draw_self()
self.wave_siner += 1
for (self.i = 0; self.i < self.wave_max; self.i += 1)
    draw_sprite_part(self.sprite_index, 0, self.i, 0, 1, self.sprite_height, ((self.x + self.i) + (sin(((self.wave_siner + self.i) / 30)) * 2)), self.y)
