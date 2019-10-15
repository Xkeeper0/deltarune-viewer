self.tempitem[12][self.argument1] = 0
self.i = self.argument0
while(true)
{
    if (self.i < 12)
    {
        self.tempitem[self.i][self.argument1] = self.tempitem[(self.i + 1)][self.argument1]
        self.i = (self.i + 1)
        continue
    }
    break
}
