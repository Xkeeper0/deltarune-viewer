self.siner = 0
self.targetx = 0
self.wing_index = 0
self.wingtimer = 0
self.shot = 0
self.xmake = 2
self.attacktimer = 0
self.attackcon = -1
self.shakefactor = 4
self.side = 1
self.loc_check = 0
self.mazemode = 0
self.beatcon = 0
self.introcon = 0
self.introtimer = 0
self.shadowy = (self.y + 160)
self.shadow = scr_dark_marker(self.x, self.shadowy, self.sprite_index)
with(self.shadow)
{
    self.sprite_index = spr_starwalker_wings
    self.image_yscale = 0.25
    self.image_blend = 0x000000
    self.depth = 600000
}
self.depth = self.shadow.depth
self.i = 0
while(true)
{
    if (self.i < 6)
    {
        self.char_xcheck[self.i] = obj_mainchara.x
        self.char_ycheck[self.i] = obj_mainchara.y
        self.i = (self.i + 1)
        continue
    }
    break
}
