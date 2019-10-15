self.timer = (self.timer + 1)
if (self.timer >= 2)
{
    if (self.image_alpha < 1)
        self.image_alpha = (self.image_alpha + 0.1)
    if (self.image_alpha >= 1)
        self.active = 1
}
if (self.timer == 2)
{
    move_towards_point((obj_mainchara.x + 20), (obj_mainchara.y + 50), 8)
    self.image_angle = self.direction
}
if (self.x >= (__view_get(e__VW.XView, 0) + 800))
    instance_destroy()
if (self.x <= (__view_get(e__VW.XView, 0) - 200))
    instance_destroy()
if (self.y > (__view_get(e__VW.YView, 0) + 600))
    instance_destroy()
if (self.y < (__view_get(e__VW.YView, 0) - 600))
    instance_destroy()
