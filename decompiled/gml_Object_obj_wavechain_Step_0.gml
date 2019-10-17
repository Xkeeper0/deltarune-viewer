if (self.chaincon == 0)
{
    if (self.chain_noise == 0)
    {
        self.chain_noise = 1
        self.chainsnd = snd_loop(snd_chain_extend)
    }
    self.sons += 1
    self.son[self.sons] = instance_create(self.x, self.y, obj_chainpiece)
    if (self.x <= obj_nonsolid_growtangle.x)
    {
        snd_stop(self.chainsnd)
        snd_play(snd_locker)
        snd_play(snd_screenshake)
        self.speed = 0
        self.chaincon = 1
        self.shakeamt = 12
        self.remx = obj_heart.x
        self.remy = obj_heart.y
        self.remx_box = obj_nonsolid_growtangle.x
        self.remy_box = obj_nonsolid_growtangle.y
        self.chaincon = 2.1
        with (obj_growtangle)
            self.megakeep = 1
    }
}
if (self.chaincon == 2.1)
{
    obj_heart.x = self.remx
    obj_heart.y = self.remy
    obj_nonsolid_growtangle.x = self.remx_box
    obj_nonsolid_growtangle.y = self.remy_box
    self.shakedir = random(360)
    self.xshake = lengthdir_x(self.shakeamt, self.shakedir)
    self.yshake = lengthdir_y(self.shakeamt, self.shakedir)
    obj_heart.x += self.xshake
    obj_heart.y += self.yshake
    obj_nonsolid_growtangle.x += self.xshake
    obj_nonsolid_growtangle.y += self.yshake
    self.shakeamt -= 2
    if (self.shakeamt < 0)
        self.chaincon = 3
}
if (self.chaincon == 3)
{
    if (self.chain_noise == 1)
    {
        self.chain_noise = 2
        self.wavenoise = snd_loop(snd_chain_wave)
    }
    if (self.type == 0)
    {
        self.siner += 1
        obj_chainking.y = (self.initkingy + (sin((self.siner / 12)) * 80))
        self.btimer += 1
        if (self.btimer >= 20)
        {
            self.regbul = instance_create((__view_get(0, 0) - 20), self.initboxy, obj_regularbullet)
            self.regbul.sprite_index = spr_spadebullet
            self.regbul.hspeed = 4
            scr_bullet_inherit(self.regbul)
            self.btimer = 0
        }
        if (self.chain_noise == 2)
            snd_pitch(self.wavenoise, (0.8 - (sin((self.siner / 12)) / 2)))
    }
    if (self.type == 1)
    {
        self.siner += 1
        obj_chainking.y = (self.initkingy + (sin((self.siner / 10)) * 80))
        self.btimer += 1
        if (self.btimer >= 18)
        {
            self.regbul = instance_create((__view_get(0, 0) - 20), self.initboxy, obj_regularbullet)
            self.regbul.sprite_index = spr_spadebullet
            self.regbul.hspeed = 4
            scr_bullet_inherit(self.regbul)
            self.btimer = 0
        }
        if (self.chain_noise == 2)
            snd_pitch(self.wavenoise, (0.9 - (sin((self.siner / 10)) / 2)))
    }
    if (self.type == 2)
    {
        self.siner += 1
        obj_chainking.y = (self.initkingy + (sin((self.siner / 9)) * 80))
        self.btimer += 1
        if (self.btimer >= 16)
        {
            self.regbul = instance_create((__view_get(0, 0) - 20), self.initboxy, obj_regularbullet)
            self.regbul.sprite_index = spr_spadebullet
            self.regbul.hspeed = 4
            scr_bullet_inherit(self.regbul)
            self.btimer = 0
        }
        if (self.chain_noise == 2)
            snd_pitch(self.wavenoise, (1 - (sin((self.siner / 9)) / 2)))
    }
    if (self.type == 3)
    {
        self.siner += 1
        obj_chainking.y = (self.initkingy + ((sin((self.siner / 7)) * 80) * self.wavefactor))
        self.btimer += 1
        if (self.btimer >= 14)
        {
            self.regbul = instance_create((__view_get(0, 0) - 20), self.initboxy, obj_regularbullet)
            self.regbul.sprite_index = spr_spadebullet
            self.regbul.hspeed = 4
            scr_bullet_inherit(self.regbul)
            self.btimer = 0
        }
        if (self.chain_noise == 2)
            snd_pitch(self.wavenoise, (1 - (sin((self.siner / 7)) / 2)))
    }
}
if instance_exists(obj_chainking)
{
    self.kingx[0] = (obj_chainking.x - self.initkingx)
    self.kingy[0] = (obj_chainking.y - self.initkingy)
    for (self.i = 40; self.i > 0; self.i -= 1)
    {
        self.kingx[self.i] = self.kingx[(self.i - 1)]
        self.kingy[self.i] = self.kingy[(self.i - 1)]
    }
    for (self.i = 0; self.i <= self.sons; self.i += 1)
    {
        self.son[self.i].x = (self.kingx[self.i] + self.son[self.i].xstart)
        self.son[self.i].y = (self.kingy[self.i] + self.son[self.i].ystart)
    }
    if (self.chaincon >= 3)
    {
        self.x = self.son[self.sons].x
        self.y = self.son[self.sons].y
        obj_nonsolid_growtangle.x = (self.kingx[self.sons] + self.initboxx)
        obj_nonsolid_growtangle.y = (self.kingy[self.sons] + self.initboxy)
    }
}
self.t += 1
if (self.t >= (self.tmax - 10))
{
    self.wavefactor *= 0.8
    with (obj_chainpiece)
        self.image_alpha -= 0.1
    with (obj_regularbullet)
    {
        self.active = 0
        self.image_alpha -= 0.1
    }
}
if (self.t >= self.tmax)
{
    if (self.chain_noise == 2)
    {
        self.chain_noise = 3
        snd_stop(self.wavenoise)
    }
    global.turntimer = 3
    with (obj_regularbullet)
        instance_destroy()
    with (obj_chainking)
        self.sprite_index = spr_chainking_receive
    with (obj_chainking)
        instance_destroy()
    instance_destroy()
}
