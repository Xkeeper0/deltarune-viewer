self.con = 99
self.pcon = 0
self.ptimer = 0
self.puzzle = instance_create(500, 440, obj_suitspuzz)
with (self.puzzle)
{
    self.max_suit = 3
    self.drawclue = 0
    self.sol[0] = 9
    self.sol[1] = 9
    self.sol[2] = 9
    self.sol[3] = 9
}
if (global.plot < 75)
    self.con = 0
self.spiken[0] = scr_dark_marker(520, 280, spr_spiketile)
self.spiken[1] = scr_dark_marker(560, 280, spr_spiketile)
with (self.spiken[0])
    self.depth = 970000
with (self.spiken[1])
    self.depth = 970000
if (global.flag[234] == 0)
{
    self.blockn = instance_create(520, 280, obj_soliddark)
    with (self.blockn)
        self.image_xscale = 2
}
else
{
    with (self.spiken[0])
        self.image_index = 1
    with (self.spiken[1])
        self.image_index = 1
}
if (global.flag[235] == 0)
{
    self.blocke = instance_create(1040, 400, obj_soliddark)
    with (self.blocke)
        instance_destroy()
    with (self.blocke)
        self.image_yscale = 2
}
