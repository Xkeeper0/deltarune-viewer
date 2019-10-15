self.image_speed = 0.2
self.myinteract = 0
self.talked = 0
self.mydialoguer = 3478247328
scr_depth()
if (global.darkzone == 1)
{
    self.image_speed = 0.2
    self.image_xscale = 2
    self.image_yscale = 2
}
if (self.room == room_cc_throneroom)
{
    if (global.plot >= 240)
        instance_destroy()
}
