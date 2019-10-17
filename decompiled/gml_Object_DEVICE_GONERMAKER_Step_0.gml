self.siner += 1
self.x = (self.initx + (sin((self.siner / 24)) * 2))
self.y = (self.inity + (cos((self.siner / 30)) * 2))
if ((self.FINISH == 0) && ((self.ONEBUFFER < 0) && (self.CANCEL == 0)))
{
    if left_p()
        self.PART[self.s] -= 1
    if right_p()
        self.PART[self.s] += 1
    if (button1_p() && (self.LOCK[self.s] == 1))
    {
        self.FINISH = 1
        global.flag[(900 + self.s)] = self.PART[self.s]
        global.flag[20] = 1
    }
}
for (self.i = 0; self.i < 3; self.i += 1)
{
    if (self.PART[self.i] > self.PARTMAX[self.i])
        self.PART[self.i] = self.PARTMAX[self.i]
    if (self.PART[self.i] < 0)
        self.PART[self.i] = 0
    self.IDEALX[self.i] = (self.PART[self.i] * -50)
    if (self.PARTX[self.i] < self.IDEALX[self.i])
    {
        if (abs((self.IDEALX[self.i] - self.PARTX[self.i])) >= 0)
            self.PARTX[self.i] += 10
        if (abs((self.IDEALX[self.i] - self.PARTX[self.i])) > 50)
            self.PARTX[self.i] += 10
        if (abs((self.IDEALX[self.i] - self.PARTX[self.i])) > 100)
            self.PARTX[self.i] += 10
        if (abs((self.IDEALX[self.i] - self.PARTX[self.i])) > 150)
            self.PARTX[self.i] += 10
    }
    if (self.PARTX[self.i] > self.IDEALX[self.i])
    {
        if (abs((self.IDEALX[self.i] - self.PARTX[self.i])) >= 0)
            self.PARTX[self.i] -= 10
        if (abs((self.IDEALX[self.i] - self.PARTX[self.i])) > 50)
            self.PARTX[self.i] -= 10
        if (abs((self.IDEALX[self.i] - self.PARTX[self.i])) > 100)
            self.PARTX[self.i] -= 10
        if (abs((self.IDEALX[self.i] - self.PARTX[self.i])) > 150)
            self.PARTX[self.i] -= 10
    }
    if (self.PARTX[self.i] == self.IDEALX[self.i])
        self.LOCK[self.i] = 1
    else
        self.LOCK[self.i] = 0
}
self.ONEBUFFER -= 1
if ((self.FADEBUFFER > 0) && (self.FINISH <= 0))
    self.FADEBUFFER -= 1
if (self.FINISH == 1)
    self.FADEBUFFER += 1
if (self.FADEBUFFER > 10)
    instance_destroy()
