self.pressbuffer[global.char[self.argument0]] = 5
self.qualifybolt = -1
self.close = 99
self.topclose = 99
for (self.i = 0; self.i < self.bolttotal; self.i += 1)
{
    if ((self.boltchar[self.i] == self.argument0) && (self.boltalive[self.i] == 1))
    {
        self.close = (self.boltframe[self.i] - self.boltx)
        if ((self.close < 15) && (self.close > -5))
        {
            if (self.close < self.topclose)
            {
                self.topclose = self.close
                self.qualifybolt = self.i
            }
        }
    }
}
if (self.qualifybolt != -1)
{
    self.p = abs(self.topclose)
    self.burstbolt = instance_create((((self.x + 80) + (self.boltframe[self.qualifybolt] * self.boltspeed)) - (self.boltx * self.boltspeed)), (self.y + (38 * self.argument0)), obj_burstbolt)
    if (self.p == 0)
    {
        self.points[self.argument0] += 150
        with (self.burstbolt)
            self.image_blend = 0x0000FFFF
        with (self.burstbolt)
            self.mag = 0.2
    }
    if (self.p == 1)
        self.points[self.argument0] += 120
    if (self.p == 2)
        self.points[self.argument0] += 110
    if (self.p >= 3)
    {
        self.points[self.argument0] += (100 - (abs(self.topclose) * 2))
        self.burstbolt.image_blend = self.boltcolor[self.argument0]
    }
    if (self.p >= 15)
        self.burstbolt.image_blend = self.charcolor[self.argument0]
    self.boltalive[self.qualifybolt] = 0
}
