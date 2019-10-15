self.siner = (self.siner + 1)
if (self.OBSPEED > 0)
    self.alpha = (sin((self.siner / 34)) * 0.2)
self.ystretch = (self.ystretch + self.OBSPEED)
self.xstretch = (self.xstretch + self.OBSPEED)
if (self.b_insurance < 0)
    self.b_insurance = (self.b_insurance + 0.01)
if (self.ystretch > 2)
{
    self.o_insurance = (self.o_insurance + 0.01)
    if (self.o_insurance >= 0.5)
        instance_destroy()
}
