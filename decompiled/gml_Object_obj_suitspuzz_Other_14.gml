for (self.i = 0; self.i < self.max_suit; self.i += 1)
{
    if (self.suit[self.i] == 1)
        self.suit[self.i] = 3
    else if (self.suit[self.i] == 3)
        self.suit[self.i] = 1
    if (self.suit[self.i] == 2)
        self.suit[self.i] = 4
    else if (self.suit[self.i] == 4)
        self.suit[self.i] = 2
}
self.swap += 1
