self.image_xscale += 0.08
self.image_yscale += 0.08
self.image_alpha -= 0.05
if (self.image_alpha < 0)
    instance_destroy()
