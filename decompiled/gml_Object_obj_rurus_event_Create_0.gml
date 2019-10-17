self.image_speed = 0
self.boxfinished = 0
self.con = 0
if ((self.room == room_cc_rurus1) || (self.room == room_cc_rurus2))
{
    self.spike[0] = scr_dark_marker(80, 240, spr_spiketile)
    self.spike[1] = scr_dark_marker(80, 280, spr_spiketile)
    self.spike[2] = scr_dark_marker(920, 200, spr_spiketile)
    self.spike[3] = scr_dark_marker(920, 240, spr_spiketile)
    for (self.i = 0; self.i < 4; self.i += 1)
    {
        self.spike[self.i].depth = 900000
        self.spike[self.i].image_index = 1
    }
    if (self.room == room_cc_rurus1)
    {
        self.floorwall = instance_create(280, 240, obj_soliddark)
        self.floorwall.image_xscale = 2
    }
    if (self.room == room_cc_rurus2)
    {
        self.floorwall = instance_create(260, 240, obj_soliddark)
        self.floorwall.image_xscale = 3
    }
    if (self.room == room_cc_rurus1)
    {
        if (global.flag[217] == 1)
        {
            instance_create(280, 160, obj_npc_room)
            instance_destroy()
        }
        else
        {
            self.flashobj = scr_dark_marker(520, 260, spr_lightfairy)
            with (self.flashobj)
            {
                self.image_speed = 0.1
                self.depth = 90000
            }
        }
    }
    if (self.room == room_cc_rurus2)
    {
        if (global.flag[218] == 1)
        {
            instance_create(280, 160, obj_npc_room)
            instance_destroy()
        }
        else
        {
            self.flashobj = scr_dark_marker(520, 260, spr_lightfairy)
            with (self.flashobj)
            {
                self.image_speed = 0.1
                self.depth = 90000
            }
        }
    }
    self.visible = 0
}
