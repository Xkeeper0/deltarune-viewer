self.con = 0
self.timer = 0
self.entrance = global.entrance
self.rem_facing = -1
self.facing_timer = 0
if (self.room == room_field2)
    _temp_local_var_1 = (global.plot >= 34)
else
    _temp_local_var_1 = 0
if _temp_local_var_1
    instance_destroy()
if (self.room == room_field2A)
    _temp_local_var_2 = 1
else
    _temp_local_var_2 = (self.room == room_field_puzzle1)
if _temp_local_var_2
{
    if (self.room == room_field2A)
        self.candyflag = 101
    if (self.room == room_field_puzzle1)
        self.candyflag = 102
    self.siner = 0
    if (global.flag[self.candyflag] >= 2)
        instance_destroy()
    else
    {
        self.candytree = scr_dark_marker(obj_npc_room.x, obj_npc_room.y, spr_candytree_candies)
        with(self.candytree)
        {
            self.siner = 0
            scr_depth()
            self.depth = (self.depth - 5)
        }
    }
}
if (self.room == room_torhouse)
{
    if (global.entrance == 0)
        _temp_local_var_3 = (obj_mainchara.x <= (self.room_width / 2))
    else
        _temp_local_var_3 = 0
    if _temp_local_var_3
        instance_destroy()
    if (global.entrance == 1)
        instance_destroy()
    if (global.entrance == 2)
        instance_destroy()
    if (global.entrance == 24)
    {
        global.facing = 3
        self.rem_facing = 3
    }
    if (global.entrance == 4)
    {
        global.facing = 0
        self.rem_facing = 0
    }
    if (global.plot < 250)
        instance_destroy()
    else
    {
        if (global.flag[262] == 3)
            global.flag[262] = 4
        self.pie = scr_marker(274, 96, spr_pie)
        with(self.pie)
        {
            self.depth = 100000
        }
        if (~ snd_is_playing(global.currentsong[1]))
        {
            global.currentsong[0] = snd_init("home.ogg"@6444)
            global.currentsong[1] = mus_loop_ext(global.currentsong[0], 0.8, 0.97)
        }
    }
}
if (self.room == room_town_krisyard)
{
    if (global.plot < 250)
        instance_destroy()
    else
    {
        if (global.entrance == 24)
        {
            global.facing = 0
            self.rem_facing = 0
        }
    }
}
if (self.room == room_krishallway)
{
    global.facing = 0
    self.rem_facing = 0
}
if (self.room == room_cc_prison_prejoker)
{
    global.flag[31] = 0
    self.songplayed = 0
    self.m = 0
    self.maxm = 0
    if (~ snd_is_playing(global.currentsong[1]))
        _temp_local_var_4 = (global.flag[241] < 6)
    else
        _temp_local_var_4 = 0
    if _temp_local_var_4
    {
        self.songplayed = 1
        global.currentsong[0] = snd_init("prejoker.ogg"@4061)
        global.currentsong[1] = mus_loop_ext(global.currentsong[0], 1, 0.85)
        mus_volume(global.currentsong[1], 0, 0)
    }
    self.doorimg = scr_dark_marker((self.x - 48), (self.y - 170), spr_jokerdoor)
    with(self.doorimg)
    {
        self.depth = 500000
    }
    self.doorsolid = instance_create(self.x, self.y, obj_soliddark)
    self.doorevent = instance_create(self.x, self.y, obj_readable_room1)
    if (global.flag[241] == 5)
    {
        with(self.doorimg)
        {
            self.image_index = 2
        }
        with(self.doorsolid)
        {
            instance_destroy()
        }
        with(self.doorevent)
        {
            instance_destroy()
        }
        self.door_door = instance_create((self.x + 15), self.y, obj_doorA)
    }
    if (global.flag[241] >= 6)
    {
        with(self.doorsolid)
        {
            instance_destroy()
        }
        with(self.doorevent)
        {
            instance_destroy()
        }
        with(self.doorimg)
        {
            instance_destroy()
        }
        self.finalsolid = instance_create(1600, 1040, obj_soliddark)
    }
}
if (self.room == room_cc_throneroom)
{
    if (global.plot >= 240)
    {
        self.block = instance_create(260, 740, obj_soliddark)
        self.block.image_xscale = 8
        with(obj_readable_room1)
        {
            instance_destroy()
        }
        self.th = scr_dark_marker(obj_npc_sign.x, obj_npc_sign.y, spr_darkthrone)
        with(self.th)
        {
            scr_depth()
        }
        with(obj_npc_sign)
        {
            self.chairsolid = instance_create(self.x, self.y, obj_solidblock)
            self.chairsolid.sprite_index = self.sprite_index
            self.chairsolid.image_xscale = 2
            self.chairsolid.image_yscale = 2
            self.visible = 1
            with(self.chairsolid)
            {
                scr_depth()
            }
            instance_destroy()
        }
    }
}
if (self.room == room_forest_savepoint3)
{
    if (global.tempflag[9] == 1)
    {
        if (global.hp[1] < 1)
            global.hp[1] = 10
        if (global.hp[3] < 1)
            global.hp[3] = 10
        global.fighting = 0
        global.interact = 1
        self.blackmarker = scr_dark_marker(-100, -100, spr_pixel_white)
        with(self.blackmarker)
        {
            self.image_blend = 0x000000
            self.image_xscale = 600
            self.image_yscale = 600
            self.depth = 1000
        }
        self.con = 10
        self.alarm[4] = 30
    }
    else
        instance_destroy()
}
if (self.room == room_field_secret1)
{
    self.pcon = 0
    self.ptimer = 0
    self.puzzle = instance_create(1000, 100, obj_suitspuzz)
    with(self.puzzle)
    {
        self.max_suit = 4
        self.drawclue = 0
        self.sol[0] = 2
        self.sol[1] = 4
        self.sol[2] = 3
        self.sol[3] = 1
    }
    self.spikee[0] = scr_dark_marker(1300, 240, spr_spiketile)
    self.spikee[1] = scr_dark_marker(1300, 280, spr_spiketile)
    with(self.spikee[0])
    {
        self.depth = 900000
    }
    with(self.spikee[1])
    {
        self.depth = 900000
    }
    self.spike_solid = instance_create(1300, 240, obj_soliddark)
    with(self.spike_solid)
    {
        self.image_yscale = 3
    }
}
if (self.room == room_forest_beforeclover)
{
    self.pcon = 0
    self.ptimer = 0
    self.hinta = scr_dark_marker(320, 680, spr_suitsicon_fade)
    self.hintb = scr_dark_marker(840, 680, spr_suitsicon_fade)
    self.hintc = scr_dark_marker(1400, 680, spr_suitsicon_fade)
    with(self.hinta)
    {
        self.depth = 800000
    }
    with(self.hintb)
    {
        self.image_index = 1
        self.depth = 800000
    }
    with(self.hintc)
    {
        self.image_index = 2
        self.depth = 800000
    }
    self.puzzle = instance_create(180, 140, obj_suitspuzz)
    with(self.puzzle)
    {
        self.max_suit = 3
        self.drawclue = 0
        self.sol[0] = 1
        self.sol[1] = 2
        self.sol[2] = 3
    }
    self.spikee[0] = scr_dark_marker(400, 240, spr_spiketile)
    self.spikee[1] = scr_dark_marker(440, 240, spr_spiketile)
    with(self.spikee[0])
    {
        self.depth = 900000
    }
    with(self.spikee[1])
    {
        self.depth = 900000
    }
    self.spike_solid = instance_create(400, 240, obj_soliddark)
    with(self.spike_solid)
    {
        self.image_xscale = 2
    }
    if (global.flag[290] == 1)
    {
        with(self.spikee[0])
        {
            self.image_index = 1
        }
        with(self.spikee[1])
        {
            self.image_index = 1
        }
        with(self.spike_solid)
        {
            instance_destroy()
        }
        with(self.puzzle)
        {
            self.won = 1
        }
    }
}
if (self.room == room_forest_savepoint_relax)
{
    if (global.plot >= 85)
        instance_destroy()
    else
        self.con = 1
}
if (self.room == room_forest_maze_susie)
{
    global.flag[291] = 5
    if (global.plot >= 100)
        instance_destroy()
    else
    {
        self.image_speed = 0
        self.visible = 1
        scr_depth()
        self.con = 1
        self.sprite_index = spr_susied_dark_unhappy
    }
}
self.talked = 0
self.timer = 0
