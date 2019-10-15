self.vol = 1
self.vol2 = 0
if (obj_mainchara.y >= 420)
{
    self.vol = (1 - ((obj_mainchara.y - 620) / 400))
    self.vol2 = (0 + ((obj_mainchara.y - 1100) / 300))
}
if (self.vol < 0)
    self.vol = 0
if (self.vol2 < 0)
    self.vol2 = 0
snd_volume(global.currentsong[1], self.vol, 0)
snd_volume(self.dk, self.vol2, 0)
