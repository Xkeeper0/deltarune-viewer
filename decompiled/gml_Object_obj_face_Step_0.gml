self.buffer = (self.buffer - 1)
if (self.buffer < 0)
{
    if (self.mouthmove == 1)
        _temp_local_var_1 = (self.mouthtimer == 0)
    else
        _temp_local_var_1 = 0
    if _temp_local_var_1
    {
        self.mouthtimer = 1
        self.face_index = 1
    }
}
if (self.mouthtimer > 0)
    self.mouthtimer = (self.mouthtimer + self.rate)
if (self.mouthtimer >= 1)
    _temp_local_var_2 = (self.mouthtimer <= 5)
else
    _temp_local_var_2 = 0
if _temp_local_var_2
    self.face_index = 1
else
    self.face_index = 0
if (self.mouthtimer >= 9)
{
    self.mouthtimer = 0
    self.mouthmove = 0
}
