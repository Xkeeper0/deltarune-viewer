self.i = 0
self.loop = 1
self.noroom = 0
global.litem[8] = 999
while(true)
{
    if (self.loop == 1)
    {
        if (global.litem[self.i] == 0)
            break
        else
        {
            if (self.i == 8)
                break
            else
            {
                self.i = (self.i + 1)
                continue
            }
        }
    }
    break
}
scr_litemname()
