self.i = 0
while(true)
{
    if (self.i < 2)
    {
        if instance_exists(global.cinstance[self.i])
        {
            if (global.char[(self.i + 1)] == 2)
            {
                if (global.cinstance[self.i].x != self.s.x)
                    _temp_local_var_1 = 1
                else
                    _temp_local_var_1 = (global.cinstance[self.i].y != self.s.x)
                if _temp_local_var_1
                {
                    global.cinstance[self.i].x = self.s.x
                    global.cinstance[self.i].y = (self.s.y + 10)
                    with(global.cinstance[self.i])
                    {
                        scr_caterpillar_interpolate()
                    }
                    global.cinstance[self.i].y = (global.cinstance[self.i].y - 10)
                }
                with(global.cinstance[self.i])
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
                with(self.s)
                {
                    instance_destroy()
                }
            }
            if (global.char[(self.i + 1)] == 3)
            {
                if (global.cinstance[self.i].x != self.r.x)
                    _temp_local_var_2 = 1
                else
                    _temp_local_var_2 = (global.cinstance[self.i].y != self.r.x)
                if _temp_local_var_2
                {
                    global.cinstance[self.i].x = self.r.x
                    global.cinstance[self.i].y = (self.r.y + 10)
                    with(global.cinstance[self.i])
                    {
                        scr_caterpillar_interpolate()
                    }
                    global.cinstance[self.i].y = (global.cinstance[self.i].y - 10)
                }
                with(global.cinstance[self.i])
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
                with(self.r)
                {
                    instance_destroy()
                }
            }
        }
        self.i = (self.i + 1)
        continue
    }
    break
}
