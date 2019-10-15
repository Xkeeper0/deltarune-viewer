self.i = 0
while(true)
{
    if (self.i < 3)
    {
        if (global.char[self.i] != 0)
            scr_heal(self.i, self.argument0)
        self.i = (self.i + 1)
        continue
    }
    break
}
