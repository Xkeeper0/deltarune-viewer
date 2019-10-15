if (global.monster[self.myself] == 1)
{
    global.monstergold[3] = (global.monstergold[3] + global.monstergold[self.myself])
    global.monsterexp[3] = (global.monsterexp[3] + global.monsterexp[self.myself])
    global.monster[self.myself] = 0
    if (global.flag[(51 + self.myself)] == 0)
    {
        global.flag[(51 + self.myself)] = 2
        if (global.monsterhp[self.myself] <= 0)
            global.flag[(51 + self.myself)] = 1
    }
    if (global.flag[(51 + self.myself)] == 1)
        global.flag[40] = (global.flag[40] + 1)
    if (global.flag[(51 + self.myself)] == 2)
        global.flag[41] = (global.flag[41] + 1)
    if (global.flag[(51 + self.myself)] == 3)
        global.flag[42] = (global.flag[42] + 1)
    if (global.flag[(51 + self.myself)] == 5)
        global.flag[43] = (global.flag[43] + 1)
    if (scr_monsterpop() == 0)
    {
        self._amt_add = 0
        self._violenced = 0
        self._spared = 0
        self._pacified = 0
        self.d_i = 0
        while(true)
        {
            if (self.d_i < 3)
            {
                if (global.flag[(51 + self.d_i)] != 0)
                    self._amt_add = (self._amt_add + 1)
                if (global.flag[(51 + self.d_i)] == 1)
                    self._violenced = (self._violenced + 1)
                if (global.flag[(51 + self.d_i)] == 2)
                    self._spared = (self._spared + 1)
                if (global.flag[(51 + self.d_i)] == 3)
                    self._pacified = (self._pacified + 1)
                self.d_i = (self.d_i + 1)
                continue
            }
            break
        }
        if (self._pacified > 0)
            global.flag[50] = 3
        if (self._spared > 0)
            global.flag[50] = 2
        if (self._violenced > 0)
            global.flag[50] = 1
    }
    event_user(11)
}
