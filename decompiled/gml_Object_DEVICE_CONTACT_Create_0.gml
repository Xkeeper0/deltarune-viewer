self.EVENT = 0
self.TIMER = 0
self.HEARTMADE = 0
self.HSINER = 0
self.OBMADE = 0
global.flag[20] = 0
global.flag[6] = 1
global.typer = 666
self.ALREADY = 1
self.TRUE_ALREADY = 0
if (global.tempflag[10] == 1)
    self.TRUE_ALREADY = 1
self.SKIPBUFFER = 10
self.FADED = 0
self.FADEFACTOR = 0.4
self.FADEUP = 0
self.OB_DEPTH = 0
self.obacktimer = 0
self.OBM = 0.5
global.currentsong[0] = snd_init("AUDIO_DRONE.ogg"@9541)
mus_loop(global.currentsong[0])
self.WHITEFADE = 0
scr_windowcaption(scr_84_get_lang_string("DEVICE_CONTACT_slash_Create_0_gml_23_0"@9543))
if (global.lang == "ja"@1566)
    global.flag[912] = 1
