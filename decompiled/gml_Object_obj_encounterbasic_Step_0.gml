if (self.fightcon == 1)
{
    if (global.flag[9] == 1)
        snd_pause(global.currentsong[1])
    self.counttimer = (self.counttimer + 1)
    if (self.counttimer < 10)
    {
        self.i = 0
        while(true)
        {
            if (self.i < (self.count + 1))
            {
                with(self.c[self.i])
                {
                    self.af = scr_afterimage()
                    self.af.image_alpha = 0.5
                }
                self.i = (self.i + 1)
                continue
            }
            break
        }
    }
    if (self.counttimer >= 10)
    {
        self.wp = snd_play(snd_impact)
        snd_volume(self.wp, 0.7, 0)
        self.wp2 = snd_play(snd_weaponpull_fast)
        snd_volume(self.wp2, 0.8, 0)
        self.i = 0
        while(true)
        {
            if (self.i < (self.count + 1))
            {
                self.c[self.i].speed = 0
                self.c[self.i].image_index = 0
                if (global.char[self.i] == 1)
                    self.c[self.i].sprite_index = spr_krisb_attack
                if (global.char[self.i] == 2)
                {
                    self.c[self.i].sprite_index = spr_susieb_attack
                    if (global.charweapon[global.char[self.i]] == 0)
                        self.c[self.i].sprite_index = spr_susieb_attack_unarmed
                }
                if (global.char[self.i] == 3)
                    self.c[self.i].sprite_index = spr_ralseib_battleintro
                self.c[self.i].image_speed = 0.5
                self.i = (self.i + 1)
                continue
            }
            break
        }
        self.fightcon = 2
        self.counttimer = 0
    }
}
if (self.fightcon == 2)
{
    self.counttimer = (self.counttimer + 1)
    if (self.counttimer >= 15)
    {
        self.counttimer = 0
        self.fightcon = 3
        self.i = 0
        while(true)
        {
            if (self.i < (self.count + 1))
            {
                with(self.c[self.i])
                {
                    instance_destroy()
                }
                self.i = (self.i + 1)
                continue
            }
            break
        }
        instance_create(0, 0, obj_battlecontroller)
        instance_destroy()
    }
}
