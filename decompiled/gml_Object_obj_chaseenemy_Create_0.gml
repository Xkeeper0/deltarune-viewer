self.image_xscale = 2
self.image_yscale = 2
self.facing = 0
self.walk_index = 0
self.state = 0
self.alertcon = 0
self.alerttimer = 0
self.facetimer = 0
self.chasetype = 0
self.pacetype = 1
self.pacecon = 0
self.pacecon2 = 0
self.pacetimer = 0
self.targetx = 0
self.targety = 0
scr_depth()
self.radius = 200
self.moveradius = 160
self.pacespeed = 1
self.frozen = 0
self.hadfrozen = 0
self.offscreen_frozen = 1
self.remspeed = 0
self.myencounter = 4
self.touchsprite = 504
self.cancelwalk = 0
self.eraser = 0
self.touchflag = 0
self.ignoresolid = 0
if (self.room == room_battletest)
    self.myencounter = 40
if (self.room == room_field1)
    self.myencounter = 4
if (self.room == room_field2)
{
    self.myencounter = 5
    if (global.flag[501] > 0)
        instance_destroy()
}
if (self.room == room_field_puzzle1)
{
    self.myencounter = 6
    self.radius = 200
    self.pacetype = 5
}
if (self.room == room_field_getsusie)
{
    self.myencounter = 7
    self.sprite_index = spr_smallchecker_front
    self.touchsprite = self.sprite_index
    self.pacetype = 6
    self.image_speed = 0.2
}
if (self.room == room_field4)
    self.myencounter = 33
if (self.room == room_field_secret1)
{
    self.sprite_index = spr_jigsawry_idle
    self.touchsprite = 602
    self.myencounter = 23
    if (global.plot < 130)
        instance_destroy()
}
if (self.room == room_forest_area0)
{
    self.sprite_index = spr_rabbick_enemy_overworld
    self.myencounter = 16
    self.touchsprite = 590
    self.alertcon = -1
    self.pacetype = 10
}
if (self.room == room_forest_area1)
    _temp_local_var_1 = 1
else
{
    if (self.room == room_forest_area3)
        _temp_local_var_1 = 1
    else
        _temp_local_var_1 = (self.room == room_forest_secret1)
}
if _temp_local_var_1
{
    self.pacetype = 7
    self.sprite_index = spr_rabbick_enemy_overworld
    if (self.room == room_forest_area1)
        self.pacetype = 11
    self.myencounter = 17
    self.touchflag = 505
    self.touchsprite = 590
    if (self.room == room_forest_area3)
        self.myencounter = 24
    if (self.room == room_forest_secret1)
        self.myencounter = 32
    self.alertcon = -1
}
if (self.room == room_forest_maze1)
{
    self.touchflag = 505
    self.sprite_index = spr_rabbick_enemy_overworld
    self.myencounter = 17
    self.touchsprite = 590
    self.pacetype = 1
    if (global.flag[505] == 1)
        self.chasetype = 3
}
if (self.room == room_forest_maze2)
{
    self.touchflag = 506
    self.myencounter = 18
    self.sprite_index = spr_blockguy_overworld
    self.touchsprite = 594
    self.pacetype = 1
    if (global.flag[506] == 1)
        self.chasetype = 3
    else
        self.chasetype = 4
}
if (self.room == room_forest_beforeclover)
{
    self.myencounter = 18
    self.sprite_index = spr_blockguy_overworld
    self.touchsprite = 594
    self.pacetype = 7
    self.alertcon = -1
}
if (self.room == room_forest_area4)
{
    self.myencounter = 19
    self.sprite_index = spr_blockguy_overworld
    self.touchsprite = 594
    self.pacetype = 7
    if (self.x < (self.room_width / 2))
        self.pacetype = 7.5
    self.eraser = 1
    self.touchflag = 506
    self.chasetype = 4
    self.radius = 90
    self.ignoresolid = 1
    self.offscreen_frozen = 0
    if (global.flag[506] >= 1)
        self.alertcon = -1
}
if (self.room == room_cc_1f)
{
    self.pacetype = 9
    self.chasetype = 4
    self.moveradius = 160
    self.sprite_index = spr_daimond_knight_idle
    self.myencounter = 28
    self.touchsprite = 621
    self.touchflag = 507
    if (global.flag[507] == 1)
        self.alertcon = -1
}
if (self.room == room_cc_3f)
{
    self.eraser = 1
    self.ignoresolid = 1
    self.chasetype = 4
    self.pacetype = 9
    self.radius = 165
    self.moveradius = 160
    if (self.x >= (self.room_width / 2))
        self.moveradius = -160
    self.sprite_index = spr_hathyx_overworld
    self.myencounter = 30
    self.touchsprite = 624
    self.offscreen_frozen = 0
    self.touchflag = 508
    if (global.flag[508] == 1)
        self.alertcon = -1
}
