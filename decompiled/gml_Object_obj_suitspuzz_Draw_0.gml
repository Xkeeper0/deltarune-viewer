self.vic = 0
for (self.i = 0; self.i < self.max_suit; self.i += 1)
{
    if (self.drawclue == 1)
        draw_sprite_ext(spr_suitsicon_fade, (self.sol[self.i] - 1), (self.x + (self.i * 40)), self.y, 2, 2, 0, 0x00FFFFFF, 1)
    draw_sprite_ext(spr_suitsicon, 4, (self.x + (self.i * 40)), (self.y + 40), 2, 2, 0, 0x00FFFFFF, 1)
    if (self.suit[self.i] > 0)
    {
        draw_sprite_ext(spr_suitsicon, (self.suit[self.i] - 1), (self.x + (self.i * 40)), (self.y + 40), 2, 2, 0, 0x00FFFFFF, 1)
        if (self.suit[self.i] == self.sol[self.i])
            self.vic += 1
    }
}
if (self.vic == self.max_suit)
    self.won = 1
