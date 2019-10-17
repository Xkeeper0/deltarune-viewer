if (self.active == 1)
{
    if (global.inv < 0)
    {
        instance_create(0, 0, obj_shake)
        snd_stop(snd_hurt1)
        snd_play(snd_hurt1)
        global.inv = (global.invc * 40)
        for (self.i = 0; self.i < 3; self.i += 1)
        {
            self.temphp[self.i] = global.hp[global.char[self.i]]
            if (self.temphp[self.i] < 0)
                self.temphp[self.i] = 0
        }
        if ((ceil(((self.temphp[0] + self.temphp[1]) + self.temphp[2])) / 3) >= 10)
        {
            for (self.i = 0; self.i < 3; self.i += 1)
            {
                if (self.temphp[self.i] > 0)
                    global.hp[global.char[self.i]] = ceil((global.hp[global.char[self.i]] * 0.7))
            }
        }
        else
            scr_damage_all()
    }
}
