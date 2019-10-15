self.alarm[1] = 3
self.canchoose = 0
self.dar = (global.darkzone + 1)
global.flag[33] = 0
self.image_xscale = self.dar
self.image_yscale = self.dar
self.remfc = global.fc
global.fc = 0
self.xx = __view_get(e__VW.XView, self.view_current)
self.yy = __view_get(e__VW.YView, self.view_current)
self.d = -1
if instance_exists(obj_dialoguer)
    self.d = obj_dialoguer.side
self.d_add = 0
if (self.d == -1)
{
    if (obj_mainchara.y <= (__view_get(e__VW.YView, self.view_current) + (130 * self.dar)))
        self.d_add = 155
}
else
{
    if (self.d != 0)
        self.d_add = 155
}
self.chx = ((140 * self.dar) + self.xx)
self.chy = (((36 + self.d_add) * self.dar) + self.yy)
self.hx = self.chx
self.hy = self.chy
self.mychoice = -1
global.choice = -1
self.choiced = 0
self.choicetotal = 3
self.textposx[0] = 0
self.textposy[0] = 0
self.textposx[1] = 0
self.textposy[1] = 0
self.textposx[2] = 0
self.textposy[2] = 0
self.textposx[3] = 0
self.textposy[3] = 0
self.candraw = 0
