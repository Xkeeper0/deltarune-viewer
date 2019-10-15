if (self.wobbled == 0)
{
    if instance_exists(obj_mainchara)
    {
        if (obj_mainchara.y > (self.y - 10))
            _temp_local_var_1 = (obj_mainchara.y < (self.y + 50))
        else
            _temp_local_var_1 = 0
        if _temp_local_var_1
        {
            self.image_speed = 0.334
            if (global.flag[8] == 1)
                self.image_speed = 0.2
            self.wobbled = 1
        }
    }
}
if (self.y < (__view_get(e__VW.YView, 0) - 60))
{
    self.wobbled = 0
    self.image_speed = 0
    self.image_index = 0
    self.y = (self.y + 960)
}
