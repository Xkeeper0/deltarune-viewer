self.haveit = 0
self.itemcount = 0
for (self.i = 0; self.i < 12; self.i += 1)
{
    if (global.item[self.i] == self.argument0)
        self.haveit = 1
    if (global.item[self.i] == self.argument0)
        self.itemcount += 1
}
return self.haveit;
