global.interact = 3
instance_create(0, 0, obj_fadeout)
if (self.touched == 0)
{
    self.alarm[2] = 8
    self.touched = 1
}
