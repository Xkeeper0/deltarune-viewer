if (self.seizure == 0)
{
    self.counter = (self.counter + 1)
    if (self.counter >= 3)
    {
        self.image_angle = (self.image_angle + 45)
        self.counter = 0
    }
}
if (self.seizure == 1)
    self.image_angle = (self.image_angle + 10)
if (self.x >= (__view_get(e__VW.XView, 0) + 700))
    instance_destroy()
