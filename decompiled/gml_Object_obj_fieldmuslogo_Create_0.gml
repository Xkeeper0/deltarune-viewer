self.siner = 0
self.image_xscale = 2
self.image_yscale = 2
self.image_alpha = 0
self.offx = 0
if (global.lang == "ja")
    self.sprite_index = spr_ja_fieldmuslogo
self.x = ((__view_get(0, 0) + 180) - self.offx)
self.y = (__view_get(1, 0) + 100)
with (obj_mainchara)
    self.bg = 1
