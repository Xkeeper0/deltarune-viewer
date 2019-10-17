if (global.darkzone == 1)
{
    if ((self.cutscene == 0) && (!instance_exists(obj_shake)))
    {
        self.wd = (self.x - floor(((__view_get(2, 0) / 2) - (self.initwd / 2))))
        self.ht = (self.y - floor(((__view_get(3, 0) / 2) - (self.initht / 2))))
        __view_set(0, 0, self.wd)
        __view_set(1, 0, self.ht)
        if (__view_get(0, 0) < 0)
            __view_set(0, 0, 0)
        if (__view_get(0, 0) > (self.room_width - __view_get(2, 0)))
            __view_set(0, 0, (self.room_width - __view_get(2, 0)))
        if (__view_get(1, 0) < 0)
            __view_set(1, 0, 0)
        if (__view_get(1, 0) > (self.room_height - __view_get(3, 0)))
            __view_set(1, 0, (self.room_height - __view_get(3, 0)))
    }
}
if ((global.darkzone == 0) && (global.plot >= 245))
{
    if ((self.cutscene == 0) && (!instance_exists(obj_shake)))
    {
        __view_set(9, 0, -4)
        self.wd = ((self.x - floor((__view_get(2, 0) / 2))) + 11)
        self.ht = ((self.y - floor((__view_get(3, 0) / 2))) + 17)
        __view_set(0, 0, self.wd)
        __view_set(1, 0, self.ht)
        if (__view_get(0, 0) < 0)
            __view_set(0, 0, 0)
        if (__view_get(0, 0) > (self.room_width - __view_get(2, 0)))
            __view_set(0, 0, (self.room_width - __view_get(2, 0)))
        if (__view_get(1, 0) < 0)
            __view_set(1, 0, 0)
        if (__view_get(1, 0) > (self.room_height - __view_get(3, 0)))
            __view_set(1, 0, (self.room_height - __view_get(3, 0)))
    }
}
if (self.bg == 1)
{
    with (obj_backgrounderparent)
        event_user(0)
}
