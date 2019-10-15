self.con = 0
if (global.plot >= 15)
    instance_destroy()
else
{
    self.con = 1
    self.susie = scr_dark_marker(1200, 760, spr_susieu_dark)
    with(self.susie)
    {
        self.depth = 500000
    }
}
self.aftercon = 0
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
