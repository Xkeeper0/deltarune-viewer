self.pressbuffer[global.char[self.argument0]] = 5
self.qualifybolt = -1
self.close = 99
self.topclose = 99
self.i = 0
while(true)
{
    if (self.i < self.bolttotal)
    {
        if (self.boltchar[self.i] == self.argument0)
            _temp_local_var_1 = (self.boltalive[self.i] == 1)
        else
            _temp_local_var_1 = 0
        if _temp_local_var_1
        {
            self.close = (self.boltframe[self.i] - self.boltx)
            if (self.close < 15)
                _temp_local_var_2 = (self.close > -5)
            else
                _temp_local_var_2 = 0
            if _temp_local_var_2
            {
                if (self.close < self.topclose)
                {
                    self.topclose = self.close
                    self.qualifybolt = self.i
                }
            }
        }
        self.i = (self.i + 1)
        continue
    }
    break
}
if (self.qualifybolt != -1)
{
    self.p = abs(self.topclose)
    self.burstbolt = instance_create((((self.x + 80) + (self.boltframe[self.qualifybolt] * self.boltspeed)) - (self.boltx * self.boltspeed)), (self.y + (38 * self.argument0)), obj_burstbolt)
    if (self.p == 0)
    {
        self.points[self.argument0] = (self.points[self.argument0] + 150)
        with(self.burstbolt)
        {
            self.image_blend = 0x00FFFF
        }
        with(self.burstbolt)
        {
            self.mag = 0.2
        }
    }
    if (self.p == 1)
        self.points[self.argument0] = (self.points[self.argument0] + 120)
    if (self.p == 2)
        self.points[self.argument0] = (self.points[self.argument0] + 110)
    if (self.p >= 3)
    {
        self.points[self.argument0] = (self.points[self.argument0] + (100 - (abs(self.topclose) * 2)))
        self.burstbolt.image_blend = self.boltcolor[self.argument0]
    }
    if (self.p >= 15)
        self.burstbolt.image_blend = self.charcolor[self.argument0]
    self.boltalive[self.qualifybolt] = 0
}
