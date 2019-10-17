self.choicetimer = 0
self.flush = 0
self.con = 0
if (self.room == room_town_mid)
{
    if (global.flag[271] == 0)
    {
        self.bnpc = instance_create(self.x, self.y, obj_npc_room_animated)
        self.bnpc.sprite_index = spr_npc_icemascot1
    }
    else
    {
        self.bnpc = instance_create((self.x + 7), (self.y + 4), obj_npc_room)
        self.bnpc.sprite_index = spr_npc_burgerpants
    }
}
if (self.room == room_town_south)
{
    self.policewindow = scr_marker(292, 57, spr_policewindow)
    with (self.policewindow)
        self.depth = 940000
}
if (self.room == room_graveyard)
{
    self.overlay = instance_create(0, 0, obj_backgrounder_sprite)
    with (obj_mainchara)
        self.bg = 1
    with (self.overlay)
    {
        self.image_alpha = 0.4
        self.ss = 0.1
        self.sprite_index = spr_graveyard_overlay
        self.depth = 1000
    }
}
