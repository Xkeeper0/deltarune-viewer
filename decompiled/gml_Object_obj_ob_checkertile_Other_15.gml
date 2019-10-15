if (self.active == 1)
    _temp_local_var_1 = (global.interact == 0)
else
    _temp_local_var_1 = 0
if _temp_local_var_1
{
    global.interact = 1
    snd_play(snd_boost)
    with(obj_ob_gen)
    {
        self.whitetimer = 0
        self.whitecon = 1
    }
}
