global.charinstance[0] = 326
self.image_speed = 0
self.image_xscale = 2
self.image_yscale = 2
scr_depth()
self.wobbled = 0
if (self.room == room_dark_wobbles)
{
    self.tilearray = tile_get_ids_at_depth(777777)
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
