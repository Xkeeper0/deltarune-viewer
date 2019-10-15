self.dualbolt = -1
self.dualboltid = -1
self.pressbuffer[0] = 5
self.pressbuffer[1] = 5
self.pressbuffer[2] = 5
self.qualifybolt = -1
self.close = 99
self.topclose = 999
self.i = 0
while(true)
{
    if (self.i < self.bolttotal)
    {
        if (self.boltalive[self.i] == 1)
        {
            self.close = (self.boltframe[self.i] - self.boltx)
            if (self.close < 15)
                _temp_local_var_1 = (self.close > -5)
            else
                _temp_local_var_1 = 0
            if _temp_local_var_1
            {
                if (self.close == self.topclose)
                {
                    self.dualbolt = 1
                    self.dualboltid = self.i
                }
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
    self.bc = self.boltchar[self.qualifybolt]
    self.p = abs(self.topclose)
    self.burstbolt = instance_create((((self.x + 80) + (self.boltframe[self.qualifybolt] * self.boltspeed)) - (self.boltx * self.boltspeed)), (self.y + (38 * self.bc)), obj_burstbolt)
    if (self.p == 0)
    {
        self.points[self.bc] = (self.points[self.bc] + 150)
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
        self.points[self.bc] = (self.points[self.bc] + 120)
    if (self.p == 2)
        self.points[self.bc] = (self.points[self.bc] + 110)
    if (self.p >= 3)
    {
        self.points[self.bc] = (self.points[self.bc] + (100 - (abs(self.topclose) * 2)))
        self.burstbolt.image_blend = self.boltcolor[self.bc]
    }
    if (self.p >= 15)
        self.burstbolt.image_blend = self.charcolor[self.bc]
    self.boltalive[self.qualifybolt] = 0
    if (self.dualbolt == 1)
    {
        self.bc = self.boltchar[self.dualboltid]
        self.p = abs(self.topclose)
        self.burstbolt = instance_create((((self.x + 80) + (self.boltframe[self.dualboltid] * self.boltspeed)) - (self.boltx * self.boltspeed)), (self.y + (38 * self.bc)), obj_burstbolt)
        if (self.p == 0)
        {
            self.points[self.bc] = (self.points[self.bc] + 150)
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
            self.points[self.bc] = (self.points[self.bc] + 120)
        if (self.p == 2)
            self.points[self.bc] = (self.points[self.bc] + 110)
        if (self.p >= 3)
        {
            self.points[self.bc] = (self.points[self.bc] + (100 - (abs(self.topclose) * 2)))
            self.burstbolt.image_blend = self.boltcolor[self.bc]
        }
        if (self.p >= 15)
            self.burstbolt.image_blend = self.charcolor[self.bc]
        self.boltalive[self.dualboltid] = 0
    }
}
