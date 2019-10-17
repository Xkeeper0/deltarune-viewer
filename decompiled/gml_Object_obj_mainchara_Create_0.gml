scr_depth()
self.alarm[2] = 2
global.currentroom = self.room
self.autorun = 0
self.bg = 0
if instance_exists(obj_backgrounderparent)
    self.bg = 1
self.stepping = 0
self.stepped = 0
self.battlemode = 0
self.battleheart = instance_create(self.x, self.y, obj_overworldheart)
self.battleheart.image_alpha = 0
self.battleheart.image_speed = 0
self.battlealpha = 0
self.becamebattle = 0
self.darkmode = global.darkzone
if (self.darkmode == 1)
{
    self.stepping = 1
    self.image_xscale = 2
    self.image_yscale = 2
}
self.cutscene = 0
self.press_l = 0
self.press_r = 0
self.press_d = 0
self.press_u = 0
self.px = 0
self.py = 0
self.wallcheck = 0
self.wspeed = 3
self.bwspeed = 3
if (self.darkmode == 1)
{
    self.bwspeed = 4
    self.wspeed = 4
}
self.run = 0
self.runtimer = 0
self.subxspeed = 0
self.subyspeed = 0
self.subx = 0
self.suby = 0
self.walkanim = 0
self.walkbuffer = 0
self.walktimer = 0
self.image_speed = 0
self.dsprite = spr_krisd
self.rsprite = spr_krisr
self.usprite = spr_krisu
self.lsprite = spr_krisl
if (global.darkzone == 1)
{
    self.dsprite = spr_krisd_dark
    self.rsprite = spr_krisr_dark
    self.lsprite = spr_krisl_dark
    self.usprite = spr_krisu_dark
}
self.fun = 0
if (global.facing == 0)
    self.sprite_index = self.dsprite
if (global.facing == 1)
    self.sprite_index = self.rsprite
if (global.facing == 2)
    self.sprite_index = self.usprite
if (global.facing == 3)
    self.sprite_index = self.lsprite
self.onebuffer = 0
self.twobuffer = 0
self.threebuffer = 0
global.menuno = 0
for (self.i = 0; self.i < 10; self.i += 1)
    global.menucoord[self.i] = 0
if (global.interact == 3)
{
    if (global.entrance > 0)
    {
        global.interact = 0
        if (global.entrance == 1)
        {
            self.x = obj_markerA.x
            self.y = obj_markerA.y
        }
        if (global.entrance == 2)
        {
            self.x = obj_markerB.x
            self.y = obj_markerB.y
        }
        if (global.entrance == 4)
        {
            self.x = obj_markerC.x
            self.y = obj_markerC.y
        }
        if (global.entrance == 5)
        {
            self.x = obj_markerD.x
            self.y = obj_markerD.y
        }
        if (global.entrance == 6)
        {
            self.x = obj_markerE.x
            self.y = obj_markerE.y
        }
        if (global.entrance == 7)
        {
            self.x = obj_markerF.x
            self.y = obj_markerF.y
        }
        if (global.entrance == 18)
        {
            self.x = obj_markerr.x
            self.y = obj_markerr.y
        }
        if (global.entrance == 19)
        {
            self.x = obj_markers.x
            self.y = obj_markers.y
        }
        if (global.entrance == 20)
        {
            self.x = obj_markert.x
            self.y = obj_markert.y
        }
        if (global.entrance == 21)
        {
            self.x = obj_markeru.x
            self.y = obj_markeru.y
        }
        if (global.entrance == 22)
        {
            self.x = obj_markerv.x
            self.y = obj_markerv.y
        }
        if (global.entrance == 23)
        {
            self.x = obj_markerw.x
            self.y = obj_markerw.y
        }
        if (global.entrance == 24)
        {
            self.x = obj_markerX.x
            self.y = obj_markerX.y
        }
    }
}
self.initwd = self.sprite_width
self.initht = self.sprite_height
self.mywidth = self.sprite_width
self.myheight = self.sprite_height
for (self.i = 0; self.i < 3; self.i += 1)
    global.battledf[self.i] = (((global.df[global.char[self.i]] + global.itemdf[global.char[self.i], 0]) + global.itemdf[global.char[self.i], 1]) + global.itemdf[global.char[self.i], 2])
