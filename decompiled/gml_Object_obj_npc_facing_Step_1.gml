if (self.normalanim == 1)
{
    if (self.myinteract > 0)
        _temp_local_var_1 = instance_exists(obj_writer)
    else
        _temp_local_var_1 = 0
    if _temp_local_var_1
    {
        if (obj_writer.halt > 0)
        {
            self.image_speed = 0
            self.image_index = 0
        }
        if (obj_writer.halt == 0)
            self.image_speed = self.remanimspeed
    }
}
if (self.normalanim == 1)
    _temp_local_var_2 = 1
else
    _temp_local_var_2 = (self.normalanim == 2)
if _temp_local_var_2
{
    if (self.myinteract == 0)
    {
        self.facing = self.dfacing
        self.image_index = 0
        self.image_speed = 0
    }
}
scr_npcdir()
