global.currentsong[0] = snd_init("legend.ogg")
snd_pitch(global.currentsong[0], 0.95)
global.currentsong[1] = mus_play(global.currentsong[0])
self.contimer = 0
self.ytimer = 0
self.xtimer = 0
self.yoff = 0
self.xoff = 0
self.con = 1
self.fadecolor = 0
self.chunkfade = 0
self.chunkamt = 1
self.border = 1
self.pic = 840
self.fadespeed = 0.02
global.flag[6] = 1
self.textimer = 0
self.ingame = 0
if (global.plot == 20)
    self.ingame = 1
self.skipped = 0
self.skiptimer = 0
