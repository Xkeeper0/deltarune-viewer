if (self.wobbled == 0)
{
    if (instance_exists(obj_mainchara) && (global.interact == 0))
    {
        if ((obj_mainchara.x > (self.x - 20)) && (obj_mainchara.x < (self.x + 50)))
        {
            if (!instance_exists(obj_battlealphaer))
            {
                self.d = instance_create(0, 0, obj_battlealphaer)
                self.d.depth = 800000
            }
            with (obj_mainchara)
            {
                self.battlemode = 1
                self.threebuffer = 2
            }
            self.s = snd_play(snd_wobbler)
            snd_pitch(self.s, (0.5 + random(0.2)))
            self.s2 = snd_play(snd_wobbler)
            snd_pitch(self.s2, (0.9 + random(0.2)))
            self.image_speed = 0.2
            self.wobbled = 1
            for (self.i = 0; self.i < 3; self.i += 1)
            {
                self.dbullet = instance_create(self.x, self.y, obj_overworld_spade)
                with (self.dbullet)
                {
                    self.damage = 15
                    self.sprite_index = spr_wobblebullet
                    self.image_alpha = 0.7
                    self.image_xscale = 2
                    self.image_yscale = 2
                }
                self.dbullet.speed = 10
                self.dbullet.direction = (250 + (self.i * 20))
            }
        }
    }
}
