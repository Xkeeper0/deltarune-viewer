if (!snd_is_playing(global.currentsong[1]))
{
    global.currentsong[0] = snd_init("mus_birdnoise.ogg")
    global.currentsong[1] = mus_loop_ext(global.currentsong[0], 1, 1)
}
self.dk = snd_loop(snd_smile)
snd_volume(self.dk, 0, 0)
snd_pitch(self.dk, 0.15)
scr_depth()
