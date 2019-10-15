self.defeatanim = instance_create(self.x, self.y, obj_defeatanim)
self.defeatanim.sprite_index = self.sprite_index
self.defeatanim.sprite_index = self.hurtsprite
self.defeatanim.image_index = 0
self.defeatanim.image_xscale = self.image_xscale
self.defeatanim.image_yscale = self.image_yscale
instance_destroy()
