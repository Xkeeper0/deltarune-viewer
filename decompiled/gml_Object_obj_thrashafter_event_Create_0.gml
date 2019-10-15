self.con = 1
self.image_xscale = 2
self.image_yscale = 2
if (global.flag[229] >= 1)
    _temp_local_var_1 = (global.plot < 150)
else
    _temp_local_var_1 = 0
if _temp_local_var_1
{
    self.npc = instance_create(self.x, (self.y - 80), obj_npc_room)
    self.npc.sprite_index = spr_lancer_dt
    self.con = 999
    instance_destroy()
}
