self.s = 4378473
self.r = 4387437
for (self.i = 0; self.i < 2; self.i += 1)
{
    if instance_exists(global.cinstance[self.i])
    {
        if (global.char[(self.i + 1)] == 2)
        {
            self.s = scr_dark_marker(global.cinstance[self.i].x, global.cinstance[self.i].y, global.cinstance[self.i].sprite_index)
            with (global.cinstance[self.i])
                self.visible = 0
        }
        if (global.char[(self.i + 1)] == 3)
        {
            self.r = scr_dark_marker(global.cinstance[self.i].x, global.cinstance[self.i].y, global.cinstance[self.i].sprite_index)
            with (global.cinstance[self.i])
                self.visible = 0
        }
    }
}
