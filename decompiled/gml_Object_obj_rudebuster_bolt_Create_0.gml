self.target = 43843743
self.damage = 1
self.star = 0
self.caster = 0
self.image_alpha = 0
self.image_xscale = 2
self.image_yscale = 2
self.image_speed = 1
self.i = 0
while(true)
{
    if (self.i < 10)
    {
        self.prevx[self.i] = self.x
        self.prevy[self.i] = self.y
        self.i = (self.i + 1)
        continue
    }
    break
}
self.a = 0
self.targetx = 0
self.targety = 0
self.t = 0
self.tmax = 4
self.siner = 0
self.explode = 0
self.maxaft = 0
self.bolt_timer = 0
self.chosen_bolt = 0
self.final_bolt = 0
self.red = 0
