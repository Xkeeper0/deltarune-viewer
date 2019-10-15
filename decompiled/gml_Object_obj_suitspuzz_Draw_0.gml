self.vic = 0
self.i = 0
while(true)
{
    if (self.i < self.max_suit)
    {
        if (self.drawclue == 1)
            draw_sprite_ext(spr_suitsicon_fade, (self.sol[self.i] - 1), (self.x + (self.i * 40)), self.y, 2, 2, 0, 0xFFFFFF, 1)
        draw_sprite_ext(spr_suitsicon, 4, (self.x + (self.i * 40)), (self.y + 40), 2, 2, 0, 0xFFFFFF, 1)
        if (self.suit[self.i] > 0)
        {
            draw_sprite_ext(spr_suitsicon, (self.suit[self.i] - 1), (self.x + (self.i * 40)), (self.y + 40), 2, 2, 0, 0xFFFFFF, 1)
            if (self.suit[self.i] == self.sol[self.i])
                self.vic = (self.vic + 1)
        }
        self.i = (self.i + 1)
        continue
    }
    break
}
if (self.vic == self.max_suit)
    self.won = 1
