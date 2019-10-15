self.index = (self.index + 0.2)
self.i = 0
while(true)
{
    if (self.i < self.length)
    {
        self.j = 0
        while(true)
        {
            if (self.j < self.height)
            {
                draw_sprite(self.sprite_index, ((((self.index + (self.x / 320)) + (self.i * 0.125)) + (self.j * 0.125)) + (self.y / 320)), (self.x + (40 * self.i)), (self.y + (40 * self.j)))
                self.j = (self.j + 1)
                continue
            }
            break
        }
        self.i = (self.i + 1)
        continue
    }
    break
}
