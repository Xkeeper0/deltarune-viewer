self.total = 0
self.i = 0
while(true)
{
    if (self.i < 3)
    {
        draw_sprite_ext(spr_eyepuzzle_marking, self.i, ((self.x + 16) + (self.i * 110)), (self.y + 60), 2, 2, 0, 0xFFFFFF, 1)
        self.i = (self.i + 1)
        continue
    }
    break
}
self.i = 0
while(true)
{
    if (self.i < 3)
    {
        draw_sprite(spr_darkeye, self.eye[self.i], (self.x + (self.i * 110)), self.y)
        self.total = (self.total + self.eye[self.i])
        self.i = (self.i + 1)
        continue
    }
    break
}
