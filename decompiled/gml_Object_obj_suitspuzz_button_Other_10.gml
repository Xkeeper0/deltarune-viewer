if (self.type == 0)
{
    with (obj_suitspuzz)
    {
        if (self.won == 0)
            event_user(2)
    }
}
if (self.type == 1)
{
    with (obj_suitspuzz)
    {
        if (self.won == 0)
            event_user(3)
    }
}
if (self.type == 2)
{
    with (obj_suitspuzz)
    {
        if (self.won == 0)
            event_user(4)
    }
}
snd_play(snd_noise)
self.press_timer = 2
with (obj_mainchara)
    self.onebuffer = 3
