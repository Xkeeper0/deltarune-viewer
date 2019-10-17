if (global.char[0] == 2)
    self.sus = 0
if (global.char[1] == 2)
    self.sus = 1
if (global.char[2] == 2)
    self.sus = 2
self.techwon = 0
if (scr_monsterpop() == 0)
    self.techwon = 1
if (self.techwon == 0)
{
    scr_battlecursor_memory_reset()
    global.mnfight = 0
    global.myfight = 0
    global.bmenuno = 0
    global.charturn = 0
    self.skip = 0
    for (self.i = 0; self.i < 3; self.i += 1)
    {
        with (global.charinstance[self.i])
            self.tu = 0
        self.hptarget = global.char[self.i]
        if ((global.char[self.i] != 0) && (global.hp[self.hptarget] <= 0))
        {
            self.healamt = ceil((global.maxhp[self.hptarget] / 8))
            self.dmgwr = instance_create(global.charinstance[self.i].x, ((global.charinstance[self.i].y + global.charinstance[self.i].myheight) - 24), obj_dmgwriter)
            with (self.dmgwr)
            {
                self.delay = 1
                self.type = 3
            }
            self.dmgwr.damage = scr_heal(self.i, self.healamt)
            if (global.hp[self.hptarget] >= 1)
            {
                with (self.dmgwr)
                    self.specialmessage = 4
            }
        }
    }
    if ((global.charmove[0] == 0) || (global.charauto[global.char[0]] == 1))
        global.charturn = 1
    if (global.charturn == 1)
    {
        if ((global.charmove[1] == 0) || (global.charauto[global.char[1]] == 1))
            global.charturn = 2
    }
    if (global.charturn == 2)
    {
        if ((global.charmove[2] == 0) || (global.charauto[global.char[2]] == 1))
            self.skip = 1
    }
    for (self.i = 0; self.i < 3; self.i += 1)
    {
        global.acting[self.i] = 0
        global.temptension[self.i] = global.tension
        global.charspecial[self.i] = 0
        global.targeted[self.i] = 0
        global.charaction[self.i] = 0
        global.faceaction[self.i] = 0
    }
    with (obj_monsterparent)
    {
        self.attacked = 0
        self.talked = 0
        self.acting = 0
    }
    if (self.skip == 1)
    {
        if ((global.char[0] == 2) && (global.charauto[2] == 1))
        {
            global.acting[0] = 1
            global.myfight = 3
        }
        scr_endturn()
    }
    for (self.i = 0; self.i < 12; self.i += 1)
    {
        for (self.j = 0; self.j < 3; self.j += 1)
            self.tempitem[self.i, self.j] = global.item[self.i]
    }
}
else
    scr_wincombat()
