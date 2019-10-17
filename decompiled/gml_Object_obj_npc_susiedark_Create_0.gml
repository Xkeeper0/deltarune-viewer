self.dtsprite = spr_susied_dark
self.rtsprite = spr_susier_dark
self.ltsprite = spr_susiel_dark
self.utsprite = spr_susieu_dark
self.myinteract = 0
self.facing = 2
self.dfacing = 2
self.image_speed = 0
self.talked = 0
self.image_xscale = 2
self.image_yscale = 2
scr_depth()
if (global.plot >= 30)
    instance_destroy()
else
{
    self.s = instance_create(450, 950, obj_soliddark)
    self.s.image_yscale = 8
}
