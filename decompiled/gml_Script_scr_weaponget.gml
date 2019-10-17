self.i = 0
self.loop = 1
self.noroom = 0
global.weapon[12] = 999
while (self.loop == 1)
{
    if (global.weapon[self.i] == 0)
    {
        global.weapon[self.i] = self.argument0
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
script_execute(scr_weaponinfo_all)
