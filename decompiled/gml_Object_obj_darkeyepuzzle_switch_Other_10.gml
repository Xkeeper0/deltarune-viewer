self.done = 0
if (self.x < 600)
{
    with (obj_darkeyepuzzle)
    {
        if (self.eye[0] == 0)
            self.eye[0] = 1
        else
            self.eye[0] = 0
        if (self.eye[2] == 0)
            self.eye[2] = 1
        else
            self.eye[2] = 0
    }
    self.done = 1
}
if ((self.x < 700) && (self.done == 0))
{
    with (obj_darkeyepuzzle)
    {
        if (self.eye[0] == 0)
            self.eye[0] = 1
        else
            self.eye[0] = 0
        if (self.eye[1] == 0)
            self.eye[1] = 1
        else
            self.eye[1] = 0
    }
    self.done = 1
}
if ((self.x < 800) && (self.done == 0))
{
    with (obj_darkeyepuzzle)
    {
        if (self.eye[2] == 0)
            self.eye[2] = 1
        else
            self.eye[2] = 0
    }
    self.done = 1
}
snd_play(snd_noise)
with (obj_mainchara)
    self.onebuffer = 3
