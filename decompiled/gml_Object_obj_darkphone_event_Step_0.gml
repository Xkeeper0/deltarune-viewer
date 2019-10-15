if (self.con == 0)
{
    self.con = 1
    self.alarm[4] = 40
}
if (self.con == 1)
    global.interact = 1
if (self.con == 2)
{
    self.sndplay = 0
    if snd_is_playing(global.currentsong[1])
    {
        self.sndplay = 1
        snd_pause(global.currentsong[1])
    }
    snd_play(snd_smile)
    self.con = 3
    self.alarm[4] = 200
}
if (self.con == 4)
{
    with(obj_dialoguer)
    {
        instance_destroy()
    }
    with(obj_writer)
    {
        instance_destroy()
    }
    self.con = 7
}
if (self.con == 7)
{
    snd_stop(snd_smile)
    if (self.sndplay == 1)
        snd_resume(global.currentsong[1])
    global.msg[0] = scr_84_get_lang_string("obj_darkphone_event_slash_Step_0_gml_42_0"@9965)
    instance_create(0, 0, obj_dialoguer)
    self.con = 5
    global.interact = 6
    instance_destroy()
}
