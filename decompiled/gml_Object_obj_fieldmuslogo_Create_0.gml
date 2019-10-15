self.siner = 0
self.image_xscale = 2
self.image_yscale = 2
self.image_alpha = 0
self.offx = 0
if (global.lang == "ja"@1566)
    self.sprite_index = spr_ja_fieldmuslogo
self.x = ((__view_get(e__VW.XView, 0) + 180) - self.offx)
self.y = (__view_get(e__VW.YView, 0) + 100)
with(obj_mainchara)
{
    self.bg = 1
}
