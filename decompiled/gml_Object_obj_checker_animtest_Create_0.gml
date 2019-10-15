self.type = 0
self.con = 0
self.subcon = 0
self.secondtime = 0
if (self.room == room_field_checkersboss)
{
    if (global.plot < 60)
    {
        self.con = 1
        self.image_xscale = 2
        self.image_yscale = 2
        self.subcon = 0
    }
    else
        instance_destroy()
}
if (self.room == room_cc_6f)
{
    self.secondtime = 1
    self.con = 1
    self.image_xscale = 2
    self.image_yscale = 2
    self.subcon = 0
}
