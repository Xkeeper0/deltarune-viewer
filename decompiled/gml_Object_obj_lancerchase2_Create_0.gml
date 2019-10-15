self.con = 0
if (self.room == room_forest_chase1)
    _temp_local_var_1 = 1
else
    _temp_local_var_1 = (self.room == room_forest_chase2)
if _temp_local_var_1
{
    self.tilearray = tile_get_ids_at_depth(99999)
    local.i = 0
    while(true)
    {
        if (local.i < array_length_1d(self.tilearray))
        {
            tile_set_alpha(self.tilearray[local.i], 0)
            local.i = (local.i + 1)
            continue
        }
        break
    }
}
if (self.room == room_forest_chase1)
    self.con = 1
if (self.room == room_forest_chase2)
    self.con = 20
if (global.plot >= 150)
{
    self.con = 999
    instance_destroy()
}
self.dmax = 20
self.siner = 0
