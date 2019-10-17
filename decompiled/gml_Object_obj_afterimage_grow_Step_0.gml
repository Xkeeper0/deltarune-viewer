self.image_alpha -= self.fade
self.image_xscale += self.xrate
self.image_yscale += self.yrate
if (self.image_alpha < 0)
    instance_destroy()
