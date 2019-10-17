self.cur_jewel = 0
self.alarm[0] = 1
self.charcon = 0
self.chartimer = 0
self.tp = 0
self.xx = __view_get(0, 0)
self.yy = __view_get(1, 0)
global.fighting = 0
self.movenoise = 0
self.selectnoise = 0
self.onebuffer = 0
self.twobuffer = 0
self.threebuffer = 0
self.upbuffer = 0
self.downbuffer = 0
self.hold_up = 0
self.hold_down = 0
self.dograndom = 0
self.atalk = 0
self.bcolor = merge_color(0x00800080, 0x00000000, 0.7)
self.bcolor = merge_color(self.bcolor, 0x00404040, 0.5)
self.chartotal = 0
self.havechar[0] = 0
self.havechar[1] = 0
self.havechar[2] = 0
global.charturn = 3
self.tp = 0
self.tpy = 50
self.bp = 0
self.bpy = 152
self.mmy[0] = 0
self.mmy[1] = 0
self.mmy[2] = 0
global.submenu = 0
global.charselect = -1
for (self.i = 0; self.i < 36; self.i += 1)
    global.submenucoord[self.i] = 0
global.cinstance[0] = 4343434343
global.cinstance[1] = 343434343434
for (self.i = 0; self.i < 3; self.i += 1)
{
    global.faceaction[self.i] = 0
    if (global.char[self.i] != 0)
        self.chartotal += 1
    if (global.char[self.i] == 1)
    {
        self.havechar[0] = 1
        self.charpos[0] = self.i
    }
    if (global.char[self.i] == 2)
    {
        self.havechar[1] = 1
        self.charpos[1] = self.i
        if (self.i > 0)
        {
            global.cinstance[(self.i - 1)] = instance_create((obj_mainchara.x - 6), (obj_mainchara.y - 16), obj_caterpillarchara)
            global.cinstance[(self.i - 1)].target = (self.i * 12)
        }
    }
    if (global.char[self.i] == 3)
    {
        self.havechar[2] = 1
        self.charpos[2] = self.i
        if (self.i > 0)
        {
            global.cinstance[(self.i - 1)] = instance_create((obj_mainchara.x - 4), (obj_mainchara.y - 12), obj_caterpillarchara)
            global.cinstance[(self.i - 1)].target = (self.i * 12)
            with (global.cinstance[(self.i - 1)])
            {
                self.usprite = spr_ralseiu
                self.dsprite = spr_ralseid
                self.rsprite = spr_ralseir
                self.lsprite = spr_ralseil
            }
        }
    }
}
self.slmxx = 0
self.slmyy = 0
self.s_siner = 0
self.menusiner = 0
self.pagemax[0] = 0
self.pagemax[1] = 0
self.getmusvol = 1
self.curvol = 1
self.hpcolor[0] = 16776960
self.hpcolor[1] = 16711935
self.hpcolor[2] = 65280
