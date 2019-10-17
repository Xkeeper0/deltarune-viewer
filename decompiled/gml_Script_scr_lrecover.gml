self.recovered = self.argument0
self.maxedout = 0
if (global.lhp < global.lmaxhp)
    global.lhp += self.argument0
else
    self.maxedout = 1
if ((global.lhp >= global.lmaxhp) && (self.maxedout == 0))
{
    global.lhp = global.lmaxhp
    self.maxedout = 1
}
