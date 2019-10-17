self.index += 0.2
for (self.i = 0; self.i < self.length; self.i += 1)
{
    for (self.j = 0; self.j < self.height; self.j += 1)
        draw_sprite(self.sprite_index, ((((self.index + (self.x / 320)) + (self.i * 0.125)) + (self.j * 0.125)) + (self.y / 320)), (self.x + (40 * self.i)), (self.y + (40 * self.j)))
}
