self.i = 0
self.loop = 1
self.noroom = 0
global.item[12] = 999
while (self.loop == 1)
{
    if (global.item[self.i] == 0)
    {
        global.item[self.i] = self.argument0
        break
    }
    else if (self.i == 12)
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
script_execute(scr_iteminfo_all)
