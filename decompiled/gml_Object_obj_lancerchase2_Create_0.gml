self.con = 0
if ((self.room == room_forest_chase1) || (self.room == room_forest_chase2))
{
    self.tilearray = tile_get_ids_at_depth(99999)
    for (var i = 0; i < array_length_1d(self.tilearray); i++)
        tile_set_alpha(self.tilearray[i], 0)
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
