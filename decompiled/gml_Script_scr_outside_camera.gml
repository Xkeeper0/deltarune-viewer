self._offcamera = 0
self.rightx = (self.x + self.sprite_width)
self.leftx = self.x
self.bottomy = (self.y + self.sprite_height)
self.topy = self.y
if (self.x > ((__view_get(0, 0) + __view_get(2, 0)) + self.argument0))
    self._offcamera = 1
if (self.rightx < (__view_get(0, 0) - self.argument0))
    self._offcamera = 1
if (self.y > ((__view_get(1, 0) + __view_get(3, 0)) + self.argument0))
    self._offcamera = 1
if (self.bottomy < (__view_get(1, 0) - self.argument0))
    self._offcamera = 1
return self._offcamera;
