self.record = 0
self.tiletotal = 0
self.image_xscale = 2
self.image_yscale = 2
self.image_speed = 0.1
self.funtotal = 99
self.order = 0
self.funbuffer = 0
self.stepnoise = 0
self.wonamt = 0
self.active = 0
self.failtimer = 0
self.failamt = 0
self.talked = 0
self.wonmax = 3
self.plotamt = 1
self.failmax = 200
if (self.room == room_field_puzzle1)
{
    self.failmax = 240
    self.wonmax = 3
    self.plotamt = 35
    for (self.i = 0; self.i < self.wonmax; self.i += 1)
    {
        self.block[self.i] = instance_create((1280 + (self.i * 40)), 280, obj_soliddark)
        self.block[self.i].image_yscale = 2
        self.spike1[self.i] = scr_dark_marker((1280 + (self.i * 40)), 280, spr_spiketile)
        with (self.spike1[self.i])
            self.depth = 900000
        self.spike2[self.i] = scr_dark_marker((1280 + (self.i * 40)), 320, spr_spiketile)
        with (self.spike2[self.i])
            self.depth = 900000
        if (global.plot >= 35)
        {
            self.active = 2
            with (self.spike1[self.i])
                self.image_index = 1
            with (self.spike2[self.i])
                self.image_index = 1
            with (self.block[self.i])
                instance_destroy()
        }
    }
}
if (self.room == room_field_puzzle2)
{
    self.failmax = 240
    self.wonmax = 3
    self.plotamt = 38
    for (self.i = 0; self.i < self.wonmax; self.i += 1)
    {
        if (global.plot >= 38)
            self.active = 2
    }
}
self.shakecon = 0
