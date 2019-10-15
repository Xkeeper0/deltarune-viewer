with(other.id)
{
    if (global.inv < 0)
    {
        if (self.grazed == 1)
        {
            scr_tensionheal((self.grazepoints / 20))
            if (global.turntimer >= 10)
                global.turntimer = (global.turntimer - (self.timepoints / 20))
            with(obj_grazebox)
            {
                if (self.grazetimer >= 0)
                    _temp_local_var_1 = (self.grazetimer < 4)
                else
                    _temp_local_var_1 = 0
                if _temp_local_var_1
                    self.grazetimer = 3
                if (self.grazetimer < 2)
                    self.grazetimer = 2
            }
        }
        if (self.grazed == 0)
        {
            self.grazed = 1
            scr_tensionheal(self.grazepoints)
            if (global.turntimer >= 10)
                global.turntimer = (global.turntimer - self.timepoints)
            with(obj_battlecontroller)
            {
                self.grazenoise = 1
            }
            with(obj_grazebox)
            {
                self.grazetimer = 10
            }
        }
    }
}
