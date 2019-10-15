if (self.EVENT == 1)
{
    snd_free_all()
    global.currentsong[0] = snd_init("AUDIO_DRONE.ogg"@9541)
    global.currentsong[1] = mus_loop(global.currentsong[0])
    global.typer = 667
    global.fc = 0
    global.msg[0] = scr_84_get_lang_string("DEVICE_FAILURE_slash_Step_0_gml_10_0"@9701)
    self.EVENT = 2
    self.W = instance_create(70, 80, obj_writer)
    if (global.tempflag[3] >= 1)
    {
        with(obj_writer)
        {
            instance_destroy()
        }
    }
}
if (self.EVENT == 0)
    self.EVENT = 1
if (self.EVENT == 2)
    _temp_local_var_1 = (~ instance_exists(obj_writer))
else
    _temp_local_var_1 = 0
if _temp_local_var_1
{
    self.JA_XOFF = 0
    if (global.lang == "ja"@1566)
        self.JA_XOFF = 44
    global.msg[0] = scr_84_get_lang_string("DEVICE_FAILURE_slash_Step_0_gml_28_0"@9702)
    if (global.tempflag[3] >= 1)
    {
        self.JA_XOFF = 0
        global.msg[0] = scr_84_get_lang_string("DEVICE_FAILURE_slash_Step_0_gml_32_0"@9703)
    }
    self.EVENT = 3
    self.alarm[4] = 30
    if (global.tempflag[3] >= 1)
        self.alarm[4] = 15
    self.W = instance_create((40 + self.JA_XOFF), 80, obj_writer)
}
if (self.EVENT == 4)
{
    self.choice = instance_create(100, 120, DEVICE_CHOICE)
    self.EVENT = 5
}
if (self.EVENT == 5)
{
    if (global.choice == 0)
    {
        with(obj_writer)
        {
            instance_destroy()
        }
        self.EVENT = 6
    }
    if (global.choice == 1)
    {
        with(obj_writer)
        {
            instance_destroy()
        }
        self.EVENT = 26
    }
}
if (self.EVENT == 6)
{
    snd_free_all()
    global.flag[6] = 1
    global.msg[0] = scr_84_get_lang_string("DEVICE_FAILURE_slash_Step_0_gml_68_0"@9704)
    self.W = instance_create(50, 80, obj_writer)
    self.EVENT = 7
    self.alarm[4] = 30
    if (global.tempflag[3] >= 1)
    {
        with(obj_writer)
        {
            instance_destroy()
        }
        self.alarm[4] = 1
    }
}
if (self.EVENT == 8)
{
    self.WHITEFADE = 1
    self.FADEUP = 0.01
    self.EVENT = 9
    self.alarm[4] = 120
    if (global.tempflag[3] >= 1)
    {
        self.FADEUP = 0.03
        self.alarm[4] = 45
    }
    global.tempflag[3] = (global.tempflag[3] + 1)
}
if (self.EVENT == 10)
{
    scr_windowcaption(scr_84_get_lang_string("DEVICE_FAILURE_slash_Step_0_gml_95_0"@9705))
    scr_tempload()
    self.EVENT = 11
}
if (self.EVENT == 26)
{
    snd_free_all()
    global.msg[0] = scr_84_get_lang_string("DEVICE_FAILURE_slash_Step_0_gml_103_0"@9706)
    self.EVENT = 27
    self.W = instance_create(60, 80, obj_writer)
}
if (self.EVENT == 27)
    _temp_local_var_2 = (~ instance_exists(obj_writer))
else
    _temp_local_var_2 = 0
if _temp_local_var_2
{
    global.currentsong[0] = snd_init("AUDIO_DARKNESS.ogg"@9707)
    global.currentsong[1] = mus_play(global.currentsong[0])
    self.EVENT = 28
    self.DARK_WAIT = 0
}
if (self.EVENT == 28)
{
    self.DARK_WAIT = (self.DARK_WAIT + 1)
    if (self.DARK_WAIT >= 2040)
        game_end()
    if (~ snd_is_playing(global.currentsong[1]))
        game_end()
}
if (self.EVENT >= 0)
    _temp_local_var_3 = (self.EVENT <= 4)
else
    _temp_local_var_3 = 0
if _temp_local_var_3
{
    if button2_h()
    {
        with(obj_writer)
        {
            if (self.pos < (self.length - 3))
                self.pos = (self.pos + 2)
            if (self.specfade <= 0.9)
                self.specfade = (self.specfade - 0.1)
            if (self.rate <= 1)
                self.rate = 1
        }
    }
}
