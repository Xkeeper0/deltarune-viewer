if (self.alertcon >= 1)
{
    if (self.frozen == 0)
        _temp_local_var_1 = (self.ignoresolid == 0)
    else
        _temp_local_var_1 = 0
}
else
    _temp_local_var_1 = 0
if _temp_local_var_1
{
    if collision_rectangle(self.bbox_left, self.bbox_top, self.bbox_right, self.bbox_bottom, obj_solidblock, 0, 1)
        _temp_local_var_2 = 1
    else
        _temp_local_var_2 = collision_rectangle(self.bbox_left, self.bbox_top, self.bbox_right, self.bbox_bottom, obj_solidenemy, 0, 1)
    if _temp_local_var_2
    {
        self.x = (self.x - self.hspeed)
        self.y = (self.y - self.vspeed)
        self.hspeed = 0
        self.vspeed = 0
    }
}
