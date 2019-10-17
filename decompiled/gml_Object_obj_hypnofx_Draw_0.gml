self.timer += 1
if (self.timer == 1)
{
    self.initsiner = random(400)
    for (self.i = 0; self.i < self.ringmax; self.i += 1)
    {
        self.ringsize[self.i] = (1 + (0.5 * self.i))
        self.ringradius[self.i] = (2 + (self.i * 12))
        self.ringspeed[self.i] = 0.3
        self.ringalpha[self.i] = 0
        self.ringsiner[self.i] = self.initsiner
    }
}
if (self.timer >= 2)
{
    for (self.i = 0; self.i < self.ringmax; self.i += 1)
    {
        self.ringsiner[self.i] += ((self.i + 2) * self.ringalpha[self.i])
        if ((self.timer < 12) && (self.ringalpha[self.i] < 1))
            self.ringalpha[self.i] += 0.2
        if (self.timer >= 24)
            self.ringalpha[self.i] -= 0.1
        draw_sprite_ext(spr_hypnoring, 0, (self.x + (sin((self.ringsiner[self.i] / 12)) * self.ringradius[self.i])), (self.y + (cos((self.ringsiner[self.i] / 12)) * self.ringradius[self.i])), self.ringsize[self.i], self.ringsize[self.i], 0, 0x00FFFFFF, self.ringalpha[self.i])
    }
    if (self.timer >= 38)
        instance_destroy()
}
