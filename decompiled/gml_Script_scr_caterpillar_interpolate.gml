self.remx[0] = obj_mainchara.x
self.remy[0] = obj_mainchara.y
self.facing[0] = global.facing
self.i = self.target
while(true)
{
    if (self.i > 0)
    {
        self.facing[self.i] = 2
        self.remx[self.i] = (obj_mainchara.x + ((self.x - obj_mainchara.x) * (self.i / self.target)))
        self.remy[self.i] = (obj_mainchara.y + ((self.y - obj_mainchara.y) * (self.i / self.target)))
        self.i = (self.i - 1)
        continue
    }
    break
}
