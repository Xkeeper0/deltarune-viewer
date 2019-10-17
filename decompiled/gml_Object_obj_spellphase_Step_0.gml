if (self.active == 1)
{
    self.spelltimer += 1
    if ((self.spelltimer >= global.spelldelay) && (instance_exists(self.spellwriter) == 0))
    {
        if ((self.char >= 3) || (self.spelltotal == 1))
        {
            scr_attackphase()
            with (self.spellwriter)
                instance_destroy()
            instance_destroy()
        }
        else if (scr_monsterpop() > 0)
        {
            if (self.gotitem[self.char] == 1)
            {
                self.re_castyet = 1
                with (global.charinstance[self.char])
                    self.state = 4
                with (self.spellwriter)
                    instance_destroy()
                scr_spelltext(global.charspecial[self.char], self.char)
                self.spellwriter = scr_battletext_default()
            }
            if (self.gotspell[self.char] == 1)
            {
                self.re_castyet = 1
                with (global.charinstance[self.char])
                    self.state = 2
                with (self.spellwriter)
                    instance_destroy()
                scr_spelltext(global.charspecial[self.char], self.char)
                self.spellwriter = scr_battletext_default()
            }
            global.spelldelay = 90
            if (self.re_castyet == 0)
                global.spelldelay = 1
            self.char += 1
            repeat (2)
            {
                if (self.char < 3)
                {
                    if (self.using[self.char] == 0)
                        self.char += 1
                }
            }
            self.spelltimer = 0
            self.re_castyet = 0
        }
        else
        {
            scr_attackphase()
            with (self.spellwriter)
                instance_destroy()
            instance_destroy()
        }
    }
}
