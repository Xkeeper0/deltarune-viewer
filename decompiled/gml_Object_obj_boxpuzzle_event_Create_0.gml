if (global.plot >= 50)
{
    self.con = -1
    self.leavecon = -1
    self.boxcon = -1
    self.boxon = -1
    self.image_index = 1
    if (global.flag[212] == 2)
    {
        self.image_index = 2
        with(obj_pushableblock)
        {
            instance_destroy()
        }
    }
}
else
{
    self.groundblock = instance_create(self.x, 120, obj_soliddark)
    self.groundblock.image_xscale = 2
    global.facing = 1
    self.con = 1
    self.leavecon = 0
    self.boxcon = 0
    self.boxon = 0
}
self.image_speed = 0
