self.burst = 0
self.shift = 1
self.image_alpha = 1
self.flytime = 8
self.distx = (obj_herokris.x + 10)
self.disty = (obj_herokris.y + 40)
self.dist = point_distance(self.x, self.y, self.distx, self.disty)
move_towards_point(self.distx, self.disty, (self.dist / self.flytime))
self.alarm[0] = self.flytime
self.image_speed = 0
