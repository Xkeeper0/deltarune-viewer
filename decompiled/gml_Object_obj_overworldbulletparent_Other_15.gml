if (self.active == 1)
{
    snd_stop(snd_hurt1)
    snd_play(snd_hurt1)
    if (self.target != 3)
        scr_damage()
    if (self.target == 3)
        scr_damage_all_overworld()
    with(obj_darkcontroller)
    {
        self.charcon = 1
    }
    global.interact = 1
    with(obj_mainchara)
    {
        self.alarm[1] = 7
    }
}
