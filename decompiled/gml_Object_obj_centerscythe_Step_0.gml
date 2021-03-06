if (self.chasecon == 1)
{
    self.image_alpha += 0.04
    if (self.image_alpha >= 1)
    {
        self.image_alpha = 1
        self.chasecon = 2
        self.active = 1
    }
}
if (self.chasecon == 2)
{
    if (self.un == 0)
    {
        if (self.rotspeed <= 10)
            self.rotspeed += 1
    }
    if (self.un == 1)
    {
        if (self.rotspeed >= -10)
            self.rotspeed -= 1
    }
    self.sine += self.sinespeed
    self.dir += self.dirspeed
    if (self.insanity == 1)
    {
        if ((self.dirspeed > 0) && (self.dirspeed < 3))
            self.dirspeed += 0.01
        if ((self.dirspeed < 0) && (self.dirspeed > -3))
            self.dirspeed -= 0.01
    }
    self.length = (cos((self.sine / 18)) * self.radius)
    self.x = (self.centerx - lengthdir_x(self.length, self.dir))
    self.y = (self.centery - lengthdir_y(self.length, self.dir))
    if (self.king == 1)
    {
        self.noisebuffer -= 1
        if ((abs(self.length) <= 8) && (self.noisebuffer < 0))
        {
            snd_play(snd_swing)
            self.noisebuffer = 10
        }
    }
}
if (self.king == 1)
{
    if (self.type == 1)
    {
        self.scythetimer += 1
        if (self.scythetimer == 60)
        {
            snd_play(snd_spearappear)
            self.sbul = instance_create((self.centerx + (self.radius * self.scythesidex)), (self.centery + (60 * self.scythesidex)), obj_collidebullet)
            self.sbul.image_xscale = 2
            self.sbul.image_yscale = 2
            self.sbul.image_alpha = 0
            self.sbul.sprite_index = spr_joker_scythebody
            self.sbul.mask_index = spr_joker_scythebody_mask
            self.sbul.image_blend = 0x000000FF
            self.sbul.active = 1
            scr_bullet_inherit(self.sbul)
        }
        if ((self.scythetimer >= 60) && (self.scythetimer < 70))
        {
            self.sbul.image_angle += (10 * self.scythesidex)
            self.sbul.image_alpha += 0.1
        }
        if ((self.scythetimer >= 85) && (self.scythetimer < 90))
        {
            if instance_exists(self.sbul)
                self.sbul.hspeed -= (3 * self.scythesidex)
        }
        if ((self.scythetimer >= 100) && (self.scythetimer < 105))
        {
            with (self.sbul)
                self.image_alpha -= 0.2
        }
        if (self.scythetimer >= 105)
        {
            with (self.sbul)
                instance_destroy()
            if (self.scythesidex == -1)
                self.scythesidex = 1
            else
                self.scythesidex = -1
            self.scythetimer = 59
        }
    }
}
self.image_angle += self.rotspeed
if (self.grazed == 1)
{
    self.grazetimer += 1
    if (self.grazetimer >= 30)
    {
        self.grazed = 0
        self.grazetimer = 0
    }
}
