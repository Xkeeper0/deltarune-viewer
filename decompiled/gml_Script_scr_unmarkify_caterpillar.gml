for (self.i = 0; self.i < 2; self.i += 1)
{
    if instance_exists(global.cinstance[self.i])
    {
        if (global.char[(self.i + 1)] == 2)
        {
            if ((global.cinstance[self.i].x != self.s.x) || (global.cinstance[self.i].y != self.s.x))
            {
                global.cinstance[self.i].x = self.s.x
                global.cinstance[self.i].y = (self.s.y + 10)
                with (global.cinstance[self.i])
                    scr_caterpillar_interpolate()
                global.cinstance[self.i].y -= 10
            }
            with (global.cinstance[self.i])
            {
                if (global.facing == 0)
                    self.sprite_index = self.dsprite
                if (global.facing == 1)
                    self.sprite_index = self.rsprite
                if (global.facing == 2)
                    self.sprite_index = self.usprite
                if (global.facing == 3)
                    self.sprite_index = self.lsprite
                self.visible = 1
            }
            with (self.s)
                instance_destroy()
        }
        if (global.char[(self.i + 1)] == 3)
        {
            if ((global.cinstance[self.i].x != self.r.x) || (global.cinstance[self.i].y != self.r.x))
            {
                global.cinstance[self.i].x = self.r.x
                global.cinstance[self.i].y = (self.r.y + 10)
                with (global.cinstance[self.i])
                    scr_caterpillar_interpolate()
                global.cinstance[self.i].y -= 10
            }
            with (global.cinstance[self.i])
            {
                if (global.facing == 0)
                    self.sprite_index = self.dsprite
                if (global.facing == 1)
                    self.sprite_index = self.rsprite
                if (global.facing == 2)
                    self.sprite_index = self.usprite
                if (global.facing == 3)
                    self.sprite_index = self.lsprite
                self.visible = 1
            }
            with (self.r)
                instance_destroy()
        }
    }
}
