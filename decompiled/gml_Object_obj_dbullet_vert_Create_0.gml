if (self.y < (__view_get(1, 0) + 20))
    self.y = (__view_get(1, 0) + 20)
if (self.y > (__view_get(1, 0) + 460))
    self.y = (__view_get(1, 0) + 460)
self.difficulty = 1
self.times = 0
self.activetimer = 0
self.grazed = 0
self.grazepoints = 5
self.timepoints = 5
self.target = 0
self.dont = 1
self.inv = 120
self.damage = 124
self.active = 0
self.image_alpha = 0
if (!instance_exists(obj_heart))
    instance_destroy()
self.type = 0
