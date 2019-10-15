self.quick = 0
if (global.tempflag[4] == 1)
    self.quick = 1
if (global.flag[241] >= 6)
{
    self.con = 999
    instance_destroy()
}
else
{
    self.con = 1
    self.image_xscale = 2
    self.image_yscale = 2
    self.image_speed = 0
    self.bulcon = 0
}
