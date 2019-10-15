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
    self.i = 0
    while(true)
    {
        if (self.i < 3)
        {
            with(global.charinstance[self.i])
            {
                self.tu = 0
            }
            self.hptarget = global.char[self.i]
            if (global.char[self.i] != 0)
                _temp_local_var_1 = (global.hp[self.hptarget] <= 0)
            else
                _temp_local_var_1 = 0
            if _temp_local_var_1
            {
                self.healamt = ceil((global.maxhp[self.hptarget] / 8))
                self.dmgwr = instance_create(global.charinstance[self.i].x, ((global.charinstance[self.i].y + global.charinstance[self.i].myheight) - 24), obj_dmgwriter)
                with(self.dmgwr)
                {
                    self.delay = 1
                    self.type = 3
                }
                self.dmgwr.damage = scr_heal(self.i, self.healamt)
                if (global.hp[self.hptarget] >= 1)
                {
                    with(self.dmgwr)
                    {
                        self.specialmessage = 4
                    }
                }
            }
            self.i = (self.i + 1)
            continue
        }
        break
    }
    if (global.charmove[0] == 0)
        _temp_local_var_3 = 1
    else
        _temp_local_var_3 = (global.charauto[global.char[0]] == 1)
    if _temp_local_var_3
        global.charturn = 1
    if (global.charturn == 1)
    {
        if (global.charmove[1] == 0)
            _temp_local_var_4 = 1
        else
            _temp_local_var_4 = (global.charauto[global.char[1]] == 1)
        if _temp_local_var_4
            global.charturn = 2
    }
    if (global.charturn == 2)
    {
        if (global.charmove[2] == 0)
            _temp_local_var_5 = 1
        else
            _temp_local_var_5 = (global.charauto[global.char[2]] == 1)
        if _temp_local_var_5
            self.skip = 1
    }
    self.i = 0
    while(true)
    {
        if (self.i < 3)
        {
            global.acting[self.i] = 0
            global.temptension[self.i] = global.tension
            global.charspecial[self.i] = 0
            global.targeted[self.i] = 0
            global.charaction[self.i] = 0
            global.faceaction[self.i] = 0
            self.i = (self.i + 1)
            continue
        }
        break
    }
    with(obj_monsterparent)
    {
        self.attacked = 0
        self.talked = 0
        self.acting = 0
    }
    if (self.skip == 1)
    {
        if (global.char[0] == 2)
            _temp_local_var_6 = (global.charauto[2] == 1)
        else
            _temp_local_var_6 = 0
        if _temp_local_var_6
        {
            global.acting[0] = 1
            global.myfight = 3
        }
        scr_endturn()
    }
    self.i = 0
    while(true)
    {
        if (self.i < 12)
        {
            self.j = 0
            while(true)
            {
                if (self.j < 3)
                {
                    self.tempitem[self.i][self.j] = global.item[self.i]
                    self.j = (self.j + 1)
                    continue
                }
                break
            }
            self.i = (self.i + 1)
            continue
        }
        break
    }
}
else
    scr_wincombat()
