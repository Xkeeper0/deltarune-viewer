self._oflash = instance_create(self.x, self.y, obj_oflash)
self._oflash.image_xscale = self.image_xscale
self._oflash.image_speed = 0
self._oflash.image_index = self.image_index
self._oflash.image_yscale = self.image_yscale
self._oflash.sprite_index = self.sprite_index
self._oflash.depth = (self.depth - 1)
self._oflash.target = self.id
return self._oflash
