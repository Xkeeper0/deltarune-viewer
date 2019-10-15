self.image_speed = 0
self.max_suit = 4
self.i = 0
while(true)
{
    if (self.i < self.max_suit)
    {
        self.suit[self.i] = 0
        self.sol[self.i] = 5
        self.i = (self.i + 1)
        continue
    }
    break
}
self.swap = 0
self.spade = 0
self.diamond = 0
self.cur_s = 0
self.reset = 0
self.won = 0
self.drawclue = 1
