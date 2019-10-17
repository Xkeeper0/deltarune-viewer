if (global.flag[12] == 0)
{
    __view_set(0, self.camera, (self.camerax + (self.shakex * self.shakesign)))
    __view_set(1, self.camera, (self.cameray + (self.shakey * self.shakesign)))
}
if (self.permashake == 0)
{
    if (self.shakex > 0)
        self.shakex -= 1
    if (self.shakey > 0)
        self.shakey -= 1
}
self.shakesign = (-self.shakesign)
self.alarm[0] = self.shakespeed
if ((self.shakex == 0) && (self.shakey == 0))
    instance_destroy()
