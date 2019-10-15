if (global.flag[12] == 0)
{
    __view_set(e__VW.XView, self.camera, (self.camerax + (self.shakex * self.shakesign)))
    __view_set(e__VW.YView, self.camera, (self.cameray + (self.shakey * self.shakesign)))
}
if (self.permashake == 0)
{
    if (self.shakex > 0)
        self.shakex = (self.shakex - 1)
    if (self.shakey > 0)
        self.shakey = (self.shakey - 1)
}
self.shakesign = (variable)(- self.shakesign)
self.alarm[0] = self.shakespeed
if (self.shakex == 0)
    _temp_local_var_1 = (self.shakey == 0)
else
    _temp_local_var_1 = 0
if _temp_local_var_1
    instance_destroy()
