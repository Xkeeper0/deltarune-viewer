self.doit = 1
if (global.plot < 70)
    _temp_local_var_1 = (self.room == room_forest_area1)
else
    _temp_local_var_1 = 0
if _temp_local_var_1
    self.doit = 0
if (self.doit == 1)
{
    if (~ snd_is_playing(global.currentsong[1]))
    {
        global.currentsong[0] = snd_init("forest.ogg"@4697)
        global.currentsong[1] = mus_loop_ext(global.currentsong[0], 0.7, 1)
    }
}
