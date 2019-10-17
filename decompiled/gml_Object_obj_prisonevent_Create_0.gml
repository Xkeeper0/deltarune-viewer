self.puzz1 = instance_create(260, 220, obj_suitspuzz)
with (self.puzz1)
{
    self.sol[0] = 3
    self.sol[1] = 4
    self.sol[2] = 1
    self.max_suit = 3
}
self.tried = 0
self.pcon = 0
self.scon = 0
self.wcon = 0
self.con2 = 0
if (global.plot < 154)
{
    self.con = 1
    __view_set(0, 0, 440)
    with (obj_mainchara)
        self.cutscene = 1
}
if (global.plot == 154)
{
    self.con = 300
    with (self.puzz1)
    {
        self.suit[0] = 3
        self.suit[1] = 4
        self.suit[2] = 1
    }
}
if (global.plot > 154)
{
    with (self.puzz1)
    {
        self.suit[0] = 3
        self.suit[1] = 4
        self.suit[2] = 1
    }
    self.con = 999
    instance_destroy()
}
