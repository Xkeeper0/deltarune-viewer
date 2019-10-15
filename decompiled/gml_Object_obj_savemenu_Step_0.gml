self.buffer = (self.buffer - 1)
if (self.coord == 2)
    _temp_local_var_1 = (self.buffer < 0)
else
    _temp_local_var_1 = 0
if _temp_local_var_1
{
    if button1_p()
    {
        self.coord = 99
        self.endme = 1
    }
}
if (self.coord < 2)
{
    if left_p()
        _temp_local_var_2 = 1
    else
        _temp_local_var_2 = right_p()
    if _temp_local_var_2
    {
        if (self.coord == 1)
            self.coord = 0
        else
            self.coord = 1
    }
}
if (self.coord == 0)
    _temp_local_var_3 = (self.buffer < 0)
else
    _temp_local_var_3 = 0
if _temp_local_var_3
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
            self.seconds = ("0"@2521 + string(self.seconds))
    }
}
if button1_p()
{
    if (self.coord == 1)
        _temp_local_var_4 = (self.buffer < 0)
    else
        _temp_local_var_4 = 0
}
else
    _temp_local_var_4 = 0
if _temp_local_var_4
    self.endme = 1
if button2_p()
    _temp_local_var_5 = (self.buffer < 0)
else
    _temp_local_var_5 = 0
if _temp_local_var_5
    self.endme = 1
if (self.endme == 1)
{
    global.interact = 0
    with(obj_mainchara)
    {
        self.onebuffer = 3
    }
    instance_destroy()
}
