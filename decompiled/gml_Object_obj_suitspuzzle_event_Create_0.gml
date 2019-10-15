self.con = 1
self.image_xscale = 2
self.image_yscale = 2
self.talked = 0
self.puzzle = instance_create(180, 60, obj_suitspuzz)
with(self.puzzle)
{
    self.max_suit = 3
    self.sol[0] = 3
    self.sol[1] = 4
    self.sol[2] = 3
}
self.easel = scr_dark_marker(400, 160, spr_thrashdesign)
with(self.easel)
{
    self.depth = 900000
}
self.i = 0
while(true)
{
    if (self.i < 3)
    {
        self.spike[self.i] = scr_dark_marker(520, (240 + (self.i * 40)), spr_spiketile)
        self.spike[self.i].depth = 800000
        self.i = (self.i + 1)
        continue
    }
    break
}
self.block = instance_create(520, 240, obj_soliddark)
self.block.image_yscale = 3
self.s = scr_dark_marker(372, 170, spr_susieu_dark)
if (global.plot < 71)
    global.plot = 71
if (global.plot == 71)
{
    self.con = 15
    with(self.s)
    {
        self.visible = 0
    }
    self.visible = 0
    self.lnpc = instance_create(self.x, self.y, obj_npc_facing)
    with(self.lnpc)
    {
        self.dtsprite = spr_lancer_dt
        self.rtsprite = 216
        self.ltsprite = 220
        self.utsprite = 214
        self.sprite_index = self.dtsprite
        self.facing = 2
        self.dfacing = 2
        self.y = (self.y + 100)
    }
    self.snpc = instance_create(self.s.x, self.s.y, obj_npc_facing)
    with(self.snpc)
    {
        self.dtsprite = spr_susiedt_dark
        self.rtsprite = 184
        self.ltsprite = 181
        self.utsprite = 192
        self.sprite_index = self.dtsprite
        self.facing = 2
        self.dfacing = 2
        self.y = (self.y + 100)
    }
}
if (global.plot >= 72)
{
    with(self.s)
    {
        instance_destroy()
    }
    with(self.easel)
    {
        instance_destroy()
    }
    with(self.puzzle)
    {
        self.suit[0] = 3
        self.suit[1] = 4
        self.suit[2] = 3
        self.won = 1
    }
    with(self.block)
    {
        instance_destroy()
    }
    self.i = 0
    while(true)
    {
        if (self.i < 3)
        {
            self.spike[self.i].image_index = 1
            self.i = (self.i + 1)
            continue
        }
        break
    }
    self.con = 999
    instance_destroy()
}
