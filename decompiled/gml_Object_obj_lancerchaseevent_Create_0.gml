self.con = 0
if (global.plot >= 15)
    instance_destroy()
else
{
    self.con = 1
    self.susie = scr_dark_marker(1200, 760, spr_susieu_dark)
    with (self.susie)
        self.depth = 500000
}
self.aftercon = 0
self.tilearray = tile_get_ids_at_depth(99999)
for (var i = 0; i < array_length_1d(self.tilearray); i++)
    tile_set_alpha(self.tilearray[i], 0)
