global.interact = 3
instance_create(0, 0, obj_fadeout)
mus_volume(global.currentsong[1], 0, 14)
if (self.touched == 0)
{
    self.alarm[3] = 14
    self.alarm[2] = 15
    self.touched = 1
}
