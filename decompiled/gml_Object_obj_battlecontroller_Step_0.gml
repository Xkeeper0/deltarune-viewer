if (self.victory == 1)
    _temp_local_var_1 = (self.victoried == 0)
else
    _temp_local_var_1 = 0
if _temp_local_var_1
{
    global.faceaction[0] = 0
    global.faceaction[1] = 0
    global.faceaction[2] = 0
    global.battleend = 1
    global.mnfight = -1
    global.myfight = 7
    with(self.battlewriter)
    {
        instance_destroy()
    }
    with(obj_face)
    {
        instance_destroy()
    }
    with(obj_smallface)
    {
        instance_destroy()
    }
    self.i = 0
    while(true)
    {
        if (self.i < 4)
        {
            if (global.hp[self.i] < 1)
                global.hp[self.i] = round((global.maxhp[self.i] / 8))
            self.i = (self.i + 1)
            continue
        }
        break
    }
    self.lastbattlewriter = 32482473284732
    if (self.skipvictory == 0)
    {
        global.monstergold[3] = (global.monstergold[3] + floor((global.tension / 10)))
        if (global.charweapon[1] == 8)
            global.monstergold[3] = (global.monstergold[3] + floor((global.monstergold[3] / 20)))
        global.gold = (global.gold + global.monstergold[3])
        global.xp = (global.xp + global.monsterexp[3])
        global.fc = 0
        global.fe = 0
        global.battlemsg[0] = scr_84_get_subst_string(scr_84_get_lang_string("obj_battlecontroller_slash_Step_0_gml_40_0"@7301), string(global.monsterexp[3]), string(global.monstergold[3]))
        global.msg[0] = global.battlemsg[0]
        global.typer = global.battletyper
        self.lastbattlewriter = scr_battletext()
        self.i = 0
        while(true)
        {
            if (self.i < 3)
            {
                with(global.charinstance[self.i])
                {
                    self.state = 7
                    self.hurt = 0
                    self.hurttimer = 0
                }
                self.i = (self.i + 1)
                continue
            }
            break
        }
    }
    self.victoried = 1
    self.victortimer = 0
    if (self.skipvictory == 1)
        self.victortimer = -20
    with(obj_tensionbar)
    {
        self.alarm[5] = 15
        self.hspeed = -10
        self.friction = -0.4
    }
    if instance_exists(obj_hathyfightevent)
    {
        with(obj_hathyfightevent)
        {
            self.con = 30
        }
        self.victoried = 2
        with(self.lastbattlewriter)
        {
            instance_destroy()
        }
    }
}
if (self.victoried == 1)
{
    self.victortimer = (self.victortimer + 1)
    if (instance_exists(self.lastbattlewriter) == 0)
        _temp_local_var_2 = (self.victortimer >= 10)
    else
        _temp_local_var_2 = 0
    if _temp_local_var_2
    {
        self.intro = 2
        if (self.bp <= 0)
            scr_endcombat()
    }
}
if (global.myfight == 0)
{
    if (global.bmenuno == 0)
    {
        if (~ instance_exists(self.battlewriter))
        {
            global.msg[0] = global.battlemsg[0]
            global.typer = global.battletyper
            scr_battletext()
        }
        if (left_p() == 1)
            _temp_local_var_3 = (self.lbuffer < 0)
        else
            _temp_local_var_3 = 0
        if _temp_local_var_3
        {
            if (global.bmenucoord[0][global.charturn] == 0)
                global.bmenucoord[0][global.charturn] = 4
            else
                global.bmenucoord[0][global.charturn] = (global.bmenucoord[0][global.charturn] - 1)
            self.movenoise = 1
            self.rbuffer = 1
        }
        if (right_p() == 1)
            _temp_local_var_4 = (self.rbuffer < 0)
        else
            _temp_local_var_4 = 0
        if _temp_local_var_4
        {
            if (global.bmenucoord[0][global.charturn] == 4)
                global.bmenucoord[0][global.charturn] = 0
            else
                global.bmenucoord[0][global.charturn] = (global.bmenucoord[0][global.charturn] + 1)
            self.movenoise = 1
            self.lbuffer = 1
        }
        if (button1_p() == 1)
            _temp_local_var_5 = (self.twobuffer < 0)
        else
            _temp_local_var_5 = 0
        if _temp_local_var_5
        {
            self.onebuffer = 1
            self.selnoise = 1
            if (global.bmenucoord[0][global.charturn] == 0)
                global.bmenuno = 1
            if (global.bmenucoord[0][global.charturn] == 1)
                _temp_local_var_6 = (global.char[global.charturn] != 1)
            else
                _temp_local_var_6 = 0
            if _temp_local_var_6
            {
                self.onebuffer = 1
                global.bmenuno = 2
            }
            if (global.bmenucoord[0][global.charturn] == 1)
                _temp_local_var_7 = (global.char[global.charturn] == 1)
            else
                _temp_local_var_7 = 0
            if _temp_local_var_7
            {
                self.onebuffer = 1
                global.bmenuno = 11
            }
            if (global.bmenucoord[0][global.charturn] == 2)
                _temp_local_var_8 = (self.tempitem[0] != 0)
            else
                _temp_local_var_8 = 0
            if _temp_local_var_8
            {
                self.onebuffer = 1
                global.bmenuno = 4
                scr_iteminfo_temp(global.charturn)
                self.i = 0
                while(true)
                {
                    if (self.i < 12)
                    {
                        if (self.tempitem[global.bmenucoord[4][global.charturn]][global.charturn] == 0)
                            _temp_local_var_9 = (global.bmenucoord[4][global.charturn] > 0)
                        else
                            _temp_local_var_9 = 0
                        if _temp_local_var_9
                            global.bmenucoord[4][global.charturn] = (global.bmenucoord[4][global.charturn] - 1)
                        self.i = (self.i + 1)
                        continue
                    }
                    break
                }
            }
            if (global.bmenucoord[0][global.charturn] == 3)
            {
                self.onebuffer = 1
                global.bmenuno = 12
            }
            if (global.bmenucoord[0][global.charturn] == 4)
            {
                scr_tensionheal(40)
                global.faceaction[global.charturn] = 4
                global.charaction[global.charturn] = 10
                scr_nexthero()
            }
        }
        if (button2_p() == 1)
        {
            if (self.onebuffer < 0)
                _temp_local_var_11 = (global.charturn > 0)
            else
                _temp_local_var_11 = 0
        }
        else
            _temp_local_var_11 = 0
        if _temp_local_var_11
        {
            self.twobuffer = 1
            self.movenoise = 1
            scr_prevhero()
        }
        with(self.battlewriter)
        {
            self.depth = 3
        }
        with(obj_face_parent)
        {
            self.depth = 3
        }
        with(obj_smallface)
        {
            self.depth = 3
        }
    }
    if (global.bmenuno == 2)
    {
        with(self.battlewriter)
        {
            self.skipme = 1
        }
        with(self.battlewriter)
        {
            self.depth = 10
        }
        with(obj_face_parent)
        {
            self.depth = 10
        }
        with(obj_smallface)
        {
            self.depth = 10
        }
        self.thischar = global.char[global.charturn]
        if right_p()
        {
            self.cango = 1
            self.spellcoord = global.bmenucoord[2][global.charturn]
            if (self.spellcoord < 11)
            {
                if (global.spell[self.thischar][(global.bmenucoord[2][global.charturn] + 1)] == 0)
                {
                    self.cango = 0
                    if ((self.spellcoord % 2) == 1)
                        _temp_local_var_12 = (self.spellcoord > 0)
                    else
                        _temp_local_var_12 = 0
                    if _temp_local_var_12
                        global.bmenucoord[2][global.charturn] = (global.bmenucoord[2][global.charturn] - 1)
                }
            }
            else
            {
                global.bmenucoord[2][global.charturn] = (global.bmenucoord[2][global.charturn] - 1)
                self.cango = 0
            }
            if (self.cango == 1)
            {
                if ((self.spellcoord % 2) == 0)
                    global.bmenucoord[2][global.charturn] = (global.bmenucoord[2][global.charturn] + 1)
                else
                    global.bmenucoord[2][global.charturn] = (global.bmenucoord[2][global.charturn] - 1)
            }
        }
        if left_p()
        {
            self.cango = 1
            self.spellcoord = global.bmenucoord[2][global.charturn]
            if (global.spell[self.thischar][1] != 0)
            {
                if ((self.spellcoord % 2) == 0)
                    global.bmenucoord[2][global.charturn] = (global.bmenucoord[2][global.charturn] + 1)
                else
                    global.bmenucoord[2][global.charturn] = (global.bmenucoord[2][global.charturn] - 1)
            }
        }
        if down_p()
        {
            self.spellcoord = global.bmenucoord[2][global.charturn]
            self.cango = 1
            if (self.spellcoord >= 10)
                self.cango = 0
            else
            {
                if (global.spell[self.thischar][(self.spellcoord + 2)] == 0)
                    self.cango = 0
                if (self.spellcoord == 5)
                {
                    if (global.spell[self.thischar][6] != 0)
                        _temp_local_var_71 = (global.spell[self.thischar][7] == 0)
                    else
                        _temp_local_var_71 = 0
                }
                else
                    _temp_local_var_71 = 0
                if _temp_local_var_71
                    self.cango = 2
            }
            if (self.cango != 0)
            {
                if (self.cango == 1)
                    global.bmenucoord[2][global.charturn] = (global.bmenucoord[2][global.charturn] + 2)
                if (self.cango == 2)
                    global.bmenucoord[2][global.charturn] = 6
            }
        }
        if up_p()
        {
            self.spellcoord = global.bmenucoord[2][global.charturn]
            self.cango = 1
            if (self.spellcoord <= 1)
                self.cango = 0
            if (self.cango == 1)
                global.bmenucoord[2][global.charturn] = (global.bmenucoord[2][global.charturn] - 2)
        }
        global.tensionselect = global.spellcost[self.thischar][global.bmenucoord[2][global.charturn]]
        if button1_p()
        {
            if (global.spell[self.thischar][global.bmenucoord[2][global.charturn]] != 0)
                _temp_local_var_13 = (self.onebuffer < 0)
            else
                _temp_local_var_13 = 0
        }
        else
            _temp_local_var_13 = 0
        if _temp_local_var_13
        {
            if (global.spellcost[self.thischar][global.bmenucoord[2][global.charturn]] <= global.tension)
            {
                self.onebuffer = 2
                global.bmenuno = 0
                self.selnoise = 1
                scr_spellinfo(global.spell[self.thischar][global.bmenucoord[2][global.charturn]])
                if (self.spelltarget == 0)
                    scr_spellconsumeb()
                if (self.spelltarget == 1)
                    global.bmenuno = 8
                if (self.spelltarget == 2)
                    global.bmenuno = 3
            }
        }
        if button2_p()
            _temp_local_var_14 = (self.onebuffer < 0)
        else
            _temp_local_var_14 = 0
        if _temp_local_var_14
        {
            global.tensionselect = 0
            self.twobuffer = 1
            global.bmenuno = 0
            self.movenoise = 1
        }
    }
    if (global.bmenuno == 4)
    {
        with(self.battlewriter)
        {
            self.skipme = 1
        }
        with(self.battlewriter)
        {
            self.depth = 10
        }
        with(obj_face_parent)
        {
            self.depth = 10
        }
        with(obj_smallface)
        {
            self.depth = 10
        }
        if (self.tempitem[global.bmenucoord[4][global.charturn]][global.charturn] == 0)
            global.bmenucoord[4][global.charturn] = (global.bmenucoord[4][global.charturn] - 1)
        if right_p()
        {
            self.cango = 1
            self.itemcoord = global.bmenucoord[4][global.charturn]
            if (self.itemcoord < 11)
            {
                if (self.tempitem[(global.bmenucoord[4][global.charturn] + 1)][global.charturn] == 0)
                {
                    self.cango = 0
                    if ((self.itemcoord % 2) == 1)
                        _temp_local_var_15 = (self.itemcoord > 0)
                    else
                        _temp_local_var_15 = 0
                    if _temp_local_var_15
                        global.bmenucoord[4][global.charturn] = (global.bmenucoord[4][global.charturn] - 1)
                }
            }
            else
            {
                global.bmenucoord[4][global.charturn] = (global.bmenucoord[4][global.charturn] - 1)
                self.cango = 0
            }
            if (self.cango == 1)
            {
                if ((self.itemcoord % 2) == 0)
                    global.bmenucoord[4][global.charturn] = (global.bmenucoord[4][global.charturn] + 1)
                else
                    global.bmenucoord[4][global.charturn] = (global.bmenucoord[4][global.charturn] - 1)
            }
        }
        if left_p()
        {
            self.cango = 1
            self.itemcoord = global.bmenucoord[4][global.charturn]
            if (self.tempitem[1][global.charturn] != 0)
            {
                if ((self.itemcoord % 2) == 0)
                    global.bmenucoord[4][global.charturn] = (global.bmenucoord[4][global.charturn] + 1)
                else
                    global.bmenucoord[4][global.charturn] = (global.bmenucoord[4][global.charturn] - 1)
            }
        }
        if down_p()
        {
            self.itemcoord = global.bmenucoord[4][global.charturn]
            self.cango = 1
            if (self.itemcoord >= 10)
                self.cango = 0
            else
            {
                if (self.tempitem[(self.itemcoord + 2)][global.charturn] == 0)
                    self.cango = 0
                if (self.itemcoord == 5)
                {
                    if (self.tempitem[6][global.charturn] != 0)
                        _temp_local_var_66 = (self.tempitem[7][global.charturn] == 0)
                    else
                        _temp_local_var_66 = 0
                }
                else
                    _temp_local_var_66 = 0
                if _temp_local_var_66
                    self.cango = 2
            }
            if (self.cango != 0)
            {
                if (self.cango == 1)
                    global.bmenucoord[4][global.charturn] = (global.bmenucoord[4][global.charturn] + 2)
                if (self.cango == 2)
                    global.bmenucoord[4][global.charturn] = 6
            }
        }
        if up_p()
        {
            self.itemcoord = global.bmenucoord[4][global.charturn]
            self.cango = 1
            if (self.itemcoord <= 1)
                self.cango = 0
            if (self.cango == 1)
                global.bmenucoord[4][global.charturn] = (global.bmenucoord[4][global.charturn] - 2)
        }
        if (self.tempitem[global.bmenucoord[4][global.charturn]][global.charturn] == 0)
            global.bmenucoord[4][global.charturn] = (global.bmenucoord[4][global.charturn] - 1)
        if button1_p()
        {
            if (self.tempitem[global.bmenucoord[4][global.charturn]][global.charturn] != 0)
                _temp_local_var_16 = (self.onebuffer < 0)
            else
                _temp_local_var_16 = 0
        }
        else
            _temp_local_var_16 = 0
        if _temp_local_var_16
        {
            self.onebuffer = 2
            global.bmenuno = 0
            self.selnoise = 1
            scr_iteminfo(self.tempitem[global.bmenucoord[4][global.charturn]][global.charturn])
            if (self.itemtarget == 0)
                _temp_local_var_17 = 1
            else
                _temp_local_var_17 = (self.itemtarget == 2)
            if _temp_local_var_17
                scr_itemconsumeb()
            if (self.itemtarget == 1)
                global.bmenuno = 7
        }
        if button2_p()
            _temp_local_var_18 = (self.onebuffer < 0)
        else
            _temp_local_var_18 = 0
        if _temp_local_var_18
        {
            self.twobuffer = 1
            global.bmenuno = 0
            self.movenoise = 1
        }
    }
    if (global.bmenuno == 9)
    {
        self.thisenemy = global.bmenucoord[11][global.charturn]
        if right_p()
        {
            self.cango = 1
            self.actcoord = global.bmenucoord[9][global.charturn]
            if (self.actcoord < 5)
            {
                if (global.canact[self.thisenemy][(global.bmenucoord[9][global.charturn] + 1)] == 0)
                {
                    self.cango = 0
                    if ((self.actcoord % 2) == 1)
                        _temp_local_var_19 = (self.actcoord > 0)
                    else
                        _temp_local_var_19 = 0
                    if _temp_local_var_19
                        global.bmenucoord[9][global.charturn] = (global.bmenucoord[9][global.charturn] - 1)
                }
            }
            else
            {
                global.bmenucoord[9][global.charturn] = (global.bmenucoord[9][global.charturn] - 1)
                self.cango = 0
            }
            if (self.cango == 1)
            {
                if ((self.actcoord % 2) == 0)
                    global.bmenucoord[9][global.charturn] = (global.bmenucoord[9][global.charturn] + 1)
                else
                    global.bmenucoord[9][global.charturn] = (global.bmenucoord[9][global.charturn] - 1)
            }
        }
        if left_p()
        {
            self.cango = 1
            self.actcoord = global.bmenucoord[9][global.charturn]
            if ((self.actcoord % 2) == 0)
            {
                if (global.canact[self.thisenemy][(self.actcoord + 1)] != 0)
                    global.bmenucoord[9][global.charturn] = (global.bmenucoord[9][global.charturn] + 1)
            }
            else
                global.bmenucoord[9][global.charturn] = (global.bmenucoord[9][global.charturn] - 1)
        }
        if down_p()
        {
            self.actcoord = global.bmenucoord[9][global.charturn]
            self.cango = 1
            if (self.actcoord >= 4)
                self.cango = 0
            else
            {
                if (global.canact[self.thisenemy][(self.actcoord + 2)] == 0)
                    self.cango = 0
            }
            if (self.cango != 0)
            {
                if (self.cango == 1)
                    global.bmenucoord[9][global.charturn] = (global.bmenucoord[9][global.charturn] + 2)
            }
        }
        if up_p()
        {
            self.actcoord = global.bmenucoord[9][global.charturn]
            self.cango = 1
            if (self.actcoord <= 1)
                self.cango = 0
            if (self.cango == 1)
                global.bmenucoord[9][global.charturn] = (global.bmenucoord[9][global.charturn] - 2)
        }
        global.tensionselect = global.actcost[self.thisenemy][global.bmenucoord[9][global.charturn]]
        self.canpress = 1
        if (global.actactor[global.bmenucoord[11][global.charturn]][global.bmenucoord[9][global.charturn]] == 2)
            _temp_local_var_20 = 1
        else
            _temp_local_var_20 = (global.actactor[global.bmenucoord[11][global.charturn]][global.bmenucoord[9][global.charturn]] == 4)
        if _temp_local_var_20
        {
            if (self.havechar[1] == 0)
                _temp_local_var_21 = 1
            else
                _temp_local_var_21 = (global.hp[2] <= 0)
            if _temp_local_var_21
                self.canpress = 0
        }
        if (global.actactor[global.bmenucoord[11][global.charturn]][global.bmenucoord[9][global.charturn]] == 3)
            _temp_local_var_22 = 1
        else
            _temp_local_var_22 = (global.actactor[global.bmenucoord[11][global.charturn]][global.bmenucoord[9][global.charturn]] == 4)
        if _temp_local_var_22
        {
            if (self.havechar[2] == 0)
                _temp_local_var_23 = 1
            else
                _temp_local_var_23 = (global.hp[3] <= 0)
            if _temp_local_var_23
                self.canpress = 0
        }
        if (self.canpress == 1)
        {
            if button1_p()
            {
                if (global.canact[self.thisenemy][global.bmenucoord[9][global.charturn]] == 1)
                {
                    if (global.tension >= global.tensionselect)
                        _temp_local_var_24 = (self.onebuffer < 0)
                    else
                        _temp_local_var_24 = 0
                }
                else
                    _temp_local_var_24 = 0
            }
            else
                _temp_local_var_24 = 0
            if _temp_local_var_24
            {
                self.onebuffer = 2
                global.bmenuno = 0
                self.selnoise = 1
                global.tension = (global.tension - global.actcost[self.thisenemy][global.bmenucoord[9][global.charturn]])
                global.tensionselect = 0
                if instance_exists(global.monsterinstance[self.thisenemy])
                    global.monsterinstance[self.thisenemy].acting = (global.bmenucoord[9][global.charturn] + 1)
                global.acting[0] = 1
                if (global.actactor[global.bmenucoord[11][global.charturn]][global.bmenucoord[9][global.charturn]] == 2)
                    global.acting[self.charpos[1]] = 1
                if (global.actactor[global.bmenucoord[11][global.charturn]][global.bmenucoord[9][global.charturn]] == 3)
                    global.acting[self.charpos[2]] = 1
                if (global.actactor[global.bmenucoord[11][global.charturn]][global.bmenucoord[9][global.charturn]] == 4)
                {
                    global.acting[2] = 1
                    global.acting[1] = 1
                }
                self.i = 0
                while(true)
                {
                    if (self.i < 3)
                    {
                        if (global.acting[self.i] == 1)
                        {
                            global.faceaction[self.i] = 6
                            global.charaction[self.i] = 9
                        }
                        self.i = (self.i + 1)
                        continue
                    }
                    break
                }
                scr_nexthero()
            }
        }
        if button2_p()
            _temp_local_var_25 = (self.onebuffer < 0)
        else
            _temp_local_var_25 = 0
        if _temp_local_var_25
        {
            global.tensionselect = 0
            self.twobuffer = 1
            global.bmenuno = 11
            self.movenoise = 1
        }
    }
    if (global.bmenuno == 7)
        _temp_local_var_26 = 1
    else
    {
        if (global.bmenuno == 1)
            _temp_local_var_26 = 1
        else
        {
            if (global.bmenuno == 8)
                _temp_local_var_26 = 1
            else
            {
                if (global.bmenuno == 3)
                    _temp_local_var_26 = 1
                else
                {
                    if (global.bmenuno == 11)
                        _temp_local_var_26 = 1
                    else
                        _temp_local_var_26 = (global.bmenuno == 12)
                }
            }
        }
    }
    if _temp_local_var_26
    {
        with(self.battlewriter)
        {
            self.skipme = 1
        }
        with(self.battlewriter)
        {
            self.depth = 10
        }
        with(obj_face_parent)
        {
            self.depth = 10
        }
        with(obj_smallface)
        {
            self.depth = 10
        }
        if button2_p()
            _temp_local_var_27 = (self.onebuffer < 0)
        else
            _temp_local_var_27 = 0
        if _temp_local_var_27
        {
            self.twobuffer = 1
            if (global.bmenuno == 1)
                _temp_local_var_28 = 1
            else
            {
                if (global.bmenuno == 11)
                    _temp_local_var_28 = 1
                else
                    _temp_local_var_28 = (global.bmenuno == 12)
            }
            if _temp_local_var_28
                global.bmenuno = 0
            if (global.bmenuno == 7)
                global.bmenuno = 4
            if (global.bmenuno == 8)
                _temp_local_var_29 = 1
            else
                _temp_local_var_29 = (global.bmenuno == 3)
            if _temp_local_var_29
                global.bmenuno = 2
            self.movenoise = 1
        }
        if (global.bmenuno == 7)
            _temp_local_var_30 = 1
        else
        {
            if (global.bmenuno == 1)
                _temp_local_var_30 = 1
            else
            {
                if (global.bmenuno == 8)
                    _temp_local_var_30 = 1
                else
                {
                    if (global.bmenuno == 3)
                        _temp_local_var_30 = 1
                    else
                    {
                        if (global.bmenuno == 11)
                            _temp_local_var_30 = 1
                        else
                            _temp_local_var_30 = (global.bmenuno == 12)
                    }
                }
            }
        }
        if _temp_local_var_30
        {
            if (global.bmenuno == 7)
                _temp_local_var_31 = 1
            else
                _temp_local_var_31 = (global.bmenuno == 8)
            if _temp_local_var_31
            {
                self.i = 0
                while(true)
                {
                    if (self.i < 3)
                    {
                        self.ht[self.i] = 0
                        if (global.char[self.i] > 0)
                            self.ht[self.i] = 1
                        self.i = (self.i + 1)
                        continue
                    }
                    break
                }
            }
            if (global.bmenuno == 1)
                _temp_local_var_32 = 1
            else
            {
                if (global.bmenuno == 3)
                    _temp_local_var_32 = 1
                else
                {
                    if (global.bmenuno == 11)
                        _temp_local_var_32 = 1
                    else
                        _temp_local_var_32 = (global.bmenuno == 12)
                }
            }
            if _temp_local_var_32
            {
                self.i = 0
                while(true)
                {
                    if (self.i < 3)
                    {
                        self.ht[self.i] = global.monster[self.i]
                        self.i = (self.i + 1)
                        continue
                    }
                    break
                }
            }
            if (global.bmenucoord[global.bmenuno][global.charturn] == 2)
                _temp_local_var_33 = (self.ht[2] == 0)
            else
                _temp_local_var_33 = 0
            if _temp_local_var_33
                global.bmenucoord[global.bmenuno][global.charturn] = 0
            if (global.bmenucoord[global.bmenuno][global.charturn] == 0)
                _temp_local_var_34 = (self.ht[0] == 0)
            else
                _temp_local_var_34 = 0
            if _temp_local_var_34
                global.bmenucoord[global.bmenuno][global.charturn] = 1
            if (global.bmenucoord[global.bmenuno][global.charturn] == 1)
                _temp_local_var_35 = (self.ht[1] == 0)
            else
                _temp_local_var_35 = 0
            if _temp_local_var_35
                global.bmenucoord[global.bmenuno][global.charturn] = 0
            if (global.bmenucoord[global.bmenuno][global.charturn] == 0)
                _temp_local_var_36 = (self.ht[0] == 0)
            else
                _temp_local_var_36 = 0
            if _temp_local_var_36
                global.bmenucoord[global.bmenuno][global.charturn] = 2
            if (down_p() == 1)
            {
                if (global.bmenucoord[global.bmenuno][global.charturn] == 0)
                {
                    if (self.ht[1] == 1)
                    {
                        self.movenoise = 1
                        global.bmenucoord[global.bmenuno][global.charturn] = 1
                    }
                    else
                    {
                        if (self.ht[2] == 1)
                        {
                            self.movenoise = 1
                            global.bmenucoord[global.bmenuno][global.charturn] = 2
                        }
                    }
                }
                else
                {
                    if (global.bmenucoord[global.bmenuno][global.charturn] == 1)
                    {
                        if (self.ht[2] == 1)
                        {
                            self.movenoise = 1
                            global.bmenucoord[global.bmenuno][global.charturn] = 2
                        }
                        else
                        {
                            if (self.ht[0] == 1)
                            {
                                self.movenoise = 1
                                global.bmenucoord[global.bmenuno][global.charturn] = 0
                            }
                        }
                    }
                    else
                    {
                        if (global.bmenucoord[global.bmenuno][global.charturn] == 2)
                        {
                            if (self.ht[0] == 1)
                            {
                                self.movenoise = 1
                                global.bmenucoord[global.bmenuno][global.charturn] = 0
                            }
                            else
                            {
                                if (self.ht[1] == 1)
                                {
                                    self.movenoise = 1
                                    global.bmenucoord[global.bmenuno][global.charturn] = 1
                                }
                            }
                        }
                    }
                }
            }
            if (up_p() == 1)
            {
                if (global.bmenucoord[global.bmenuno][global.charturn] == 0)
                {
                    if (self.ht[2] == 1)
                    {
                        self.movenoise = 1
                        global.bmenucoord[global.bmenuno][global.charturn] = 2
                    }
                    else
                    {
                        if (self.ht[1] == 1)
                        {
                            self.movenoise = 1
                            global.bmenucoord[global.bmenuno][global.charturn] = 1
                        }
                    }
                }
                else
                {
                    if (global.bmenucoord[global.bmenuno][global.charturn] == 1)
                    {
                        if (self.ht[0] == 1)
                        {
                            self.movenoise = 1
                            global.bmenucoord[global.bmenuno][global.charturn] = 0
                        }
                        else
                        {
                            if (self.ht[2] == 1)
                            {
                                self.movenoise = 1
                                global.bmenucoord[global.bmenuno][global.charturn] = 2
                            }
                        }
                    }
                    else
                    {
                        if (global.bmenucoord[global.bmenuno][global.charturn] == 2)
                        {
                            if (self.ht[1] == 1)
                            {
                                self.movenoise = 1
                                global.bmenucoord[global.bmenuno][global.charturn] = 1
                            }
                            else
                            {
                                if (self.ht[0] == 1)
                                {
                                    self.movenoise = 1
                                    global.bmenucoord[global.bmenuno][global.charturn] = 0
                                }
                            }
                        }
                    }
                }
            }
            if button1_p()
                _temp_local_var_37 = (self.onebuffer < 0)
            else
                _temp_local_var_37 = 0
            if _temp_local_var_37
            {
                self.onebuffer = 1
                self.selnoise = 1
                if (global.bmenuno == 1)
                {
                    global.chartarget[global.charturn] = global.bmenucoord[global.bmenuno][global.charturn]
                    global.faceaction[global.charturn] = 1
                    global.charaction[global.charturn] = 1
                    scr_nexthero()
                }
                if (global.bmenuno == 7)
                {
                    global.chartarget[global.charturn] = global.bmenucoord[global.bmenuno][global.charturn]
                    scr_itemconsumeb()
                }
                if (global.bmenuno == 8)
                    _temp_local_var_38 = 1
                else
                    _temp_local_var_38 = (global.bmenuno == 3)
                if _temp_local_var_38
                {
                    global.chartarget[global.charturn] = global.bmenucoord[global.bmenuno][global.charturn]
                    scr_spellconsumeb()
                }
                if (global.bmenuno == 11)
                {
                    global.bmenuno = 9
                    self.actcoord = global.bmenucoord[9][global.charturn]
                    self.thisenemy = global.bmenucoord[11][global.charturn]
                    self.i = 0
                    while(true)
                    {
                        if (self.i < 6)
                        {
                            if (global.canact[self.thisenemy][self.actcoord] == 0)
                            {
                                if (self.actcoord > 0)
                                    global.bmenucoord[9][global.charturn] = (global.bmenucoord[9][global.charturn] - 1)
                            }
                            self.i = (self.i + 1)
                            continue
                        }
                        break
                    }
                    self.onebuffer = 1
                }
                if (global.bmenuno == 12)
                {
                    global.faceaction[global.charturn] = 10
                    global.chartarget[global.charturn] = global.bmenucoord[global.bmenuno][global.charturn]
                    global.charaction[global.charturn] = 2
                    global.charspecial[global.charturn] = 100
                    scr_nexthero()
                }
            }
        }
    }
}
if (self.movenoise == 1)
{
    snd_play(snd_menumove)
    self.movenoise = 0
}
if (self.grazenoise == 1)
{
    snd_play(snd_graze)
    self.grazenoise = 0
}
if (self.selnoise == 1)
{
    snd_play(snd_select)
    self.selnoise = 0
}
if (self.damagenoise == 1)
{
    snd_play(snd_damage)
    self.damagenoise = 0
}
if (self.laznoise == 1)
{
    snd_play(snd_laz_c)
    self.laznoise = 0
}
self.onebuffer = (self.onebuffer - 1)
self.twobuffer = (self.twobuffer - 1)
self.lbuffer = (self.lbuffer - 1)
self.rbuffer = (self.rbuffer - 1)
if (global.mnfight == 2)
    _temp_local_var_39 = (self.timeron == 1)
else
    _temp_local_var_39 = 0
if _temp_local_var_39
{
    global.turntimer = (global.turntimer - 1)
    if (global.turntimer <= 0)
        _temp_local_var_40 = (self.reset == 0)
    else
        _temp_local_var_40 = 0
    if _temp_local_var_40
    {
        with(obj_bulletparent)
        {
            instance_destroy()
        }
        with(obj_bulletgenparent)
        {
            instance_destroy()
        }
        with(obj_darkener)
        {
            self.darken = 0
        }
        with(obj_heart)
        {
            instance_create(self.x, self.y, obj_returnheart)
            instance_destroy()
        }
        self.reset = 1
        if (self.noreturn == 0)
            self.alarm[2] = 15
    }
}
