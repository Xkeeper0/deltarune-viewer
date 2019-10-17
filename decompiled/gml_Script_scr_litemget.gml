self.i = 0
self.loop = 1
self.noroom = 0
global.litem[8] = 999
while (self.loop == 1)
{
    if (global.litem[self.i] == 0)
    {
        global.litem[self.i] = self.argument0
        break
    }
    else if (self.i == 8)
    {
        self.noroom = 1
        break
    }
    else
    {
        self.i += 1
        continue
    }
}
scr_litemname()
