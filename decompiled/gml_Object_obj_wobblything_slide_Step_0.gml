if (self.wobbled == 0)
{
    if instance_exists(obj_mainchara)
    {
        if ((obj_mainchara.y > (self.y - 10)) && (obj_mainchara.y < (self.y + 50)))
        {
            self.image_speed = 0.334
            if (global.flag[8] == 1)
                self.image_speed = 0.2
            self.wobbled = 1
        }
    }
}
if (self.y < (__view_get(1, 0) - 60))
{
    self.wobbled = 0
    self.image_speed = 0
    self.image_index = 0
    self.y += 960
}
