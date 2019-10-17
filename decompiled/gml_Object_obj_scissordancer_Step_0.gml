self.dancetimer += 1
if ((self.dancetimer >= 30) && (self.dancetimer <= 75))
    self.image_index += 0.25
if ((self.dancetimer >= 112) && (self.dancetimer <= 157))
    self.image_index -= 0.25
if (self.dancetimer >= 166)
    self.dancetimer = 0
if (self.specturn == 1)
{
    if ((self.x >= (self.xstart + 170)) && (self.y <= (self.ystart + 10)))
    {
        self.y -= self.vspeed
        self.x -= self.hspeed
        self.direction -= 90
        self.x = (self.xstart + 169)
    }
    if (self.y >= (self.ystart + 160))
    {
        self.y -= self.vspeed
        self.x -= self.hspeed
        self.direction -= 90
        self.y = (self.ystart + 159)
    }
    if (self.x <= self.xstart)
    {
        self.y -= self.vspeed
        self.x -= self.hspeed
        self.direction -= 90
        self.x = (self.xstart + 1)
    }
    if (self.y <= self.ystart)
    {
        self.y -= self.vspeed
        self.x -= self.hspeed
        self.direction -= 90
        self.y = (self.ystart + 1)
    }
}
if ((self.myinteract == 1) && (self.sndcon == 0))
{
    self.sndcon = 1
    self.myinteract = 0
}
else
    self.myinteract = 2
if ((self.sndcon >= 1) && (self.sndcon <= 5))
{
    self.sndtimer -= 1
    if (self.sndtimer <= 0)
    {
        self.p = (0.5 + random(0.7))
        self.b = snd_play(snd_scissorbell)
        snd_pitch(self.b, self.p)
        self.sndcon += 1
        self.sndtimer = 3
    }
}
if (self.sndcon == 6)
{
    self.sndtimer += 1
    if (self.sndtimer >= 15)
    {
        self.myinteract = 0
        self.sndcon = 0
        self.sndtimer = 0
    }
}
scr_depth()
if instance_exists(self.bullet)
{
    self.bullet.x = (self.x + self.hspeed)
    self.bullet.y = (self.y + self.vspeed)
}
