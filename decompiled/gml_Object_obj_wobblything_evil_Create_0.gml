global.charinstance[0] = 326
self.image_speed = 0
self.image_xscale = 2
self.image_yscale = 2
scr_depth()
self.wobbled = 0
if (self.room == room_dark_wobbles)
{
    self.tilearray = tile_get_ids_at_depth(777777)
    for (var i = 0; i < array_length_1d(self.tilearray); i++)
        tile_set_alpha(self.tilearray[i], 0)
}
