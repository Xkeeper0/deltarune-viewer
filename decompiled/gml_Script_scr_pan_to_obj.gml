self._wd = (self.argument0.x - floor(((__view_get(2, 0) / 2) - (self.argument0.sprite_width / 2))))
self._ht = (self.argument0.y - floor(((__view_get(3, 0) / 2) - (self.argument0.sprite_height / 2))))
self._vx = self._wd
self._vy = self._ht
if (self._vx < 0)
    self._vx = 0
if (self._vx > (self.room_width - self._vx))
    self._vx = (self.room_width - self._vx)
if (self._vy < 0)
    self._vy = 0
if (self._vy > (self.room_height - __view_get(3, 0)))
    self._vy = (self.room_height - __view_get(3, 0))
scr_pan(((self._vx - __view_get(0, 0)) / self.argument1), ((self._vy - __view_get(1, 0)) / self.argument1), self.argument1)
