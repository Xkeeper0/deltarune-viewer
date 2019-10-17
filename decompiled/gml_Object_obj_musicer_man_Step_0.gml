self.timer += 1
if (self.timer == 1)
{
    with (obj_caterpillarchara)
        instance_destroy()
    global.flag[32] = 1
}
if (self.timer == 2)
    snd_free_all()
if (self.timer == 3)
{
    if (!snd_is_playing(global.currentsong[1]))
    {
        global.currentsong[0] = snd_init("man.ogg")
        global.currentsong[1] = mus_loop_ext(global.currentsong[0], 1, 1)
    }
}
if (self.timer == 4)
    instance_destroy()
