for (self.i = 0; self.i < 8; self.i += 1)
{
    if (global.litem[self.i] == self.argument0)
        script_execute(scr_litemshift, self.i, 0)
}
