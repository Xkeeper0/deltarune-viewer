self.colcol = 0
self.image_speed = 0
self.image_xscale = 2
self.image_yscale = 2
self.siner = 0
self.made = 0
self.adjust = 0
self.con = 0
global.interact = 1
self.y = (self.y + 260)
self.susx = (self.x - 80)
self.susy = (self.y + 20)
self.sussprite = 794
self.susindex = 0
self.songplay = 0
with(obj_mainchara)
{
    self.visible = 0
}
self.fin = instance_create(0, 0, obj_fadein)
with(self.fin)
{
    self.fadespeed = -0.01
}
