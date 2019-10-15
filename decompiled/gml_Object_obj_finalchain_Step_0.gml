if (self.chaincon == 0)
{
    if (self.chain_noise == 0)
    {
        self.chainsound = snd_loop(snd_chain_extend)
        self.chain_noise = 1
    }
    if (self.sons < 40)
    {
        self.sons = (self.sons + 1)
        self.son[self.sons] = instance_create(self.x, self.y, obj_chainpiece)
        self.son[self.sons].image_blend = 0x0000FF
    }
    if (self.x <= obj_nonsolid_growtangle.x)
    {
        if (self.chain_noise == 1)
        {
            self.chain_noise = 2
            snd_stop(self.chainsound)
            snd_play(snd_locker)
            snd_play(snd_screenshake)
        }
        self.box = obj_nonsolid_growtangle
        self.x = obj_nonsolid_growtangle.x
        self.y = obj_nonsolid_growtangle.y
        self.speed = 0
        self.chaincon = 1
        self.shakeamt = 16
        self.remx = obj_heart.x
        self.remy = obj_heart.y
        self.remx_box = obj_nonsolid_growtangle.x
        self.remy_box = obj_nonsolid_growtangle.y
        self.chaincon = 2.1
        with(obj_growtangle)
        {
            self.megakeep = 1
        }
    }
}
if (self.chaincon == 2.1)
{
    obj_nonsolid_growtangle.x = self.remx_box
    obj_nonsolid_growtangle.y = self.remy_box
    self.shakedir = random(360)
    self.xshake = lengthdir_x(self.shakeamt, self.shakedir)
    self.yshake = lengthdir_y(self.shakeamt, self.shakedir)
    obj_nonsolid_growtangle.x = (obj_nonsolid_growtangle.x + self.xshake)
    obj_nonsolid_growtangle.y = (obj_nonsolid_growtangle.y + self.yshake)
    self.shakeamt = (self.shakeamt - 2)
    if (self.shakeamt <= 0)
    {
        self.chaincon = 2.2
        obj_nonsolid_growtangle.x = self.remx_box
        obj_nonsolid_growtangle.y = self.remy_box
    }
}
if (self.chaincon == 2.2)
{
    self.xx = (__view_get(e__VW.XView, 0) + 320)
    self.yy = (__view_get(e__VW.YView, 0) + 160)
    self.yy_2 = __view_get(e__VW.YView, 0)
    self.chaincon = 2.3
    if (self.type >= 1)
    {
        self.spike = instance_create(self.x, self.y, obj_regularbullet_permanent)
        scr_bullet_inherit(self.spike)
        self.spike.image_speed = 0
        self.spike.active = 0
        with(obj_regularbullet)
        {
            self.basealpha = 0
        }
        self.spike.image_alpha = 0
        self.spike.mask_index = self.box.sprite_index
        self.spike.sprite_index = spr_battlebg_spikes
        self.spikemake = 1
        self.spike.image_xscale = (self.box.image_xscale * 0.96)
        self.spike.image_yscale = (self.box.image_yscale * 0.96)
    }
    if (self.type <= 1)
    {
        self.i = 0
        while(true)
        {
            if (self.i < 5)
            {
                self.j = 0
                while(true)
                {
                    if (self.j < 5)
                    {
                        self.bul[self.i][self.j] = instance_create(((self.xx - 150) + (self.i * 70)), ((self.yy_2 + 20) + (self.j * 70)), obj_regularbullet_permanent)
                        self.bul[self.i][self.j].sprite_index = spr_spadebullet
                        self.bul[self.i][self.j].basealpha = 0
                        self.bul[self.i][self.j].active = 0
                        self.bul[self.i][self.j].image_angle = 90
                        self.bul[self.i][self.j].image_xscale = 0.5
                        self.bul[self.i][self.j].image_yscale = 0.5
                        self.bul[self.i][self.j].neveractive = 1
                        scr_bullet_inherit(self.bul[self.i][self.j])
                        self.j = (self.j + 1)
                        continue
                    }
                    break
                }
                self.i = (self.i + 1)
                continue
            }
            break
        }
        self.bulletpoint = 1
    }
}
if (self.chaincon == 2.3)
{
    with(obj_regularbullet)
    {
        self.basealpha = (self.basealpha + 0.04)
    }
    if (self.spikemake == 1)
    {
        self.box.image_xscale = (self.box.image_xscale + 0.005)
        self.box.image_yscale = (self.box.image_yscale + 0.005)
        self.spike.image_xscale = (self.spike.image_xscale + 0.005)
        self.spike.image_yscale = (self.spike.image_yscale + 0.005)
        if (self.type == 1)
        {
            self.box.image_xscale = (self.box.image_xscale + 0.01)
            self.box.image_yscale = (self.box.image_yscale + 0.01)
            self.spike.image_xscale = (self.spike.image_xscale + 0.01)
            self.spike.image_yscale = (self.spike.image_yscale + 0.01)
        }
    }
    self.gotimer = (self.gotimer + 1)
    if (self.gotimer >= 30)
    {
        self.chaincon = 3
        self.gotimer = 0
        self.xx = (__view_get(e__VW.XView, 0) + 320)
        self.yy = (__view_get(e__VW.YView, 0) + 160)
        self.pointx = self.xx
        self.pointy = self.yy
        with(obj_regularbullet)
        {
            self.active = 1
        }
    }
}
if (self.chaincon == 3)
{
    if (self.movecon == 0)
        _temp_local_var_1 = (self.ended == 0)
    else
        _temp_local_var_1 = 0
    if _temp_local_var_1
    {
        if (self.mytimer > (self.maxtimer - 10))
            self.ended = 1
    }
    if (self.movecon == 0)
        _temp_local_var_2 = (self.ended == 0)
    else
        _temp_local_var_2 = 0
    if _temp_local_var_2
    {
        self.speed = 0
        self.pointdist = 0
        self.mind = 100
        self.maxd = 130
        if (self.type == 0)
        {
            self.maxd = 110
            self.movetime = 30
        }
        if (self.type >= 1)
            self.maxd = 140
        if (self.type == 3)
            _temp_local_var_3 = 1
        else
            _temp_local_var_3 = (self.type == 4)
        if _temp_local_var_3
            self.maxd = 120
        if (self.type == 5)
        {
            self.maxd = 130
            self.movetime = 30
        }
        while(true)
        {
            if (self.pointdist < self.mind)
                _temp_local_var_4 = 1
            else
                _temp_local_var_4 = (self.pointdist > self.maxd)
            if _temp_local_var_4
            {
                self.pointx = ((self.xx + random(140)) - random(140))
                self.pointy = ((self.yy + random(120)) - random(120))
                self.pointdist = point_distance(self.x, self.y, self.pointx, self.pointy)
                continue
            }
            break
        }
        self.target = instance_create(self.pointx, self.pointy, obj_chainpiece)
        self.target.sprite_index = spr_heartoutline
        self.target.depth = 30
        move_towards_point(self.pointx, self.pointy, (self.pointdist / self.movetime))
        self.movetimer = 0
        self.movecon = 1
        self.chainnoise = snd_loop(snd_chain_extend)
    }
    if (self.movecon == 1)
        _temp_local_var_5 = (self.ended == 0)
    else
        _temp_local_var_5 = 0
    if _temp_local_var_5
    {
        self.movetimer = (self.movetimer + 1)
        if (self.movetimer > self.movetime)
        {
            self.x = self.pointx
            self.y = self.pointy
            self.movecon = 2
            self.speed = 0
            self.movetimer = 0
        }
    }
    if (self.movecon == 2)
        _temp_local_var_6 = (self.ended == 0)
    else
        _temp_local_var_6 = 0
    if _temp_local_var_6
    {
        self.maxmove = 20
        if (self.type == 1)
            self.maxmove = 22
        if (self.type == 2)
            self.maxmove = 16
        if (self.type == 3)
            self.maxmove = 7
        if (self.type == 4)
            self.maxmove = 3
        if (self.type == 5)
            self.maxmove = 22
        self.movetimer = (self.movetimer + 1)
        if (self.movetimer >= self.maxmove)
        {
            with(self.target)
            {
                instance_destroy()
            }
            self.movecon = 0
            snd_stop(self.chainnoise)
        }
    }
}
if (self.chaincon >= 0)
{
    self.kingx[0] = self.x
    self.kingy[0] = self.y
    self.i = 40
    while(true)
    {
        if (self.i > 0)
        {
            self.kingx[self.i] = self.kingx[(self.i - 1)]
            self.kingy[self.i] = self.kingy[(self.i - 1)]
            self.i = (self.i - 1)
            continue
        }
        break
    }
    self.i = 0
    while(true)
    {
        if (self.i <= self.sons)
        {
            self.son[self.i].x = self.kingx[self.i]
            self.son[self.i].y = self.kingy[self.i]
            self.son[self.i].image_angle = self.direction
            self.i = (self.i + 1)
            continue
        }
        break
    }
    if (self.chaincon >= 3)
    {
        obj_nonsolid_growtangle.x = self.kingx[self.sons]
        obj_nonsolid_growtangle.y = self.kingy[self.sons]
    }
}
if (self.bulletpoint == 1)
{
    with(obj_regularbullet)
    {
        if (self.sprite_index == spr_spadebullet)
        {
            self.image_angle = point_direction(self.x, self.y, (obj_heart.x + 8), (obj_heart.y + 8))
            self.pointdist = point_distance(self.x, self.y, (obj_heart.x + 8), (obj_heart.y + 8))
            if (self.pointdist > 80)
                self.neveractive = (self.neveractive - 0.02)
            if (self.neveractive > 0)
                self.active = 0
            else
                self.active = 1
            self.alphafactor = 0.7
            self.activefactor = (1 - self.neveractive)
            if (self.activefactor > 1)
                self.activefactor = 1
            if (self.pointdist > 80)
            {
                self.alphafactor = (1.7 - ((self.pointdist * 1) / 80))
                if (self.alphafactor < 0)
                    self.alphafactor = 0
            }
            self.image_alpha = (((0.3 + self.alphafactor) * self.basealpha) * self.activefactor)
            if (self.image_xscale < 0.68)
                _temp_local_var_7 = (obj_finalchain.ended == 0)
            else
                _temp_local_var_7 = 0
            if _temp_local_var_7
            {
                self.image_xscale = (self.image_xscale + 0.0005)
                self.image_yscale = (self.image_yscale + 0.0005)
            }
            else
            {
                self.active = 0
                self.basealpha = (self.basealpha - 0.1)
                obj_finalchain.ended = 1
            }
        }
    }
}
if (self.spikemake == 1)
{
    self.spike.image_alpha = (self.spike.image_alpha + 0.04)
    self.spike.x = self.box.x
    self.spike.y = self.box.y
    if (self.ended == 1)
    {
        if (self.spike.image_alpha >= 1)
            self.spike.image_alpha = 1
        self.spike.image_alpha = (self.spike.image_alpha - 0.14)
    }
}
if (self.ended == 1)
{
    self.endtimer = (self.endtimer + 1)
    if (self.endtimer >= 10)
    {
        snd_stop(snd_chain_extend)
        with(obj_chainpiece)
        {
            instance_destroy()
        }
        with(obj_regularbullet)
        {
            instance_destroy()
        }
        with(obj_chainking)
        {
            instance_destroy()
        }
        global.turntimer = 3
        instance_destroy()
    }
}
if (self.spikemake == 1)
{
    if instance_exists(self.spike)
    {
        if (self.spike.grazed == 1)
        {
            if (self.timerbonus == 0)
            {
                self.mytimer = (self.mytimer + 2)
                self.timerbonus = 1
            }
            self.grazetimer = (self.grazetimer + 1)
            if (self.grazetimer >= 15)
            {
                self.timerbonus = 0
                self.grazetimer = 0
                self.spike.grazed = 0
            }
        }
    }
}
self.mytimer = (self.mytimer + 1)
self.image_angle = self.direction
