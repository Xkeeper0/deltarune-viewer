self.image_alpha -= 0.1
self.image_xscale += self.mag
self.image_yscale += self.mag
self.x += (((1 - self.sprite_width) * self.mag) / 2.7)
self.y += (((1 - self.sprite_height) * self.mag) / 2.5)
if (self.image_alpha < 0)
    instance_destroy()
