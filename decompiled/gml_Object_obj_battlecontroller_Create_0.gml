if (global.flag[9] == 1)
    global.batmusic[1] = mus_loop_ext(global.batmusic[0], 0.7, 1)
self.victory = 0
self.victoried = 0
self.skipvictory = 0
global.battleend = 0
self.battlewriter = 19212912
self.myface = 1913918291
self.lbuffer = 0
self.rbuffer = 0
self.onebuffer = 0
self.twobuffer = 0
global.darkzone = 1
global.fighting = 1
global.fe = 0
global.fc = 0
global.typer = 4
global.battletyper = 4
global.myfight = 0
global.mnfight = 0
global.bmenuno = 0
global.attacking = 0
global.acting = 0
global.tension = 0
global.spelldelay = 10
scr_spellinfo_all()
global.tensionselect = 0
self.j = 0
while(true)
{
    if (self.j < 3)
    {
        global.temptension[self.j] = global.tension
        self.i = 0
        while(true)
        {
            if (self.i < 13)
            {
                self.tempitem[self.i][self.j] = global.item[self.i]
                self.i = (self.i + 1)
                continue
            }
            break
        }
        self.j = (self.j + 1)
        continue
    }
    break
}
self.i = 0
while(true)
{
    if (self.i < 3)
    {
        global.charcond[self.i] = 0
        global.automiss[self.i] = 0
        if (global.char[self.i] != 0)
        {
            global.charmove[self.i] = 1
            global.charcantarget[self.i] = 1
            global.chardead[self.i] = 0
        }
        else
        {
            global.charmove[self.i] = 0
            global.charcantarget[self.i] = 0
        }
        self.i = (self.i + 1)
        continue
    }
    break
}
self.itempage = 0
global.flag[50] = 0
global.flag[51] = 0
global.flag[52] = 0
global.flag[53] = 0
self.i = 0
while(true)
{
    if (self.i < 3)
    {
        global.monster[self.i] = 0
        global.monsterx[self.i] = 0
        global.monstery[self.i] = 0
        global.monstername[self.i] = " "@24
        global.monsterat[self.i] = 0
        global.monsterdf[self.i] = 0
        global.monsterhp[self.i] = 0
        global.monstermaxhp[self.i] = 0
        global.monsterinstance[self.i] = 12913921839
        global.monstergold[self.i] = 0
        global.monsterexp[self.i] = 0
        global.sparepoint[self.i] = 0
        global.hittarget[self.i] = 0
        global.mercymod[self.i] = 0
        global.mercymax[self.i] = 0
        global.monstercomment[self.i] = " "@24
        global.monsterstatus[self.i] = 0
        self.j = 0
        while(true)
        {
            if (self.j < 6)
            {
                global.act[self.i][self.j] = 0
                global.canact[self.i][self.j] = 0
                global.actname[self.i][self.j] = " "@24
                global.acttype[self.i][self.j] = 0
                global.actspell[self.i][self.j] = 0
                global.actactor[self.i][self.j] = 1
                global.actdesc[self.i][self.j] = " "@24
                global.actcost[self.i][self.j] = 0
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
global.monstergold[3] = 0
global.monsterexp[3] = 0
self.i = 0
while(true)
{
    if (self.i < 3)
    {
        if (global.monstertype[self.i] > 0)
        {
            global.monster[self.i] = 1
            global.monsterinstance[self.i] = instance_create(global.monstermakex[self.i], global.monstermakey[self.i], global.monsterinstancetype[self.i])
            global.monsterinstance[self.i].myself = self.i
            with(global.monsterinstance[self.i])
            {
                event_user(12)
            }
        }
        self.i = (self.i + 1)
        continue
    }
    break
}
global.charturn = 0
self.i = 0
while(true)
{
    if (self.i < 3)
    {
        global.acting[self.i] = 0
        global.charaction[self.i] = 0
        global.charspecial[self.i] = 0
        global.chartarget[self.i] = 0
        global.faceaction[self.i] = 0
        global.rembmenuno[self.i] = 0
        global.targeted[self.i] = 0
        global.battleat[self.i] = (((global.at[global.char[self.i]] + global.itemat[global.char[self.i]][0]) + global.itemat[global.char[self.i]][1]) + global.itemat[global.char[self.i]][2])
        global.battledf[self.i] = (((global.df[global.char[self.i]] + global.itemdf[global.char[self.i]][0]) + global.itemdf[global.char[self.i]][1]) + global.itemdf[global.char[self.i]][2])
        global.battlemag[self.i] = (((global.mag[global.char[self.i]] + global.itemmag[global.char[self.i]][0]) + global.itemmag[global.char[self.i]][1]) + global.itemmag[global.char[self.i]][2])
        self.i = (self.i + 1)
        continue
    }
    break
}
self.i = 0
while(true)
{
    if (self.i < 20)
    {
        self.j = 0
        while(true)
        {
            if (self.j < 20)
            {
                global.bmenucoord[self.i][self.j] = 0
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
self.movenoise = 0
self.selnoise = 0
self.laznoise = 0
self.damagenoise = 0
self.grazenoise = 0
self.bcolor = merge_color(0x800080, 0x000000, 0.7)
self.bcolor = merge_color(self.bcolor, 0x404040, 0.5)
self.tp = 0
self.tpy = 50
self.bp = 0
self.bpy = 152
self.intro = 1
self.chartotal = 0
self.charpos[0] = -1
self.charpos[1] = -1
self.charpos[2] = -1
self.havechar[0] = 0
self.havechar[1] = 0
self.havechar[2] = 0
global.charinstance[0] = 12129292
global.charinstance[1] = 12129292
global.charinstance[2] = 12129292
with(global.charinstance[0])
{
    self.myself = 0
}
with(global.charinstance[1])
{
    self.myself = 1
}
with(global.charinstance[2])
{
    self.myself = 2
}
self.mmy[0] = 0
self.mmy[1] = 0
self.mmy[2] = 0
self.i = 0
while(true)
{
    if (self.i < 3)
    {
        if (global.char[self.i] != 0)
            self.chartotal = (self.chartotal + 1)
        if (global.char[self.i] == 1)
        {
            self.havechar[0] = 1
            self.charpos[0] = self.i
            global.charinstance[self.i] = instance_create(global.heromakex[self.i], global.heromakey[self.i], obj_herokris)
            global.charinstance[self.i].myself = self.i
            global.charinstance[self.i].char = 1
            global.charinstance[self.i].depth = (200 - (self.i * 20))
        }
        if (global.char[self.i] == 2)
        {
            self.havechar[1] = 1
            self.charpos[1] = self.i
            global.charinstance[self.i] = instance_create(global.heromakex[self.i], global.heromakey[self.i], obj_herosusie)
            global.charinstance[self.i].myself = self.i
            global.charinstance[self.i].char = 2
            global.charinstance[self.i].depth = (200 - (self.i * 20))
        }
        if (global.char[self.i] == 3)
        {
            self.havechar[2] = 1
            self.charpos[2] = self.i
            global.charinstance[self.i] = instance_create(global.heromakex[self.i], global.heromakey[self.i], obj_heroralsei)
            global.charinstance[self.i].myself = self.i
            global.charinstance[self.i].char = 3
            global.charinstance[self.i].depth = (200 - (self.i * 20))
        }
        self.i = (self.i + 1)
        continue
    }
    break
}
self.slmxx = 0
self.slmyy = 0
self.s_siner = 0
instance_create(0, 0, obj_tensionbar)
self.reset = 0
self.timeron = 1
self.noreturn = 0
self.hpcolor[0] = 16776960
self.hpcolor[1] = 16711935
self.hpcolor[2] = 65280
