self.msgno += 1
self.lineno = 0
self.aster = 0
self.halt = 0
self.pos = 1
self.alarm[0] = 1
self.autoaster = 1
self.mystring = self.nstring[self.msgno]
self.formatted = 0
self.wxskip = 0
self.sound_played = 0
if (self.rate < 3)
{
    self.firstnoise = 0
    self.alarm[2] = 1
}
