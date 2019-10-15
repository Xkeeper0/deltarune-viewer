with(obj_mainchara)
{
    if (global.specialbattle != 3)
        self.cutscene = 0
    self.visible = 1
}
with(obj_caterpillarchara)
{
    self.visible = 1
}
if (global.specialbattle == 0)
    _temp_local_var_1 = 1
else
    _temp_local_var_1 = (global.specialbattle == 3)
if _temp_local_var_1
{
    self.i = 0
    while(true)
    {
        if (self.i < (self.count + 1))
        {
            with(self.c[self.i])
            {
                instance_destroy()
            }
            self.i = (self.i + 1)
            continue
        }
        break
    }
}
if (global.specialbattle == 0)
    _temp_local_var_2 = 1
else
    _temp_local_var_2 = (global.specialbattle == 2)
if _temp_local_var_2
    global.interact = 0
if (global.flag[9] == 1)
{
    snd_free(global.batmusic[0])
    snd_volume(global.currentsong[1], 0, 0)
    snd_resume(global.currentsong[1])
    snd_volume(global.currentsong[1], 1, 20)
}
instance_destroy()
