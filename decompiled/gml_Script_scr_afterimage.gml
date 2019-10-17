self.afterimage = instance_create(self.x, self.y, obj_afterimage)
self.afterimage.sprite_index = self.sprite_index
self.afterimage.image_index = self.image_index
self.afterimage.image_blend = self.image_blend
self.afterimage.image_speed = 0
self.afterimage.depth = self.depth
self.afterimage.image_xscale = self.image_xscale
self.afterimage.image_yscale = self.image_yscale
self.afterimage.image_angle = self.image_angle
return self.afterimage;
