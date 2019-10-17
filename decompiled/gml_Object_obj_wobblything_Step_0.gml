if (self.wobbled == 0)
{
    if instance_exists(obj_mainchara)
    {
        if ((obj_mainchara.x > (self.x - 10)) && (obj_mainchara.x < (self.x + 50)))
        {
            self.s = snd_play(snd_wobbler)
            snd_pitch(self.s, (0.8 + random(0.3)))
            self.image_speed = 0.2
            self.wobbled = 1
        }
    }
}
