self.timer = (self.timer + 1)
if (self.timer == 1)
{
    self.initsiner = random(400)
    self.i = 0
    while(true)
    {
        if (self.i < self.ringmax)
        {
            self.ringsize[self.i] = (1 + (0.5 * self.i))
            self.ringradius[self.i] = (2 + (self.i * 12))
            self.ringspeed[self.i] = 0.3
            self.ringalpha[self.i] = 0
            self.ringsiner[self.i] = self.initsiner
            self.i = (self.i + 1)
            continue
        }
        break
    }
}
if (self.timer >= 2)
{
    self.i = 0
    while(true)
    {
        if (self.i < self.ringmax)
        {
            self.ringsiner[self.i] = (self.ringsiner[self.i] + ((self.i + 2) * self.ringalpha[self.i]))
            if (self.timer < 12)
                _temp_local_var_1 = (self.ringalpha[self.i] < 1)
            else
                _temp_local_var_1 = 0
            if _temp_local_var_1
                self.ringalpha[self.i] = (self.ringalpha[self.i] + 0.2)
            if (self.timer >= 24)
                self.ringalpha[self.i] = (self.ringalpha[self.i] - 0.1)
            draw_sprite_ext(spr_hypnoring, 0, (self.x + (sin((self.ringsiner[self.i] / 12)) * self.ringradius[self.i])), (self.y + (cos((self.ringsiner[self.i] / 12)) * self.ringradius[self.i])), self.ringsize[self.i], self.ringsize[self.i], 0, 0xFFFFFF, self.ringalpha[self.i])
            self.i = (self.i + 1)
            continue
        }
        break
    }
    if (self.timer >= 38)
        instance_destroy()
}
