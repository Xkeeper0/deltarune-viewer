with (obj_mainchara)
{
    if (global.specialbattle != 3)
        self.cutscene = 0
    self.visible = 1
}
with (obj_caterpillarchara)
    self.visible = 1
if ((global.specialbattle == 0) || (global.specialbattle == 3))
{
    for (self.i = 0; self.i < (self.count + 1); self.i += 1)
    {
        with (self.c[self.i])
            instance_destroy()
    }
}
if ((global.specialbattle == 0) || (global.specialbattle == 2))
    global.interact = 0
if (global.flag[9] == 1)
{
    snd_free(global.batmusic[0])
    snd_volume(global.currentsong[1], 0, 0)
    snd_resume(global.currentsong[1])
    snd_volume(global.currentsong[1], 1, 20)
}
instance_destroy()
