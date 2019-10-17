scr_depth()
self.image_speed = 0
self.darkmode = global.darkzone
if (self.darkmode == 1)
{
    self.image_xscale = 2
    self.image_yscale = 2
}
self.walk = 0
self.fun = 0
self.runmove = 0
self.dir = 0
self.walkbuffer = 0
self.walktimer = 0
self.blushtimer = 0
self.target = 12
self.usprite = spr_susieu_dark
self.dsprite = spr_susied_dark
self.rsprite = spr_susier_dark
self.lsprite = spr_susiel_dark
if (global.plot >= 240)
{
    self.usprite = spr_susieu_dark
    self.dsprite = spr_susied_dark_eyes
    self.rsprite = spr_susier_dark_eyes
    self.lsprite = spr_susiel_dark_eyes
}
self.usprite_blush = 206
self.dsprite_blush = 204
self.rsprite_blush = 210
self.lsprite_blush = 208
self.parent = obj_mainchara
self.pd = self.parent.dsprite
self.pr = self.parent.rsprite
self.pl = self.parent.lsprite
self.pu = self.parent.usprite
for (self.i = 0; self.i < 25; self.i += 1)
{
    self.remx[self.i] = obj_mainchara.x
    self.remy[self.i] = obj_mainchara.y
    self.facing[self.i] = global.facing
}
self.depth = (obj_mainchara.depth + 5)
self.mywidth = self.sprite_width
self.myheight = self.sprite_height
