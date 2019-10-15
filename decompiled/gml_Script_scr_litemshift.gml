global.litem[8] = self.argument1
self.i = self.argument0
while(true)
{
    if (self.i < 8)
    {
        global.litem[self.i] = global.litem[(self.i + 1)]
        self.i = (self.i + 1)
        continue
    }
    break
}
script_execute(scr_litemname)
