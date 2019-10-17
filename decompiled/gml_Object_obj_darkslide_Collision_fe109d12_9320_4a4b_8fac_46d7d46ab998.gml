self.cancollide = 0
if ((global.interact == 0) || (self.collide == 1))
    self.cancollide = 1
if (self.cancollide == 1)
{
    if (self.abovey == 0)
    {
        if (obj_mainchara.y < self.y)
        {
            self.abovey = 1
            snd_play(snd_noise)
            self.slide_noise = snd_loop(snd_paper_surf)
            with (obj_mainchara)
            {
                self.fun = 1
                self.sprite_index = spr_krisd_slide
            }
        }
        if (obj_mainchara.y > self.y)
            self.abovey = -1
    }
    self.collide = 1
    global.interact = 1
    other.y += 12
    self.collidetimer = 3
    self.collider += 1
    if ((self.slidetimer == 0) && (self.abovey == 1))
    {
        self.dust = instance_create((obj_mainchara.x + 20), (obj_mainchara.y + 30), obj_slidedust)
        with (self.dust)
        {
            self.vspeed = -6
            self.hspeed = (-1 + random(2))
        }
        self.slidetimer = -6
    }
    self.slidetimer += 1
}
