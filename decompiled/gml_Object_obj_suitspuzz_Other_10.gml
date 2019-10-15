self.i = 0
while(true)
{
    if (self.i < self.max_suit)
    {
        self.suit[self.i] = 0
        self.i = (self.i + 1)
        continue
    }
    break
}
self.cur_s = 0
self.reset = (self.reset + 1)
