self.w = self.sprite_width
self.h = self.sprite_height
self.NOISE = snd_play(AUDIO_INTRONOISE)
self.siner = 0
self.factor = 1
self.factor2 = 0
self.factory = (self.h / 2)
self.mid = (self.h / 2)
self.x = ((__view_get(e__VW.WView, 0) / 2) - (self.w / 2))
self.y = (((__view_get(e__VW.HView, 0) / 2) - (self.h / 2)) - 10)
self.inity = self.y
self.PHASE = 0
self.PHASETIMER = 0
self.PHASEPLUS = 0
self.AA = 1
self.AB = 1
self.ingame = 1
if (global.plot == 0)
    self.ingame = 0
self.skipped = 0
self.skiptimer = 0
self.room_speed = 15
