self.TYPE = 0
if file_exists("filech1_3")
    self.TYPE = 1
if file_exists("filech1_4")
    self.TYPE = 1
if file_exists("filech1_5")
    self.TYPE = 1
if (self.TYPE == 0)
{
    scr_windowcaption(scr_84_get_lang_string("DEVICE_MENU_slash_Create_0_gml_8_0"))
    global.currentsong[0] = snd_init("AUDIO_DRONE.ogg")
    global.currentsong[1] = mus_loop(global.currentsong[0])
}
if (self.TYPE == 1)
{
    instance_create(0, 0, obj_fadein)
    global.tempflag[10] = 1
    scr_windowcaption(scr_84_get_lang_string("DEVICE_MENU_slash_Create_0_gml_17_0"))
    global.currentsong[0] = snd_init("AUDIO_STORY.ogg")
    global.currentsong[1] = mus_loop_ext(global.currentsong[0], 1, 0.95)
}
self.BGMADE = 0
self.BG_ALPHA = 0
self.BG_SINER = 0
self.OBMADE = 0
self.OB_DEPTH = 0
self.obacktimer = 0
self.OBM = 0.5
self.COL_A = 32768
self.COL_B = 65280
self.COL_PLUS = merge_color(0x0000FF00, 0x00FFFFFF, 0.5)
if (self.TYPE == 1)
{
    self.BGSINER = 0
    self.BGMAGNITUDE = 6
    self.COL_A = merge_color(0x00C0C0C0, 0x00800000, 0.2)
    self.COL_B = 16777215
    self.COL_PLUS = merge_color(0x0000FFFF, 0x00FFFFFF, 0.5)
    self.BGMADE = 1
    self.BG_ALPHA = 0
    self.ANIM_SINER = 0
    self.ANIM_SINER_B = 0
    self.TRUE_ANIM_SINER = 0
}
self.MENU_NO = 0
for (self.i = 0; self.i < 8; self.i += 1)
    self.MENUCOORD[self.i] = 0
self.XL = 210
self.YL = 40
self.YS = 5
self.HEARTX = 75
self.HEARTY = 110
self.HEARTXCUR = 75
self.HEARTYCUR = 75
self.MOVENOISE = 0
self.SELNOISE = 0
self.BACKNOISE = 0
self.DEATHNOISE = 0
self.ONEBUFFER = 2
self.TWOBUFFER = 0
self.THREAT = 0
self.TEMPMESSAGE = " "
self.MESSAGETIMER = 0
scr_84_load_ini()
