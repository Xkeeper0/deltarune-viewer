self.spec = 0
self.delaytimer = 0
self.delay = 2
self.active = 0
self.damage = round(random(600))
self.bounces = 0
self.type = -1
self.stretch = 0.2
self.stretchgo = 1
self.lightf = merge_color(0x00800080, 0x00FFFFFF, 0.6)
self.lightb = merge_color(0x00FFFF00, 0x00FFFFFF, 0.5)
self.lightg = merge_color(0x0000FF00, 0x00FFFFFF, 0.5)
self.kill = 0
self.killtimer = 0
self.killactive = 0
with (obj_dmgwriter)
{
    if (self.type != 3)
        self.killtimer = 0
}
self.specialmessage = 0
