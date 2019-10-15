if (global.darkzone == 1)
{
    if (self.cutscene == 0)
        _temp_local_var_1 = (~ instance_exists(obj_shake))
    else
        _temp_local_var_1 = 0
    if _temp_local_var_1
    {
        self.wd = (self.x - floor(((__view_get(e__VW.WView, 0) / 2) - (self.initwd / 2))))
        self.ht = (self.y - floor(((__view_get(e__VW.HView, 0) / 2) - (self.initht / 2))))
        __view_set(e__VW.XView, 0, self.wd)
        __view_set(e__VW.YView, 0, self.ht)
        if (__view_get(e__VW.XView, 0) < 0)
            __view_set(e__VW.XView, 0, 0)
        if (__view_get(e__VW.XView, 0) > (self.room_width - __view_get(e__VW.WView, 0)))
            __view_set(e__VW.XView, 0, (self.room_width - __view_get(e__VW.WView, 0)))
        if (__view_get(e__VW.YView, 0) < 0)
            __view_set(e__VW.YView, 0, 0)
        if (__view_get(e__VW.YView, 0) > (self.room_height - __view_get(e__VW.HView, 0)))
            __view_set(e__VW.YView, 0, (self.room_height - __view_get(e__VW.HView, 0)))
    }
}
if (global.darkzone == 0)
    _temp_local_var_2 = (global.plot >= 245)
else
    _temp_local_var_2 = 0
if _temp_local_var_2
{
    if (self.cutscene == 0)
        _temp_local_var_3 = (~ instance_exists(obj_shake))
    else
        _temp_local_var_3 = 0
    if _temp_local_var_3
    {
        __view_set(e__VW.Object, 0, -4)
        self.wd = ((self.x - floor((__view_get(e__VW.WView, 0) / 2))) + 11)
        self.ht = ((self.y - floor((__view_get(e__VW.HView, 0) / 2))) + 17)
        __view_set(e__VW.XView, 0, self.wd)
        __view_set(e__VW.YView, 0, self.ht)
        if (__view_get(e__VW.XView, 0) < 0)
            __view_set(e__VW.XView, 0, 0)
        if (__view_get(e__VW.XView, 0) > (self.room_width - __view_get(e__VW.WView, 0)))
            __view_set(e__VW.XView, 0, (self.room_width - __view_get(e__VW.WView, 0)))
        if (__view_get(e__VW.YView, 0) < 0)
            __view_set(e__VW.YView, 0, 0)
        if (__view_get(e__VW.YView, 0) > (self.room_height - __view_get(e__VW.HView, 0)))
            __view_set(e__VW.YView, 0, (self.room_height - __view_get(e__VW.HView, 0)))
    }
}
if (self.bg == 1)
{
    with(obj_backgrounderparent)
    {
        event_user(0)
    }
}
