self.timer += 1
if (self.timer >= 16)
    self.image_alpha -= 0.1
if (self.image_alpha <= 0)
    instance_destroy()
self.image_xscale += 0.05
self.image_yscale += 0.05
