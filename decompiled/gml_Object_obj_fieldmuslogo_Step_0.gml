self.siner += 1
if (self.siner <= 30)
{
    self.offx += (2 - (self.siner / 15))
    if (self.image_alpha < 1)
        self.image_alpha += 0.05
}
if (self.siner >= 120)
{
    self.offx += (-8 + (self.siner / 15))
    self.image_alpha -= 0.0333333333333333
    if (self.image_alpha <= 0)
        instance_destroy()
}
