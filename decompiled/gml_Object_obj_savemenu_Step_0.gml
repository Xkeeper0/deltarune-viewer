self.buffer -= 1
if ((self.coord == 2) && (self.buffer < 0))
{
    if button1_p()
    {
        self.coord = 99
        self.endme = 1
    }
}
if (self.coord < 2)
{
    if (left_p() || right_p())
    {
        if (self.coord == 1)
            self.coord = 0
        else
            self.coord = 1
    }
}
if ((self.coord == 0) && (self.buffer < 0))
{
    if button1_p()
    {
        snd_play(snd_save)
        script_execute(scr_save)
        self.coord = 2
        self.buffer = 3
        if (self.d == 2)
        {
            self.name = global.truename
            self.love = global.llv
        }
        scr_roomname(self.room)
        self.level = global.lv
        self.time = global.time
        self.minutes = floor((self.time / 1800))
        self.seconds = round((((self.time / 1800) - self.minutes) * 60))
        if (self.seconds == 60)
            self.seconds = 59
        if (self.seconds < 10)
            self.seconds = ("0" + string(self.seconds))
    }
}
if (button1_p() && ((self.coord == 1) && (self.buffer < 0)))
    self.endme = 1
if (button2_p() && (self.buffer < 0))
    self.endme = 1
if (self.endme == 1)
{
    global.interact = 0
    with (obj_mainchara)
        self.onebuffer = 3
    instance_destroy()
}
