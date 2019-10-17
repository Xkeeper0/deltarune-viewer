if (self.active == 0)
{
    self.camerax = __view_get(0, self.camera)
    self.cameray = __view_get(1, self.camera)
    if (global.flag[12] == 0)
    {
        __view_set(0, self.camera, (self.camerax + self.shakex))
        __view_set(1, self.camera, (self.cameray + self.shakey))
    }
    self.shakesign = (-self.shakesign)
    self.active = 1
    self.alarm[0] = self.shakespeed
}
