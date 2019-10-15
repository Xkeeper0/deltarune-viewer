self.active = 0
self.fastmode = 1
if (self.fastmode == 1)
    self.active = 1
self.goahead = 0
self.linespeed = 2
self.linex = -10
self.spelluse = 0
self.spelldelay[0] = 10
self.spelldelay[1] = 10
self.spelldelay[2] = 10
self.maxdelay = 0
self.maxdelaytimer = 0
if (self.spelluse == 0)
{
    self.xyz = 0
    while(true)
    {
        if (self.xyz < 3)
        {
            self.havechar[self.xyz] = 0
            self.charitem[self.xyz] = 0
            self.charspell[self.xyz] = 0
            if (global.charaction[self.xyz] == 1)
                self.havechar[self.xyz] = 1
            if (global.charaction[self.xyz] == 4)
                _temp_local_var_1 = 1
            else
                _temp_local_var_1 = (global.charaction[self.xyz] == 2)
            if _temp_local_var_1
            {
                if (self.maxdelay == 0)
                    self.maxdelay = 25
                self.maxdelay = (self.maxdelay + 15)
                if (self.xyz == 2)
                    _temp_local_var_2 = (self.spelluse == 1)
                else
                    _temp_local_var_2 = 0
                if _temp_local_var_2
                {
                    if (self.spelldelay[1] == 25)
                        self.spelldelay[2] = 45
                    else
                        self.spelldelay[2] = 25
                }
                if (self.xyz == 1)
                    _temp_local_var_3 = (self.spelluse == 1)
                else
                    _temp_local_var_3 = 0
                if _temp_local_var_3
                    self.spelldelay[1] = 25
                self.spelluse = 1
                if (global.charaction[self.xyz] == 4)
                    self.charitem[self.xyz] = 1
                else
                    self.charspell[self.xyz] = 1
            }
            self.xyz = (self.xyz + 1)
            continue
        }
        break
    }
}
self.spelluse = 0
self.fade = 0
self.fadeamt = 0
self.fakefade = 0
self.bcolor = 8388608
self.charcolor[0] = 16776960
self.charcolor[1] = 16711935
self.charcolor[2] = 65280
self.target = 0
global.hittarget[0] = global.chartarget[0]
global.hittarget[1] = global.chartarget[1]
global.hittarget[2] = global.chartarget[2]
self.boltcolor[0] = merge_color(0xFFFF00, 0xFFFFFF, 0.5)
self.boltcolor[1] = merge_color(0xFF00FF, 0xFFFFFF, 0.5)
self.boltcolor[2] = merge_color(0x00FF00, 0xFFFFFF, 0.5)
self.imagetimer = 0
self.posttimer = 0
self.timermax = 50
if (self.havechar[0] == 0)
{
    if (self.havechar[1] == 0)
        _temp_local_var_7 = (self.havechar[2] == 0)
    else
        _temp_local_var_7 = 0
}
else
    _temp_local_var_7 = 0
if _temp_local_var_7
{
    self.timermax = 3
    if (self.spelluse == 1)
        _temp_local_var_8 = (self.fastmode == 1)
    else
        _temp_local_var_8 = 0
    if _temp_local_var_8
        self.timermax = (self.timermax + self.maxdelay)
}
self.boltorder[0] = choose(0, 1, 2)
if (self.havechar[1] == 0)
    _temp_local_var_9 = (self.havechar[2] == 0)
else
    _temp_local_var_9 = 0
if _temp_local_var_9
    self.boltorder[0] = 0
if (self.boltorder[0] == 2)
    self.boltorder[1] = choose(0, 1)
if (self.boltorder[0] == 1)
    self.boltorder[1] = choose(0, 2)
if (self.boltorder[0] == 0)
    self.boltorder[1] = choose(1, 2)
if (self.boltorder[1] == 2)
    _temp_local_var_10 = (self.boltorder[0] == 0)
else
    _temp_local_var_10 = 0
if _temp_local_var_10
    self.boltorder[2] = 1
if (self.boltorder[1] == 0)
    _temp_local_var_11 = (self.boltorder[0] == 2)
else
    _temp_local_var_11 = 0
if _temp_local_var_11
    self.boltorder[2] = 1
if (self.boltorder[1] == 1)
    _temp_local_var_12 = (self.boltorder[0] == 0)
else
    _temp_local_var_12 = 0
if _temp_local_var_12
    self.boltorder[2] = 2
if (self.boltorder[1] == 0)
    _temp_local_var_13 = (self.boltorder[0] == 1)
else
    _temp_local_var_13 = 0
if _temp_local_var_13
    self.boltorder[2] = 2
if (self.boltorder[1] == 2)
    _temp_local_var_14 = (self.boltorder[0] == 1)
else
    _temp_local_var_14 = 0
if _temp_local_var_14
    self.boltorder[2] = 0
if (self.boltorder[1] == 1)
    _temp_local_var_15 = (self.boltorder[0] == 2)
else
    _temp_local_var_15 = 0
if _temp_local_var_15
    self.boltorder[2] = 0
if (self.havechar[1] == 1)
    _temp_local_var_16 = (self.havechar[2] == 0)
else
    _temp_local_var_16 = 0
if _temp_local_var_16
{
    self.boltorder[0] = choose(0, 1)
    if (self.boltorder[0] == 1)
        self.boltorder[2] = 0
    else
        self.boltorder[2] = 1
}
self.boltgap = 20
self.boltspeed = 8
self.boltx = 0
self.points[0] = 0
self.points[1] = 0
self.points[2] = 0
self.pressbuffer[0] = 0
self.pressbuffer[1] = 0
self.pressbuffer[2] = 0
self.pressbuffer[3] = 0
self.charbolt[0] = 1
self.charbolt[1] = 1
self.charbolt[2] = 1
self.i = 0
while(true)
{
    if (self.i < 3)
    {
        if (self.havechar[self.i] == 0)
            self.charbolt[self.i] = 0
        self.i = (self.i + 1)
        continue
    }
    break
}
self.attacked[0] = 0
self.attacked[1] = 0
self.attacked[2] = 0
self.bolttotal = ((self.charbolt[0] + self.charbolt[1]) + self.charbolt[2])
self.boltxoff = 0
self.method = 1
self.boltnum = 1
self.boltuse[0] = 0
self.boltuse[1] = 0
self.boltuse[2] = 0
self.lastbolt = -1
self.boltchar[0] = -1
self.diff = 10
if (global.flag[13] == 0)
    self.diff = (self.diff + 2)
if (self.method == 1)
{
    self.i = 0
    while(true)
    {
        if (self.i < self.bolttotal)
        {
            self.boltalive[self.i] = 1
            self.c = choose(0, 1, 2)
            while(true)
            {
                if (self.havechar[self.c] == 0)
                {
                    self.c = choose(0, 1, 2)
                    continue
                }
                break
            }
            while(true)
            {
                if (self.boltuse[self.c] >= self.charbolt[self.c])
                {
                    self.c = choose(0, 1, 2)
                    while(true)
                    {
                        if (self.havechar[self.c] == 0)
                        {
                            self.c = choose(0, 1, 2)
                            continue
                        }
                        break
                    }
                    continue
                }
                break
            }
            self.boltchar[self.i] = self.c
            self.boltuse[self.c] = (self.boltuse[self.c] + 1)
            self.i = (self.i + 1)
            continue
        }
        break
    }
    self.i = 0
    while(true)
    {
        if (self.i < self.bolttotal)
        {
            self.boltred[self.i] = 0
            self.boltxoff = (self.boltxoff + self.lastbolt)
            self.boltframe[self.i] = (30 + self.boltxoff)
            if (self.i < (self.bolttotal - 1))
            {
                if (self.lastbolt != 0)
                    _temp_local_var_17 = (self.boltchar[self.i] != self.boltchar[(self.i + 1)])
                else
                    _temp_local_var_17 = 0
                if _temp_local_var_17
                {
                    self.lastbolt = choose(0, self.diff, (self.diff * 1.5))
                    self.boltred[self.i] = 1
                }
                else
                    self.lastbolt = choose(self.diff, (self.diff * 1.5))
            }
            else
                self.lastbolt = choose(self.diff, (self.diff * 1.5))
            self.i = (self.i + 1)
            continue
        }
        break
    }
}
if (self.method == 2)
{
    self.c = 0
    while(true)
    {
        if (self.c < 3)
        {
            if (self.havechar[self.c] == 1)
            {
                self.i = 0
                while(true)
                {
                    if (self.i < self.boltnum)
                    {
                        self.boltframe[self.i][self.c] = ((30 + (self.boltorder[self.c] * self.boltgap)) + (self.i * choose(5, 10, 15)))
                        if (self.i == 2)
                        {
                            if (self.boltframe[self.i][2] == self.boltframe[self.i][0])
                                _temp_local_var_19 = (self.boltframe[self.i][2] == self.boltframe[self.i][1])
                            else
                                _temp_local_var_19 = 0
                            if _temp_local_var_19
                                self.boltframe[self.i][2] = (self.boltframe[self.i][2] + 10)
                        }
                        self.i = (self.i + 1)
                        continue
                    }
                    break
                }
            }
            self.c = (self.c + 1)
            continue
        }
        break
    }
}
self.haveauto = 0
self.autoed = 0
if (global.charauto[2] == 1)
{
    if (global.char[0] == 2)
        _temp_local_var_21 = 1
    else
    {
        if (global.char[1] == 2)
            _temp_local_var_21 = 1
        else
            _temp_local_var_21 = (global.char[2] == 2)
    }
    if _temp_local_var_21
    {
        self.sus = 0
        if (global.char[1] == 2)
            self.sus = 1
        if (global.char[2] == 2)
            self.sus = 2
        if (global.hp[2] >= 0)
            _temp_local_var_22 = (global.charmove[self.sus] == 1)
        else
            _temp_local_var_22 = 0
        if _temp_local_var_22
        {
            self.haveauto = 1
            if (self.timermax == 3)
                self.timermax = 50
        }
    }
}
