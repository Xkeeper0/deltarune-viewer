self.image_xscale = 2
self.image_yscale = 2
self.siner = 0
self.alarm[0] = 2
self.bust = 0
self.con = 1
if (global.plot >= 14)
    instance_destroy()
else
{
    self.partysus = instance_create(500, 500, obj_caterpillarchara)
    with(self.partysus)
    {
        self.visible = 0
    }
}
