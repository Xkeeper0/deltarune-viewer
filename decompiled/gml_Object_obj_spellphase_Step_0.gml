if (self.active == 1)
{
    self.spelltimer = (self.spelltimer + 1)
    if (self.spelltimer >= global.spelldelay)
        _temp_local_var_1 = (instance_exists(self.spellwriter) == 0)
    else
        _temp_local_var_1 = 0
    if _temp_local_var_1
    {
        if (self.char >= 3)
            _temp_local_var_2 = 1
        else
            _temp_local_var_2 = (self.spelltotal == 1)
        if _temp_local_var_2
        {
            scr_attackphase()
            with(self.spellwriter)
            {
                instance_destroy()
            }
            instance_destroy()
        }
        else
        {
            if (scr_monsterpop() > 0)
            {
                if (self.gotitem[self.char] == 1)
                {
                    self.re_castyet = 1
                    with(global.charinstance[self.char])
                    {
                        self.state = 4
                    }
                    with(self.spellwriter)
                    {
                        instance_destroy()
                    }
                    scr_spelltext(global.charspecial[self.char], self.char)
                    self.spellwriter = scr_battletext_default()
                }
                if (self.gotspell[self.char] == 1)
                {
                    self.re_castyet = 1
                    with(global.charinstance[self.char])
                    {
                        self.state = 2
                    }
                    with(self.spellwriter)
                    {
                        instance_destroy()
                    }
                    scr_spelltext(global.charspecial[self.char], self.char)
                    self.spellwriter = scr_battletext_default()
                }
                global.spelldelay = 90
                if (self.re_castyet == 0)
                    global.spelldelay = 1
                self.char = (self.char + 1)
                _temp_local_var_3 = 2
                if (2 <= 0)
                {
                }
                else
                {
                    while(true)
                    {
                        if (self.char < 3)
                        {
                            if (self.using[self.char] == 0)
                                self.char = (self.char + 1)
                        }
                        _temp_local_var_3 = (_temp_local_var_3 - 1)
                        if (_temp_local_var_3 - 1)
                            continue
                        break
                    }
                }
                self.spelltimer = 0
                self.re_castyet = 0
            }
            else
            {
                scr_attackphase()
                with(self.spellwriter)
                {
                    instance_destroy()
                }
                instance_destroy()
            }
        }
    }
}
