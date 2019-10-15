self.burst = 0
self.shift = 1
self.image_alpha = 0
self.flytime = 8
if instance_exists(obj_heartmarker)
{
    self.distx = obj_heartmarker.x
    self.disty = obj_heartmarker.y
}
else
{
    self.distx = (__view_get(e__VW.XView, 0) + 310)
    self.disty = (__view_get(e__VW.YView, 0) + 160)
}
self.dist = point_distance(self.x, self.y, self.distx, self.disty)
move_towards_point(self.distx, self.disty, (self.dist / self.flytime))
self.alarm[0] = self.flytime
self.image_speed = 0
instance_create(self.x, self.y, obj_heartburst)
