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
if instance_exists(obj_heart)
    self.futuredir = point_direction(self.x, self.y, (obj_heart.x + 8), (obj_heart.y + 8))
else
    instance_destroy()
