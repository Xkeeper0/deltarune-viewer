global.interact = 3
mus_volume(global.currentsong[1], 0, 14)
instance_create(0, 0, obj_fadeout)
if (self.touched == 0)
{
    self.alarm[2] = 15
    self.alarm[3] = 14
    self.touched = 1
}
