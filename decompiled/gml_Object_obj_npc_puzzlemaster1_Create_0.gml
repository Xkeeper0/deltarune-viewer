self.myinteract = 0
self.talked = 0
self.image_speed = 0
self.image_xscale = 2
self.image_yscale = 2
self.con = 0
if (global.flag[215] == 1)
    instance_destroy()
else
{
    self.pwall = instance_create((self.x + 10), (self.y - 20), obj_soliddark)
    self.pwall.image_yscale = 3
}
self.lecturecon = 0
if (global.plot >= 42)
    _temp_local_var_1 = 1
else
    _temp_local_var_1 = (global.flag[211] == 3)
if _temp_local_var_1
    self.lecturecon = 100
scr_depth()
