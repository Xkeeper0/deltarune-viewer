self.alarm[1] = 3
self.canchoose = 0
self.dar = (global.darkzone + 1)
self.image_xscale = self.dar
self.image_yscale = self.dar
self.add = __view_get(e__VW.XView, self.view_current)
self.x = ((89 * self.dar) + self.add)
self.y = ((210 * self.dar) + __view_get(e__VW.YView, self.view_current))
self.d = -1
if instance_exists(obj_dialoguer)
    self.d = obj_dialoguer.side
if (self.d == -1)
{
    if (obj_mainchara.y > (__view_get(e__VW.YView, self.view_current) + (130 * self.dar)))
        self.y = (self.y - (155 * self.dar))
}
else
{
    if (self.d == 0)
        self.y = (self.y - (155 * self.dar))
}
self.mychoice = 0
global.choice = -1
self.choiced = 0
