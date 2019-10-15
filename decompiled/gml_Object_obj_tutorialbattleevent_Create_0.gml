self.con = 1
self.xx = self.x
self.yy = 0
self.dummy = instance_create((self.xx + 500), (self.yy + 160), obj_npc_room)
if (global.plot >= 31)
    self.con = 400
if (global.plot < 6)
{
    scr_getchar(3)
    global.cinstance[0] = instance_create((obj_mainchara.x - 6), (obj_mainchara.y - 16), obj_caterpillarchara)
    global.cinstance[0].target = 12
    with(global.cinstance[0])
    {
        self.usprite = 206
        self.dsprite = 204
        self.rsprite = 209
        self.lsprite = 207
    }
}
