self.timer = 0
self.darkamt = 0
with (obj_mainchara)
    self.battlemode = 1
global.charinstance[0] = 326
self.alarm[0] = 5
self.side = 0
self.homing = 0
if (self.room == room_dark_chase2)
    self.homing = 2
if (self.room == room_forest_chase1)
    self.homing = 3
if (self.room == room_forest_chase2)
    self.homing = 4
self.sidespade[0] = 4732847832
self.sidespade[1] = 4732847832
self.intensity = 0
self.tile_fade = 0
if ((self.room == room_forest_chase1) || ((self.room == room_forest_chase2) || (self.room == room_dark_chase1)))
{
    self.alpha_changed = 0
    self.tile_fade = 1
    self.tile_layer_choice = 99999
    self.tilearray = tile_get_ids_at_depth(self.tile_layer_choice)
    for (var i = 0; i < array_length_1d(self.tilearray); i++)
        tile_set_alpha(self.tilearray[i], 0)
}
