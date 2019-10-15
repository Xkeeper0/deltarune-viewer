self.i = 0
while(true)
{
    if (self.i < 8)
    {
        if (global.litem[self.i] == self.argument0)
            script_execute(scr_litemshift, self.i, 0)
        self.i = (self.i + 1)
        continue
    }
    break
}
