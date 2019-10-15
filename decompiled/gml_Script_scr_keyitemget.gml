self.i = 0
self.loop = 1
self.noroom = 0
global.item[12] = 999
while(true)
{
    if (self.loop == 1)
    {
        if (global.keyitem[self.i] == 0)
            break
        else
        {
            if (self.i == 12)
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
script_execute(scr_keyiteminfo_all)
