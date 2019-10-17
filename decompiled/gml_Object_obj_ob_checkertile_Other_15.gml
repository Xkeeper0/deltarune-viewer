if ((self.active == 1) && (global.interact == 0))
{
    global.interact = 1
    snd_play(snd_boost)
    with (obj_ob_gen)
    {
        self.whitetimer = 0
        self.whitecon = 1
    }
}
