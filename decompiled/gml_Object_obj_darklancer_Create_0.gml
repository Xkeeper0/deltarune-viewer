self.image_speed = 0
self.con = 0
self.image_xscale = 2
self.image_yscale = 2
if (self.room == room_dark2)
    _temp_local_var_1 = (global.plot >= 12)
else
    _temp_local_var_1 = 0
if _temp_local_var_1
    instance_destroy()
if (self.room == room_dark3)
    _temp_local_var_2 = (global.plot >= 13)
else
    _temp_local_var_2 = 0
if _temp_local_var_2
    instance_destroy()
