self.con = 1
self.image_speed = 0
self.mcon = 1
self.puzz1 = instance_create(780, 60, obj_suitspuzz)
with(self.puzz1)
{
    self.sol[0] = 1
    self.sol[1] = 2
    self.sol[2] = 1
    self.max_suit = 3
}
if (global.plot >= 154)
{
    with(self.puzz1)
    {
        self.suit[0] = 1
        self.suit[1] = 2
        self.suit[2] = 1
    }
    self.con = 999
    self.mcon = 999
    instance_destroy()
}
