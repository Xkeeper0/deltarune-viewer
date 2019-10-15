if (self.active == 0)
{
    self.camerax = __view_get(e__VW.XView, self.camera)
    self.cameray = __view_get(e__VW.YView, self.camera)
    if (global.flag[12] == 0)
    {
        __view_set(e__VW.XView, self.camera, (self.camerax + self.shakex))
        __view_set(e__VW.YView, self.camera, (self.cameray + self.shakey))
    }
    self.shakesign = (variable)(- self.shakesign)
    self.active = 1
    self.alarm[0] = self.shakespeed
}
