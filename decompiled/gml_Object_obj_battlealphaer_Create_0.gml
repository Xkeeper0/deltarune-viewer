global.charinstance[0] = 326
global.charinstance[1] = global.cinstance[0]
global.charinstance[2] = global.cinstance[1]
self.battlealpha = 0
self.active = 0
self.tile_fade = 0
self.fadeplease = 0
if (self.room == room_forest_starwalker)
    self.fadeplease = 1
if (self.room == room_forest_maze1)
    self.fadeplease = 1
if (self.room == room_forest_maze2)
    self.fadeplease = 1
if (self.room == room_dark_wobbles)
    self.fadeplease = 1
if (self.fadeplease == 1)
{
    self.tile_layer_amount = 777777
    if ((self.room == room_forest_maze1) || (self.room == room_forest_maze2))
        self.tile_layer_amount = 222222
    self.alpha_changed = 0
    self.tile_fade = 1
    self.tilearray = tile_get_ids_at_depth(self.tile_layer_amount)
    for (var i = 0; i < array_length_1d(self.tilearray); i++)
        tile_set_alpha(self.tilearray[i], 0)
}
