self.con = 1
self.followcon = 1
self.followtimer = 0
self.followbuffer = 0
self.treecon = 0
self.speclaugh = 0
self.image_xscale = 2
self.image_yscale = 2
if (global.flag[229] >= 99)
{
    self.con = 999
    instance_destroy()
}
if (self.room == room_forest_afterthrash3)
{
    self.tree = scr_dark_marker(440, 72, spr_candytree_tall)
    if (global.flag[229] >= 6)
        self.tree.image_index = 1
    with (self.tree)
        self.depth = 400000
}
if (self.room == room_forest_castleview)
{
    self.bg = instance_create(180, 0, obj_backgrounder_sprite)
    with (self.bg)
    {
        self.sprite_index = spr_darkcastle_bg
        self.image_speed = 0.1
        self.ss = 0.5
        self.image_xscale = 2
        self.image_yscale = 2
    }
    with (obj_mainchara)
        self.bg = 1
}
