self.buffer -= 1
if (self.buffer < 0)
{
    if ((self.mouthmove == 1) && (self.mouthtimer == 0))
    {
        self.mouthtimer = 1
        self.face_index = 1
    }
}
if (self.mouthtimer > 0)
    self.mouthtimer += self.rate
if ((self.mouthtimer >= 1) && (self.mouthtimer <= 5))
    self.face_index = 1
else
    self.face_index = 0
if (self.mouthtimer >= 9)
{
    self.mouthtimer = 0
    self.mouthmove = 0
}
