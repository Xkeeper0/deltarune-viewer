self.total = 0
for (self.i = 0; self.i < 3; self.i += 1)
    draw_sprite_ext(spr_eyepuzzle_marking, self.i, ((self.x + 16) + (self.i * 110)), (self.y + 60), 2, 2, 0, 0x00FFFFFF, 1)
for (self.i = 0; self.i < 3; self.i += 1)
{
    draw_sprite(spr_darkeye, self.eye[self.i], (self.x + (self.i * 110)), self.y)
    self.total += self.eye[self.i]
}
