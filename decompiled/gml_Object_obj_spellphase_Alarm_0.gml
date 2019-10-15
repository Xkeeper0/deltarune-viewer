self.xyz = 0
while(true)
{
    if (self.xyz < 3)
    {
        self.using[self.xyz] = 0
        self.gotspell[self.xyz] = 0
        self.gotitem[self.xyz] = 0
        if (global.charaction[self.xyz] == 2)
        {
            self.spelltotal = (self.spelltotal + 1)
            self.using[self.xyz] = 1
            self.gotspell[self.xyz] = 1
            if (self.castyet == 0)
            {
                with(global.charinstance[self.xyz])
                {
                    self.state = 2
                    self.attacktimer = 0
                }
                self.castyet = 1
                self.char = (self.xyz + 1)
                scr_spelltext(global.charspecial[self.xyz], self.xyz)
                self.spellwriter = scr_battletext_default()
            }
        }
        if (global.charaction[self.xyz] == 4)
        {
            self.spelltotal = (self.spelltotal + 1)
            self.using[self.xyz] = 1
            self.gotitem[self.xyz] = 1
            if (self.castyet == 0)
            {
                with(global.charinstance[self.xyz])
                {
                    self.state = 4
                    self.attacktimer = 0
                }
                self.castyet = 1
                self.char = (self.xyz + 1)
                scr_spelltext(global.charspecial[self.xyz], self.xyz)
                self.spellwriter = scr_battletext_default()
            }
        }
        self.xyz = (self.xyz + 1)
        continue
    }
    break
}
self.active = 1
global.spelldelay = 90
