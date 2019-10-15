self.i = 0
while(true)
{
    if (self.i < self.max_suit)
    {
        if (self.suit[self.i] == 1)
            self.suit[self.i] = 3
        else
        {
            if (self.suit[self.i] == 3)
                self.suit[self.i] = 1
        }
        if (self.suit[self.i] == 2)
            self.suit[self.i] = 4
        else
        {
            if (self.suit[self.i] == 4)
                self.suit[self.i] = 2
        }
        self.i = (self.i + 1)
        continue
    }
    break
}
self.swap = (self.swap + 1)
