self.skipme = 0
self.textsound = 13
self.charline = 33
self.originalcharline = self.charline
self.hspace = 8
self.vspace = 18
self.rate = 1
self.mycolor = 16777215
self.myfont = scr_84_get_font("main")
self.shake = 0
self.special = 0
self.skippable = 1
self.automash_timer = 0
if (global.flag[6] == 1)
    self.skippable = 0
self.f = 1
if (global.darkzone == 1)
    self.f = 2
scr_texttype()
self.autoaster = 1
self.pos = 2
self.lineno = 0
self.aster = 0
self.halt = 0
self.xcolor = 0
self.wxskip = 0
self.msgno = 0
self.first_alarm = 0
self.firstnoise = 0
self.noiseskip = 0
self.formatted = 0
self.colorchange = 0
self.fontchange = 0
self.sound_played = 0
self.writingx = self.x
self.writingy = self.y
self.dialoguer = 0
self.smallface = 505050
self.faced = 0
self.facedever = 0
self.facer = 0
self.siner = 0
self.specfade = 1
for (self.i = 0; self.i < 7; self.i += 1)
{
    self.specx[self.i] = (self.i * 6)
    self.specy[self.i] = (self.i * 6)
}
self.mystring = global.msg[0]
for (self.j = 0; self.j < 100; self.j += 1)
    self.nstring[self.j] = global.msg[self.j]
self.length = string_length(self.mystring)
self.alarm[0] = self.rate
if (self.rate < 3)
    self.alarm[2] = 1
else
    scr_textsound()
