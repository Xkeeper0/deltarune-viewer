self.myinteract = 0
self.talked = 0
self.image_speed = 0.2
self.depthcancel = 0
if (global.darkzone == 1)
{
    self.image_xscale = 2
    self.image_yscale = 2
}
if (self.room == room_dark1)
{
    self.sprite_index = spr_shine
    if ((global.time > 14400) || (global.flag[10] == 1))
        instance_destroy()
}
if (self.room == room_town_mid)
{
    if (self.x >= 320)
        self.sprite_index = spr_npc_icemascot_fake
    else
        self.sprite_index = spr_npc_icemascot2
}
if (self.room == room_diner)
{
    self.sprite_index = spr_npc_greenfire
    self.depth = 4000
    self.depthcancel = 1
}
if (self.room == room_cc_clover)
    self.sprite_index = spr_cc_boombox
if (self.room == room_cc_6f)
    self.sprite_index = spr_smallchecker_front
if (self.room == room_cc_throneroom)
{
    if (global.plot < 240)
        instance_destroy()
    self.sprite_index = spr_smallchecker_front
}
if (self.room == room_field_maze)
{
    self.sprite_index = spr_jigsawry_clobbered
    if (global.plot >= 150)
        instance_destroy()
}
if (self.room == room_forest_savepoint_relax)
{
    self.image_speed = 0.1
    self.sprite_index = spr_diamond_fan
}
if (self.depthcancel == 0)
    scr_depth()
