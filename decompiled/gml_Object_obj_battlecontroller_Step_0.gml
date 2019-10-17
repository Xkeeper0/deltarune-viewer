if ((self.victory == 1) && (self.victoried == 0))
{
    global.faceaction[0] = 0
    global.faceaction[1] = 0
    global.faceaction[2] = 0
    global.battleend = 1
    global.mnfight = -1
    global.myfight = 7
    with (self.battlewriter)
        instance_destroy()
    with (obj_face)
        instance_destroy()
    with (obj_smallface)
        instance_destroy()
    for (self.i = 0; self.i < 4; self.i += 1)
    {
        if (global.hp[self.i] < 1)
            global.hp[self.i] = round((global.maxhp[self.i] / 8))
    }
    self.lastbattlewriter = 32482473284732
    if (self.skipvictory == 0)
    {
        global.monstergold[3] += floor((global.tension / 10))
        if (global.charweapon[1] == 8)
            global.monstergold[3] += floor((global.monstergold[3] / 20))
        global.gold += global.monstergold[3]
        global.xp += global.monsterexp[3]
        global.fc = 0
        global.fe = 0
        global.battlemsg[0] = scr_84_get_subst_string(scr_84_get_lang_string("obj_battlecontroller_slash_Step_0_gml_40_0"), string(global.monsterexp[3]), string(global.monstergold[3]))
        global.msg[0] = global.battlemsg[0]
        global.typer = global.battletyper
        self.lastbattlewriter = scr_battletext()
        for (self.i = 0; self.i < 3; self.i += 1)
        {
            with (global.charinstance[self.i])
            {
                self.state = 7
                self.hurt = 0
                self.hurttimer = 0
            }
        }
    }
    self.victoried = 1
    self.victortimer = 0
    if (self.skipvictory == 1)
        self.victortimer = -20
    with (obj_tensionbar)
    {
        self.alarm[5] = 15
        self.hspeed = -10
        self.friction = -0.4
    }
    if instance_exists(obj_hathyfightevent)
    {
        with (obj_hathyfightevent)
            self.con = 30
        self.victoried = 2
        with (self.lastbattlewriter)
            instance_destroy()
    }
}
if (self.victoried == 1)
{
    self.victortimer += 1
    if ((instance_exists(self.lastbattlewriter) == 0) && (self.victortimer >= 10))
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
        if (!instance_exists(self.battlewriter))
        {
            global.msg[0] = global.battlemsg[0]
            global.typer = global.battletyper
            scr_battletext()
        }
        if ((left_p() == 1) && (self.lbuffer < 0))
        {
            if (global.bmenucoord[0, global.charturn] == 0)
                global.bmenucoord[0, global.charturn] = 4
            else
                global.bmenucoord[0, global.charturn] -= 1
            self.movenoise = 1
            self.rbuffer = 1
        }
        if ((right_p() == 1) && (self.rbuffer < 0))
        {
            if (global.bmenucoord[0, global.charturn] == 4)
                global.bmenucoord[0, global.charturn] = 0
            else
                global.bmenucoord[0, global.charturn] += 1
            self.movenoise = 1
            self.lbuffer = 1
        }
        if ((button1_p() == 1) && (self.twobuffer < 0))
        {
            self.onebuffer = 1
            self.selnoise = 1
            if (global.bmenucoord[0, global.charturn] == 0)
                global.bmenuno = 1
            if ((global.bmenucoord[0, global.charturn] == 1) && (global.char[global.charturn] != 1))
            {
                self.onebuffer = 1
                global.bmenuno = 2
            }
            if ((global.bmenucoord[0, global.charturn] == 1) && (global.char[global.charturn] == 1))
            {
                self.onebuffer = 1
                global.bmenuno = 11
            }
            if ((global.bmenucoord[0, global.charturn] == 2) && (self.tempitem[0] != 0))
            {
                self.onebuffer = 1
                global.bmenuno = 4
                scr_iteminfo_temp(global.charturn)
                for (self.i = 0; self.i < 12; self.i += 1)
                {
                    if ((self.tempitem[global.bmenucoord[4, global.charturn], global.charturn] == 0) && (global.bmenucoord[4, global.charturn] > 0))
                        global.bmenucoord[4, global.charturn] -= 1
                }
            }
            if (global.bmenucoord[0, global.charturn] == 3)
            {
                self.onebuffer = 1
                global.bmenuno = 12
            }
            if (global.bmenucoord[0, global.charturn] == 4)
            {
                scr_tensionheal(40)
                global.faceaction[global.charturn] = 4
                global.charaction[global.charturn] = 10
                scr_nexthero()
            }
        }
        if ((button2_p() == 1) && ((self.onebuffer < 0) && (global.charturn > 0)))
        {
            self.twobuffer = 1
            self.movenoise = 1
            scr_prevhero()
        }
        with (self.battlewriter)
            self.depth = 3
        with (obj_face_parent)
            self.depth = 3
        with (obj_smallface)
            self.depth = 3
    }
    if (global.bmenuno == 2)
    {
        with (self.battlewriter)
            self.skipme = 1
        with (self.battlewriter)
            self.depth = 10
        with (obj_face_parent)
            self.depth = 10
        with (obj_smallface)
            self.depth = 10
        self.thischar = global.char[global.charturn]
        if right_p()
        {
            self.cango = 1
            self.spellcoord = global.bmenucoord[2, global.charturn]
            if (self.spellcoord < 11)
            {
                if (global.spell[self.thischar, (global.bmenucoord[2, global.charturn] + 1)] == 0)
                {
                    self.cango = 0
                    if (((self.spellcoord % 2) == 1) && (self.spellcoord > 0))
                        global.bmenucoord[2, global.charturn] -= 1
                }
            }
            else
            {
                global.bmenucoord[2, global.charturn] -= 1
                self.cango = 0
            }
            if (self.cango == 1)
            {
                if ((self.spellcoord % 2) == 0)
                    global.bmenucoord[2, global.charturn] += 1
                else
                    global.bmenucoord[2, global.charturn] -= 1
            }
        }
        if left_p()
        {
            self.cango = 1
            self.spellcoord = global.bmenucoord[2, global.charturn]
            if (global.spell[self.thischar, 1] != 0)
            {
                if ((self.spellcoord % 2) == 0)
                    global.bmenucoord[2, global.charturn] += 1
                else
                    global.bmenucoord[2, global.charturn] -= 1
            }
        }
        if down_p()
        {
            self.spellcoord = global.bmenucoord[2, global.charturn]
            self.cango = 1
            if (self.spellcoord >= 10)
                self.cango = 0
            else
            {
                if (global.spell[self.thischar, (self.spellcoord + 2)] == 0)
                    self.cango = 0
                if ((self.spellcoord == 5) && ((global.spell[self.thischar, 6] != 0) && (global.spell[self.thischar, 7] == 0)))
                    self.cango = 2
            }
            if (self.cango != 0)
            {
                if (self.cango == 1)
                    global.bmenucoord[2, global.charturn] += 2
                if (self.cango == 2)
                    global.bmenucoord[2, global.charturn] = 6
            }
        }
        if up_p()
        {
            self.spellcoord = global.bmenucoord[2, global.charturn]
            self.cango = 1
            if (self.spellcoord <= 1)
                self.cango = 0
            if (self.cango == 1)
                global.bmenucoord[2, global.charturn] -= 2
        }
        global.tensionselect = global.spellcost[self.thischar, global.bmenucoord[2, global.charturn]]
        if (button1_p() && ((global.spell[self.thischar, global.bmenucoord[2, global.charturn]] != 0) && (self.onebuffer < 0)))
        {
            if (global.spellcost[self.thischar, global.bmenucoord[2, global.charturn]] <= global.tension)
            {
                self.onebuffer = 2
                global.bmenuno = 0
                self.selnoise = 1
                scr_spellinfo(global.spell[self.thischar, global.bmenucoord[2, global.charturn]])
                if (self.spelltarget == 0)
                    scr_spellconsumeb()
                if (self.spelltarget == 1)
                    global.bmenuno = 8
                if (self.spelltarget == 2)
                    global.bmenuno = 3
            }
        }
        if (button2_p() && (self.onebuffer < 0))
        {
            global.tensionselect = 0
            self.twobuffer = 1
            global.bmenuno = 0
            self.movenoise = 1
        }
    }
    if (global.bmenuno == 4)
    {
        with (self.battlewriter)
            self.skipme = 1
        with (self.battlewriter)
            self.depth = 10
        with (obj_face_parent)
            self.depth = 10
        with (obj_smallface)
            self.depth = 10
        if (self.tempitem[global.bmenucoord[4, global.charturn], global.charturn] == 0)
            global.bmenucoord[4, global.charturn] -= 1
        if right_p()
        {
            self.cango = 1
            self.itemcoord = global.bmenucoord[4, global.charturn]
            if (self.itemcoord < 11)
            {
                if (self.tempitem[(global.bmenucoord[4, global.charturn] + 1), global.charturn] == 0)
                {
                    self.cango = 0
                    if (((self.itemcoord % 2) == 1) && (self.itemcoord > 0))
                        global.bmenucoord[4, global.charturn] -= 1
                }
            }
            else
            {
                global.bmenucoord[4, global.charturn] -= 1
                self.cango = 0
            }
            if (self.cango == 1)
            {
                if ((self.itemcoord % 2) == 0)
                    global.bmenucoord[4, global.charturn] += 1
                else
                    global.bmenucoord[4, global.charturn] -= 1
            }
        }
        if left_p()
        {
            self.cango = 1
            self.itemcoord = global.bmenucoord[4, global.charturn]
            if (self.tempitem[1, global.charturn] != 0)
            {
                if ((self.itemcoord % 2) == 0)
                    global.bmenucoord[4, global.charturn] += 1
                else
                    global.bmenucoord[4, global.charturn] -= 1
            }
        }
        if down_p()
        {
            self.itemcoord = global.bmenucoord[4, global.charturn]
            self.cango = 1
            if (self.itemcoord >= 10)
                self.cango = 0
            else
            {
                if (self.tempitem[(self.itemcoord + 2), global.charturn] == 0)
                    self.cango = 0
                if ((self.itemcoord == 5) && ((self.tempitem[6, global.charturn] != 0) && (self.tempitem[7, global.charturn] == 0)))
                    self.cango = 2
            }
            if (self.cango != 0)
            {
                if (self.cango == 1)
                    global.bmenucoord[4, global.charturn] += 2
                if (self.cango == 2)
                    global.bmenucoord[4, global.charturn] = 6
            }
        }
        if up_p()
        {
            self.itemcoord = global.bmenucoord[4, global.charturn]
            self.cango = 1
            if (self.itemcoord <= 1)
                self.cango = 0
            if (self.cango == 1)
                global.bmenucoord[4, global.charturn] -= 2
        }
        if (self.tempitem[global.bmenucoord[4, global.charturn], global.charturn] == 0)
            global.bmenucoord[4, global.charturn] -= 1
        if (button1_p() && ((self.tempitem[global.bmenucoord[4, global.charturn], global.charturn] != 0) && (self.onebuffer < 0)))
        {
            self.onebuffer = 2
            global.bmenuno = 0
            self.selnoise = 1
            scr_iteminfo(self.tempitem[global.bmenucoord[4, global.charturn], global.charturn])
            if ((self.itemtarget == 0) || (self.itemtarget == 2))
                scr_itemconsumeb()
            if (self.itemtarget == 1)
                global.bmenuno = 7
        }
        if (button2_p() && (self.onebuffer < 0))
        {
            self.twobuffer = 1
            global.bmenuno = 0
            self.movenoise = 1
        }
    }
    if (global.bmenuno == 9)
    {
        self.thisenemy = global.bmenucoord[11, global.charturn]
        if right_p()
        {
            self.cango = 1
            self.actcoord = global.bmenucoord[9, global.charturn]
            if (self.actcoord < 5)
            {
                if (global.canact[self.thisenemy, (global.bmenucoord[9, global.charturn] + 1)] == 0)
                {
                    self.cango = 0
                    if (((self.actcoord % 2) == 1) && (self.actcoord > 0))
                        global.bmenucoord[9, global.charturn] -= 1
                }
            }
            else
            {
                global.bmenucoord[9, global.charturn] -= 1
                self.cango = 0
            }
            if (self.cango == 1)
            {
                if ((self.actcoord % 2) == 0)
                    global.bmenucoord[9, global.charturn] += 1
                else
                    global.bmenucoord[9, global.charturn] -= 1
            }
        }
        if left_p()
        {
            self.cango = 1
            self.actcoord = global.bmenucoord[9, global.charturn]
            if ((self.actcoord % 2) == 0)
            {
                if (global.canact[self.thisenemy, (self.actcoord + 1)] != 0)
                    global.bmenucoord[9, global.charturn] += 1
            }
            else
                global.bmenucoord[9, global.charturn] -= 1
        }
        if down_p()
        {
            self.actcoord = global.bmenucoord[9, global.charturn]
            self.cango = 1
            if (self.actcoord >= 4)
                self.cango = 0
            else if (global.canact[self.thisenemy, (self.actcoord + 2)] == 0)
                self.cango = 0
            if (self.cango != 0)
            {
                if (self.cango == 1)
                    global.bmenucoord[9, global.charturn] += 2
            }
        }
        if up_p()
        {
            self.actcoord = global.bmenucoord[9, global.charturn]
            self.cango = 1
            if (self.actcoord <= 1)
                self.cango = 0
            if (self.cango == 1)
                global.bmenucoord[9, global.charturn] -= 2
        }
        global.tensionselect = global.actcost[self.thisenemy, global.bmenucoord[9, global.charturn]]
        self.canpress = 1
        if ((global.actactor[global.bmenucoord[11, global.charturn], global.bmenucoord[9, global.charturn]] == 2) || (global.actactor[global.bmenucoord[11, global.charturn], global.bmenucoord[9, global.charturn]] == 4))
        {
            if ((self.havechar[1] == 0) || (global.hp[2] <= 0))
                self.canpress = 0
        }
        if ((global.actactor[global.bmenucoord[11, global.charturn], global.bmenucoord[9, global.charturn]] == 3) || (global.actactor[global.bmenucoord[11, global.charturn], global.bmenucoord[9, global.charturn]] == 4))
        {
            if ((self.havechar[2] == 0) || (global.hp[3] <= 0))
                self.canpress = 0
        }
        if (self.canpress == 1)
        {
            if (button1_p() && ((global.canact[self.thisenemy, global.bmenucoord[9, global.charturn]] == 1) && ((global.tension >= global.tensionselect) && (self.onebuffer < 0))))
            {
                self.onebuffer = 2
                global.bmenuno = 0
                self.selnoise = 1
                global.tension -= global.actcost[self.thisenemy, global.bmenucoord[9, global.charturn]]
                global.tensionselect = 0
                if instance_exists(global.monsterinstance[self.thisenemy])
                    global.monsterinstance[self.thisenemy].acting = (global.bmenucoord[9, global.charturn] + 1)
                global.acting[0] = 1
                if (global.actactor[global.bmenucoord[11, global.charturn], global.bmenucoord[9, global.charturn]] == 2)
                    global.acting[self.charpos[1]] = 1
                if (global.actactor[global.bmenucoord[11, global.charturn], global.bmenucoord[9, global.charturn]] == 3)
                    global.acting[self.charpos[2]] = 1
                if (global.actactor[global.bmenucoord[11, global.charturn], global.bmenucoord[9, global.charturn]] == 4)
                {
                    global.acting[2] = 1
                    global.acting[1] = 1
                }
                for (self.i = 0; self.i < 3; self.i += 1)
                {
                    if (global.acting[self.i] == 1)
                    {
                        global.faceaction[self.i] = 6
                        global.charaction[self.i] = 9
                    }
                }
                scr_nexthero()
            }
        }
        if (button2_p() && (self.onebuffer < 0))
        {
            global.tensionselect = 0
            self.twobuffer = 1
            global.bmenuno = 11
            self.movenoise = 1
        }
    }
    if ((global.bmenuno == 7) || ((global.bmenuno == 1) || ((global.bmenuno == 8) || ((global.bmenuno == 3) || ((global.bmenuno == 11) || (global.bmenuno == 12))))))
    {
        with (self.battlewriter)
            self.skipme = 1
        with (self.battlewriter)
            self.depth = 10
        with (obj_face_parent)
            self.depth = 10
        with (obj_smallface)
            self.depth = 10
        if (button2_p() && (self.onebuffer < 0))
        {
            self.twobuffer = 1
            if ((global.bmenuno == 1) || ((global.bmenuno == 11) || (global.bmenuno == 12)))
                global.bmenuno = 0
            if (global.bmenuno == 7)
                global.bmenuno = 4
            if ((global.bmenuno == 8) || (global.bmenuno == 3))
                global.bmenuno = 2
            self.movenoise = 1
        }
        if ((global.bmenuno == 7) || ((global.bmenuno == 1) || ((global.bmenuno == 8) || ((global.bmenuno == 3) || ((global.bmenuno == 11) || (global.bmenuno == 12))))))
        {
            if ((global.bmenuno == 7) || (global.bmenuno == 8))
            {
                for (self.i = 0; self.i < 3; self.i += 1)
                {
                    self.ht[self.i] = 0
                    if (global.char[self.i] > 0)
                        self.ht[self.i] = 1
                }
            }
            if ((global.bmenuno == 1) || ((global.bmenuno == 3) || ((global.bmenuno == 11) || (global.bmenuno == 12))))
            {
                for (self.i = 0; self.i < 3; self.i += 1)
                    self.ht[self.i] = global.monster[self.i]
            }
            if ((global.bmenucoord[global.bmenuno, global.charturn] == 2) && (self.ht[2] == 0))
                global.bmenucoord[global.bmenuno, global.charturn] = 0
            if ((global.bmenucoord[global.bmenuno, global.charturn] == 0) && (self.ht[0] == 0))
                global.bmenucoord[global.bmenuno, global.charturn] = 1
            if ((global.bmenucoord[global.bmenuno, global.charturn] == 1) && (self.ht[1] == 0))
                global.bmenucoord[global.bmenuno, global.charturn] = 0
            if ((global.bmenucoord[global.bmenuno, global.charturn] == 0) && (self.ht[0] == 0))
                global.bmenucoord[global.bmenuno, global.charturn] = 2
            if (down_p() == 1)
            {
                if (global.bmenucoord[global.bmenuno, global.charturn] == 0)
                {
                    if (self.ht[1] == 1)
                    {
                        self.movenoise = 1
                        global.bmenucoord[global.bmenuno, global.charturn] = 1
                    }
                    else if (self.ht[2] == 1)
                    {
                        self.movenoise = 1
                        global.bmenucoord[global.bmenuno, global.charturn] = 2
                    }
                }
                else if (global.bmenucoord[global.bmenuno, global.charturn] == 1)
                {
                    if (self.ht[2] == 1)
                    {
                        self.movenoise = 1
                        global.bmenucoord[global.bmenuno, global.charturn] = 2
                    }
                    else if (self.ht[0] == 1)
                    {
                        self.movenoise = 1
                        global.bmenucoord[global.bmenuno, global.charturn] = 0
                    }
                }
                else if (global.bmenucoord[global.bmenuno, global.charturn] == 2)
                {
                    if (self.ht[0] == 1)
                    {
                        self.movenoise = 1
                        global.bmenucoord[global.bmenuno, global.charturn] = 0
                    }
                    else if (self.ht[1] == 1)
                    {
                        self.movenoise = 1
                        global.bmenucoord[global.bmenuno, global.charturn] = 1
                    }
                }
            }
            if (up_p() == 1)
            {
                if (global.bmenucoord[global.bmenuno, global.charturn] == 0)
                {
                    if (self.ht[2] == 1)
                    {
                        self.movenoise = 1
                        global.bmenucoord[global.bmenuno, global.charturn] = 2
                    }
                    else if (self.ht[1] == 1)
                    {
                        self.movenoise = 1
                        global.bmenucoord[global.bmenuno, global.charturn] = 1
                    }
                }
                else if (global.bmenucoord[global.bmenuno, global.charturn] == 1)
                {
                    if (self.ht[0] == 1)
                    {
                        self.movenoise = 1
                        global.bmenucoord[global.bmenuno, global.charturn] = 0
                    }
                    else if (self.ht[2] == 1)
                    {
                        self.movenoise = 1
                        global.bmenucoord[global.bmenuno, global.charturn] = 2
                    }
                }
                else if (global.bmenucoord[global.bmenuno, global.charturn] == 2)
                {
                    if (self.ht[1] == 1)
                    {
                        self.movenoise = 1
                        global.bmenucoord[global.bmenuno, global.charturn] = 1
                    }
                    else if (self.ht[0] == 1)
                    {
                        self.movenoise = 1
                        global.bmenucoord[global.bmenuno, global.charturn] = 0
                    }
                }
            }
            if (button1_p() && (self.onebuffer < 0))
            {
                self.onebuffer = 1
                self.selnoise = 1
                if (global.bmenuno == 1)
                {
                    global.chartarget[global.charturn] = global.bmenucoord[global.bmenuno, global.charturn]
                    global.faceaction[global.charturn] = 1
                    global.charaction[global.charturn] = 1
                    scr_nexthero()
                }
                if (global.bmenuno == 7)
                {
                    global.chartarget[global.charturn] = global.bmenucoord[global.bmenuno, global.charturn]
                    scr_itemconsumeb()
                }
                if ((global.bmenuno == 8) || (global.bmenuno == 3))
                {
                    global.chartarget[global.charturn] = global.bmenucoord[global.bmenuno, global.charturn]
                    scr_spellconsumeb()
                }
                if (global.bmenuno == 11)
                {
                    global.bmenuno = 9
                    self.actcoord = global.bmenucoord[9, global.charturn]
                    self.thisenemy = global.bmenucoord[11, global.charturn]
                    for (self.i = 0; self.i < 6; self.i += 1)
                    {
                        if (global.canact[self.thisenemy, self.actcoord] == 0)
                        {
                            if (self.actcoord > 0)
                                global.bmenucoord[9, global.charturn] -= 1
                        }
                    }
                    self.onebuffer = 1
                }
                if (global.bmenuno == 12)
                {
                    global.faceaction[global.charturn] = 10
                    global.chartarget[global.charturn] = global.bmenucoord[global.bmenuno, global.charturn]
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
self.onebuffer -= 1
self.twobuffer -= 1
self.lbuffer -= 1
self.rbuffer -= 1
if ((global.mnfight == 2) && (self.timeron == 1))
{
    global.turntimer -= 1
    if ((global.turntimer <= 0) && (self.reset == 0))
    {
        with (obj_bulletparent)
            instance_destroy()
        with (obj_bulletgenparent)
            instance_destroy()
        with (obj_darkener)
            self.darken = 0
        with (obj_heart)
        {
            instance_create(self.x, self.y, obj_returnheart)
            instance_destroy()
        }
        self.reset = 1
        if (self.noreturn == 0)
            self.alarm[2] = 15
    }
}
