if (self.active == 1)
{
    if (global.inv < 0)
    {
        instance_create(0, 0, obj_shake)
        snd_stop(snd_hurt1)
        snd_play(snd_hurt1)
        global.inv = (global.invc * 40)
        self.i = 0
        while(true)
        {
            if (self.i < 3)
            {
                self.temphp[self.i] = global.hp[global.char[self.i]]
                if (self.temphp[self.i] < 0)
                    self.temphp[self.i] = 0
                self.i = (self.i + 1)
                continue
            }
            break
        }
        if ((ceil(((self.temphp[0] + self.temphp[1]) + self.temphp[2])) / 3) >= 10)
        {
            self.i = 0
            while(true)
            {
                if (self.i < 3)
                {
                    if (self.temphp[self.i] > 0)
                        global.hp[global.char[self.i]] = ceil((global.hp[global.char[self.i]] * 0.7))
                    self.i = (self.i + 1)
                    continue
                }
                break
            }
        }
        else
            scr_damage_all()
    }
}
