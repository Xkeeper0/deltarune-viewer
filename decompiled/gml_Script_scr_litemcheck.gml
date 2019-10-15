self.haveit = 0
self.itemcount = 0
self.i = 0
while(true)
{
    if (self.i < 8)
    {
        if (global.litem[self.i] == self.argument0)
            self.haveit = 1
        if (global.litem[self.i] == self.argument0)
            self.itemcount = (self.itemcount + 1)
        self.i = (self.i + 1)
        continue
    }
    break
}
return self.haveit
