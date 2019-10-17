for (self.i = 0; self.i < 20; self.i += 1)
{
    self.prevalpha[self.i] = 0
    self.prevwx[self.i] = -200
    self.prevwy[self.i] = -200
    self.prevstringmax[self.i] = 0
    self.prevhspace[self.i] = 0
    self.prevlinecount[self.i] = 0
    self.prevvspace[self.i] = 0
}
self.carcon = 0
self.drawwave = 0
self.con = 0
self.dhaver = 0
self.v = 0
self.vx = 0
self.vy = 0
self.myd = 23827382
if (global.plot > 1)
    instance_destroy()
else
{
    global.facing = 0
    with (obj_npc_sign)
        instance_destroy()
    global.currentsong[0] = snd_init("mus_introcar.ogg")
    self.con = 1
    self.alarm[4] = 30
    global.interact = 1
    self.k = 326
    self.t = scr_marker(195, 240, spr_toriel_lt)
    with (self.t)
        self.depth = 400000
    self.c = scr_marker(131, 240, spr_torcar_d)
    with (self.c)
        self.depth = 500000
}
