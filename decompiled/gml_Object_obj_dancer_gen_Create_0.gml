self.areas = 3
self.areax1[0] = 120
self.areay1[0] = 100
self.areax2[0] = 760
self.areay2[0] = 580
self.areax1[1] = 880
self.areay1[1] = 360
self.areax2[1] = 1360
self.areay2[1] = 880
self.areax1[2] = 200
self.areay1[2] = 720
self.areax2[2] = 760
self.areay2[2] = 1360
self.battlealpha = 0
if (self.room == room_forest_dancers1)
{
    for (var i = 0; i < 5; i += 1)
    {
        self.sc = instance_create(320, (160 + (80 * i)), obj_scissordancer)
        with (self.sc)
        {
            self.hspeed = 0
            self.vspeed = -5
        }
    }
    for (i = 0; i < 4; i += 1)
    {
        self.sc = instance_create((520 + (80 * i)), 450, obj_scissordancer)
        with (self.sc)
        {
            self.vspeed = 0
            self.hspeed = -5
        }
    }
    for (i = 0; i < 2; i += 1)
    {
        self.sc = instance_create(500, (170 - (80 * i)), obj_scissordancer)
        with (self.sc)
        {
            self.vspeed = 5
            self.hspeed = 0
        }
    }
    for (i = 0; i < 4; i += 1)
    {
        self.sc = instance_create(960, (440 - (80 * i)), obj_scissordancer)
        with (self.sc)
            self.vspeed = 5
    }
    for (i = 0; i < 4; i += 1)
    {
        self.sc = instance_create(960, (40 - (80 * i)), obj_scissordancer)
        with (self.sc)
            self.vspeed = 5
    }
    self.sc = instance_create(280, 830, obj_scissordancer)
    with (self.sc)
    {
        self.vspeed = -5
        self.hspeed = 0
    }
    self.sc = instance_create(580, 820, obj_scissordancer)
    with (self.sc)
    {
        self.hspeed = 5
        self.vspeed = 0
    }
    self.sc = instance_create(590, 1050, obj_scissordancer)
    with (self.sc)
    {
        self.vspeed = 5
        self.hspeed = 0
    }
    self.sc = instance_create(290, 1060, obj_scissordancer)
    with (self.sc)
    {
        self.hspeed = -5
        self.vspeed = 0
    }
}
if (self.room == room_cc_4f)
{
    self.areax1[0] = 260
    self.areay1[0] = 40
    self.areax2[0] = 1120
    self.areay2[0] = 820
    self.areas = 1
}
self.tile_fade = 0
if ((self.room == room_forest_dancers1) || (self.room == room_cc_4f))
{
    self.alpha_changed = 0
    self.tile_fade = 1
    self.tilearray = tile_get_ids_at_depth(777777)
    for (i = 0; i < array_length_1d(self.tilearray); i++)
        tile_set_alpha(self.tilearray[i], 0)
}
