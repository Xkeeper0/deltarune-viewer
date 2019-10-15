self.siner = (self.siner + 1)
self.x = (self.initx + (sin((self.siner / 24)) * 2))
self.y = (self.inity + (cos((self.siner / 30)) * 2))
if (self.FINISH == 0)
{
    if (self.ONEBUFFER < 0)
        _temp_local_var_1 = (self.CANCEL == 0)
    else
        _temp_local_var_1 = 0
}
else
    _temp_local_var_1 = 0
if _temp_local_var_1
{
    if left_p()
        self.PART[self.s] = (self.PART[self.s] - 1)
    if right_p()
        self.PART[self.s] = (self.PART[self.s] + 1)
    if button1_p()
        _temp_local_var_2 = (self.LOCK[self.s] == 1)
    else
        _temp_local_var_2 = 0
    if _temp_local_var_2
    {
        self.FINISH = 1
        global.flag[(900 + self.s)] = self.PART[self.s]
        global.flag[20] = 1
    }
}
self.i = 0
while(true)
{
    if (self.i < 3)
    {
        if (self.PART[self.i] > self.PARTMAX[self.i])
            self.PART[self.i] = self.PARTMAX[self.i]
        if (self.PART[self.i] < 0)
            self.PART[self.i] = 0
        self.IDEALX[self.i] = (self.PART[self.i] * -50)
        if (self.PARTX[self.i] < self.IDEALX[self.i])
        {
            if (abs((self.IDEALX[self.i] - self.PARTX[self.i])) >= 0)
                self.PARTX[self.i] = (self.PARTX[self.i] + 10)
            if (abs((self.IDEALX[self.i] - self.PARTX[self.i])) > 50)
                self.PARTX[self.i] = (self.PARTX[self.i] + 10)
            if (abs((self.IDEALX[self.i] - self.PARTX[self.i])) > 100)
                self.PARTX[self.i] = (self.PARTX[self.i] + 10)
            if (abs((self.IDEALX[self.i] - self.PARTX[self.i])) > 150)
                self.PARTX[self.i] = (self.PARTX[self.i] + 10)
        }
        if (self.PARTX[self.i] > self.IDEALX[self.i])
        {
            if (abs((self.IDEALX[self.i] - self.PARTX[self.i])) >= 0)
                self.PARTX[self.i] = (self.PARTX[self.i] - 10)
            if (abs((self.IDEALX[self.i] - self.PARTX[self.i])) > 50)
                self.PARTX[self.i] = (self.PARTX[self.i] - 10)
            if (abs((self.IDEALX[self.i] - self.PARTX[self.i])) > 100)
                self.PARTX[self.i] = (self.PARTX[self.i] - 10)
            if (abs((self.IDEALX[self.i] - self.PARTX[self.i])) > 150)
                self.PARTX[self.i] = (self.PARTX[self.i] - 10)
        }
        if (self.PARTX[self.i] == self.IDEALX[self.i])
            self.LOCK[self.i] = 1
        else
            self.LOCK[self.i] = 0
        self.i = (self.i + 1)
        continue
    }
    break
}
self.ONEBUFFER = (self.ONEBUFFER - 1)
if (self.FADEBUFFER > 0)
    _temp_local_var_3 = (self.FINISH <= 0)
else
    _temp_local_var_3 = 0
if _temp_local_var_3
    self.FADEBUFFER = (self.FADEBUFFER - 1)
if (self.FINISH == 1)
    self.FADEBUFFER = (self.FADEBUFFER + 1)
if (self.FADEBUFFER > 10)
    instance_destroy()
