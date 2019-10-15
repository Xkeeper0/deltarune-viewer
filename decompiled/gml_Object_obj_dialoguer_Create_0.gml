self.cur_jewel = 0
self.active = 0
self.alarm[0] = 1
self.skippable = 1
self.free = 0
self.xxx = __view_get(e__VW.XView, 0)
self.yyy = __view_get(e__VW.YView, 0)
self.writer = 432432
self.side = 1
if instance_exists(obj_mainchara)
{
    if (global.darkzone == 0)
    {
        if (obj_mainchara.y > (self.yyy + 130))
            self.side = 0
    }
    if (global.darkzone == 1)
    {
        if (obj_mainchara.y > (self.yyy + 250))
            self.side = 0
    }
}
self.f = 1
if (global.darkzone == 1)
    self.f = 2
