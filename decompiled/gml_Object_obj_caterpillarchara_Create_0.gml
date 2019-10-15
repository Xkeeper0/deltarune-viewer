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
self.usprite = 190
self.dsprite = 187
self.rsprite = 183
self.lsprite = 180
if (global.plot >= 240)
{
    self.usprite = 190
    self.dsprite = 198
    self.rsprite = 200
    self.lsprite = 199
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
self.i = 0
while(true)
{
    if (self.i < 25)
    {
        self.remx[self.i] = obj_mainchara.x
        self.remy[self.i] = obj_mainchara.y
        self.facing[self.i] = global.facing
        self.i = (self.i + 1)
        continue
    }
    break
}
self.depth = (obj_mainchara.depth + 5)
self.mywidth = self.sprite_width
self.myheight = self.sprite_height
