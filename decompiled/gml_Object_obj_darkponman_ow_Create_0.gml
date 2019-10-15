global.charinstance[0] = 326
global.charinstance[1] = global.cinstance[0]
global.charinstance[2] = global.cinstance[1]
self.boss = 0
if (instance_find(self.object_index, 0) == self.id)
{
    self.boss = 1
    self.depth = (self.depth + 1)
}
self.battlealpha = 0
self.max_battlealpha = 1
self.image_xscale = 2
self.image_yscale = 2
self.rot = 0
self.init = 0
self.con = 0
self.timer = 0
self.eyer = 0
self.image_speed = 0
self.rotspeed = 4
self.tile_fade = 0
self.tile_layer_choice = 222222
if (self.room == room_forest_area2)
{
    if (self.x >= (self.room_width / 2))
    {
        self.rotspeed = -4
        self.rot = 180
    }
    self.tile_fade = 1
    self.tile_layer_choice = 222222
}
self.bmax = 8
self.made = 0
self.offx = 30
self.offy = 30
self.xrange = 300
self.yrange = 240
if (self.room == room_forest_area5)
{
    self.rotspeed = 2.5
    self.bmax = 11
    self.xrange = 300
    self.yrange = 280
    self.tile_fade = 1
    self.tile_layer_choice = 222222
}
if (self.room == room_cc_2f)
{
    self.rotspeed = 3
    self.bmax = 8
    self.yrange = 280
    if (self.x >= 800)
        _temp_local_var_1 = (self.y <= 800)
    else
        _temp_local_var_1 = 0
    if _temp_local_var_1
    {
        self.rotspeed = -3
        self.rot = 180
    }
    if (self.x <= 800)
        _temp_local_var_2 = (self.y >= 800)
    else
        _temp_local_var_2 = 0
    if _temp_local_var_2
    {
        self.rotspeed = -3
        self.rot = 180
    }
    self.tile_fade = 1
    self.tile_layer_choice = 222222
}
if (self.tile_fade == 1)
    _temp_local_var_3 = (self.boss == 1)
else
    _temp_local_var_3 = 0
if _temp_local_var_3
{
    self.alpha_changed = 0
    self.tile_fade = 1
    self.tilearray = tile_get_ids_at_depth(self.tile_layer_choice)
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
self.xx = 0
self.yy = 0
self.siner = 0
