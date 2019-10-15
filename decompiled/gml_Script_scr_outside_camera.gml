self._offcamera = 0
self.rightx = (self.x + self.sprite_width)
self.leftx = self.x
self.bottomy = (self.y + self.sprite_height)
self.topy = self.y
if (self.x > ((__view_get(e__VW.XView, 0) + __view_get(e__VW.WView, 0)) + self.argument0))
    self._offcamera = 1
if (self.rightx < (__view_get(e__VW.XView, 0) - self.argument0))
    self._offcamera = 1
if (self.y > ((__view_get(e__VW.YView, 0) + __view_get(e__VW.HView, 0)) + self.argument0))
    self._offcamera = 1
if (self.bottomy < (__view_get(e__VW.YView, 0) - self.argument0))
    self._offcamera = 1
return self._offcamera
