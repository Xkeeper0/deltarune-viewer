with (obj_battlecontroller)
{
    self.techwon = 0
    if (scr_monsterpop() == 0)
        self.techwon = 1
    if (self.techwon == 0)
    {
        self.fightphase = 1
        global.charturn = 3
        if ((global.charaction[0] == 4) || (global.charaction[0] == 2))
            self.fightphase = 0
        if ((global.charaction[1] == 4) || (global.charaction[1] == 2))
            self.fightphase = 0
        if ((global.charaction[2] == 4) || (global.charaction[2] == 2))
            self.fightphase = 0
        if (global.myfight == 4)
            self.fightphase = 1
        if (self.fightphase == 1)
        {
            global.myfight = 1
            instance_create((self.xx + 2), (self.yy + 365), obj_attackpress)
        }
        else
        {
            global.myfight = 4
            instance_create(0, 0, obj_spellphase)
        }
    }
    else
        scr_wincombat()
}
