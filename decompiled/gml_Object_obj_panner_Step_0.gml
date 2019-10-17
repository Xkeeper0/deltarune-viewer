__view_set(0, 0, (__view_get(0, 0) + self.panx))
__view_set(1, 0, (__view_get(1, 0) + self.pany))
self.pantimer += 1
if (self.pantimer >= self.panmax)
    instance_destroy()
