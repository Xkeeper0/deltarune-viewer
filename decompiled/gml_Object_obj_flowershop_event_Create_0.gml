self.tcon = 0
self.image_speed = 0.05
scr_depth()
if (self.room == room_flowershop_1f)
{
    self.counter = scr_marker(20, 103, spr_flowershop_counter)
    with (self.counter)
        scr_depth()
    self.flowera = scr_marker(177, 136, spr_flowershop_flowers)
    self.flowerb = scr_marker(177, 82, spr_flowershop_flowers)
    with (self.flowera)
        scr_depth()
    with (self.flowerb)
        scr_depth()
    self.con = 1
    if (global.flag[262] >= 1)
    {
        instance_create(self.x, (self.y + self.sprite_height), obj_npc_facing)
        self.visible = 0
        if (global.flag[262] == 1)
            self.con = 50
        if (global.flag[262] >= 2)
            self.con = -1
    }
    if (global.flag[262] == 0)
        global.interact = 1
    self.image_speed = 0
}
if (self.room == room_flowershop_1f)
{
    if (global.entrance == 2)
    {
        global.interact = 0
        global.entrance = 0
        with (obj_mainchara)
            self.x = global.flag[264]
    }
}
if (self.room == room_flowershop_2f)
{
    self.visible = 0
    if (global.entrance == 1)
    {
        global.entrance = 0
        global.interact = 0
        with (obj_mainchara)
            self.x = global.flag[264]
        if (obj_mainchara.x < 160)
            self.x = 255
        if (obj_mainchara.x > 160)
            self.x = 15
        instance_create(self.x, (self.y + self.sprite_height), obj_npc_facing)
        self.con = -1
    }
}
