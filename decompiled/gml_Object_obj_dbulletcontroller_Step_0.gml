self.btimer = (self.btimer + 1)
if (self.type == 0)
{
    if (self.btimer >= (self.timermax * self.ratio))
    {
        self.btimer = 0
        self.dir = (30 + random(120))
        self.radius = (140 + random(80))
        self.xx = lengthdir_x(self.radius, self.dir)
        self.yy = lengthdir_y(self.radius, self.dir)
        self.bm = instance_create(((obj_heart.x + 8) + self.xx), ((obj_heart.y + 8) + self.yy), obj_dbullet_maker)
        if (self.bm.y < (__view_get(e__VW.YView, 0) + 40))
            self.bm.y = (__view_get(e__VW.YView, 0) + 40)
        self.bm.damage = self.damage
        self.bm.target = self.target
    }
}
if (self.type == 1)
{
    if (self.btimer >= (9 * self.ratio))
    {
        self.btimer = 0
        self.radius = (140 + random(40))
        self.yy = (self.radius * self.side)
        self.xx = (-100 + random(200))
        self.num = choose(0, 1, 2, 3)
        if (self.num == 3)
            self.xx = (-10 + random(20))
        self.d = instance_create(((obj_heart.x + 8) + self.xx), ((obj_heart.y + 8) + self.yy), obj_dbullet_vert)
        self.d.damage = self.damage
        self.d.target = self.target
    }
}
if (self.type == 2)
{
    if (self.btimer >= (20 * self.ratio))
    {
        self.xx = (__view_get(e__VW.XView, 0) - 20)
        if (self.side == 1)
            self.xx = (__view_get(e__VW.XView, 0) + 660)
        self.yy = (self.miny + random((self.maxy - self.miny)))
        self.bul = instance_create(self.xx, self.yy, obj_clubsbullet)
        self.bul.speed = 12
        self.bul.damage = self.damage
        self.bul.target = self.target
        if (self.side == 1)
        {
            self.bul.direction = 180
            self.bul.image_angle = 180
        }
        self.btimer = 0
    }
}
if (self.type == 3)
{
    if (self.btimer >= (20 * self.ratio))
    {
        self.btimer = 0
        if (self.side == 1)
            self.dir = choose(225, 315)
        if (self.side == -1)
            self.dir = choose(45, 135)
        self.radius = 400
        self.xx = lengthdir_x(self.radius, self.dir)
        self.yy = lengthdir_y(self.radius, self.dir)
        self.d = instance_create(((obj_heart.x + 8) + self.xx), ((obj_heart.y + 8) + self.yy), obj_clubsbullet_dark)
        self.d.direction = (self.dir + 180)
        self.d.speed = 20
        self.d.friction = 1
        self.d.damage = self.damage
        self.d.target = self.target
        with(self.d)
        {
            self.image_angle = self.direction
        }
        if (self.side == 1)
            self.side = -1
        else
            self.side = 1
    }
}
if (self.type == 4)
{
    if (self.btimer >= (30 * self.ratio))
    {
        self.btimer = 0
        if (self.side == -1)
            self.dir = 225
        if (self.side == 1)
            self.dir = 315
        self.radius = 400
        self.xx = lengthdir_x(self.radius, self.dir)
        self.yy = lengthdir_y(self.radius, self.dir)
        self.d = instance_create(((obj_heart.x + 8) + self.xx), ((obj_heart.y + 8) + self.yy), obj_clubsbullet_dark)
        self.d.damage = self.damage
        self.d.target = self.target
        self.d.direction = (self.dir + 180)
        self.d.speed = 20
        self.d.friction = 1
        with(self.d)
        {
            self.image_angle = self.direction
        }
        if (self.side == 1)
            self.side = -1
        else
            self.side = 1
    }
}
if (self.type == 6)
{
    self.xx = __view_get(e__VW.XView, 0)
    self.yy = __view_get(e__VW.YView, 0)
    if (self.made == 0)
    {
        self.d = instance_create((300 + self.xx), (-20 + self.yy), obj_dicebul)
        self.e = instance_create((360 + self.xx), (-60 + self.yy), obj_dicebul)
        self.d.target = self.target
        self.d.damage = self.damage
        self.e.target = self.target
        self.e.damage = self.damage
        self.made = 1
    }
}
if (self.type == 7)
{
    self.xx = __view_get(e__VW.XView, 0)
    self.yy = __view_get(e__VW.YView, 0)
    if (self.made < 3)
        _temp_local_var_1 = (self.btimer >= 15)
    else
        _temp_local_var_1 = 0
    if _temp_local_var_1
    {
        self.btimer = 0
        self.mine = instance_create((300 + self.xx), (-20 + self.yy), obj_dicebul)
        self.mine.damage = self.damage
        self.mine.target = self.target
        with(obj_dicebul)
        {
            self.gravity = (0.15 + self.gravbonus)
            self.image_xscale = 1
            self.image_yscale = 1
        }
        self.made = (self.made + 1)
    }
}
if (self.type == 8)
{
    self.xx = __view_get(e__VW.XView, 0)
    self.yy = __view_get(e__VW.YView, 0)
    if (self.made < 4)
        _temp_local_var_2 = (self.btimer >= 15)
    else
        _temp_local_var_2 = 0
    if _temp_local_var_2
    {
        self.btimer = 0
        self.mine = instance_create((300 + self.xx), (self.yy - 40), obj_dicebul)
        self.mine.damage = self.damage
        self.mine.target = self.target
        with(self.mine)
        {
            self.hspeed = (1.2 + random(1.2))
            self.hspeed = (self.hspeed * choose(-1, 1))
            self.gravbonus = random(0.1)
            self.gravity = (0.15 + self.gravbonus)
            self.image_xscale = 0.7
            self.image_yscale = 0.7
        }
        self.made = (self.made + 1)
    }
}
if (self.type == 10)
{
    self.xx = __view_get(e__VW.XView, 0)
    self.yy = __view_get(e__VW.YView, 0)
    if (self.btimer >= 15)
    {
        self.btimer = 0
        self.dicecomet = instance_create(choose((self.xx + 680), (self.xx - 100)), (0 - random(100)), self.obj_dicebul_comet)
        self.dicecomet.damage = self.damage
        self.dicecomet.target = self.target
        with(self.dicecomet)
        {
            self.image_xscale = 2
            self.image_yscale = 2
            if (self.x > (__view_get(e__VW.XView, 0) + 320))
                self.hspeed = (-6 - random(1))
            else
                self.hspeed = (6 + random(1))
            self.vspeed = (2 + random(2))
        }
    }
}
if (self.type == 11)
{
    self.xx = __view_get(e__VW.XView, 0)
    self.yy = __view_get(e__VW.YView, 0)
    if (self.made < 4)
        _temp_local_var_3 = (self.btimer >= 15)
    else
        _temp_local_var_3 = 0
    if _temp_local_var_3
    {
        self.btimer = 0
        self.bb = instance_create((300 + self.xx), (-20 + self.yy), obj_dicebul)
        self.bb.damage = self.damage
        self.bb.target = self.target
        with(obj_dicebul)
        {
            self.gravity = (0.15 + self.gravbonus)
            self.image_xscale = 1
            self.image_yscale = 1
        }
        if (self.made == 3)
        {
            with(self.bb)
            {
                self.green = 1
                self.image_blend = 0x00FF00
            }
        }
        self.made = (self.made + 1)
    }
}
if (self.type == 12)
{
    self.xx = __view_get(e__VW.XView, 0)
    self.yy = __view_get(e__VW.YView, 0)
    if (self.made == 0)
    {
        self.db = instance_create((320 + self.xx), (-20 + self.yy), obj_dicebul)
        self.db.image_xscale = 1
        self.db.image_yscale = 1
        self.db.damage = self.damage
        self.db.target = self.target
        self.made = 1
    }
}
if (self.type == 13)
{
    self.xx = __view_get(e__VW.XView, 0)
    self.yy = __view_get(e__VW.YView, 0)
    if (self.made < 2)
        _temp_local_var_4 = (self.btimer >= 20)
    else
        _temp_local_var_4 = 0
    if _temp_local_var_4
    {
        self.db[self.made] = instance_create((320 + self.xx), (-20 + self.yy), obj_dicebul)
        self.db[self.made].image_xscale = 1
        self.db[self.made].image_yscale = 1
        self.db[self.made].damage = self.damage
        self.db[self.made].target = self.target
        if (self.made == 1)
        {
            with(self.db[1])
            {
                self.green = 1
                self.image_blend = 0x00FF00
            }
            self.db[1].hspeed = (variable)(- self.db[0].hspeed)
        }
        self.made = (self.made + 1)
    }
}
if (self.type == 14)
{
    if (self.btimer >= 10)
    {
        self.xx = (__view_get(e__VW.XView, 0) - 20)
        if (self.side == 1)
            self.xx = (__view_get(e__VW.XView, 0) + 660)
        self.yy = (self.miny + random((self.maxy - self.miny)))
        self.bul = instance_create(self.xx, self.yy, obj_regularbullet)
        self.bul.sprite_index = spr_smallbullet
        self.bul.hspeed = -8
        self.bul.damage = self.damage
        self.bul.target = self.target
        if (self.side == 1)
        {
            self.bul.direction = 180
            self.bul.image_angle = 180
        }
        self.btimer = 0
    }
}
if (self.type == 20)
    _temp_local_var_5 = 1
else
    _temp_local_var_5 = (self.type == 22)
if _temp_local_var_5
{
    if instance_exists(obj_lancerboss3)
    {
        if (self.made == 0)
        {
            snd_play(snd_lancerwhistle)
            self.whistletimer = 0
            self.made = 1
            with(obj_lancerboss3)
            {
                self.idlesprite = 429
            }
        }
        if (self.made == 1)
        {
            self.whistletimer = (self.whistletimer + 1)
            if (self.whistletimer >= 30)
            {
                with(obj_lancerboss3)
                {
                    self.idlesprite = 426
                }
                self.made = 2
            }
        }
    }
    if (self.type == 20)
        self.bmax = 8
    if (self.type == 22)
        self.bmax = 6
    if (self.btimer >= self.bmax)
    {
        self.radius = ((-80 + random(160)) + 8)
        self.fallspade = instance_create((obj_heart.x + self.radius), (__view_get(e__VW.YView, 0) - 20), obj_regularbullet)
        self.fallspade.damage = self.damage
        self.fallspade.target = self.target
        with(self.fallspade)
        {
            self.sprite_index = spr_spadebullet
            self.image_angle = 270
            self.gravity = 0.3
            self.speed = 0
            self.vspeed = 3
            self.hspeed = (-0.6 + random(1.2))
        }
        if (self.side == 1)
            self.side = -1
        else
            self.side = 1
        self.btimer = 0
    }
}
if (self.type == 21)
    _temp_local_var_6 = 1
else
{
    if (self.type == 23)
        _temp_local_var_6 = 1
    else
        _temp_local_var_6 = (self.type == 25)
}
if _temp_local_var_6
{
    if (self.type == 21)
        self.bmax = 9
    if (self.type == 23)
        self.bmax = 7
    if (self.type == 25)
        self.bmax = 4
    with(obj_regularbullet)
    {
        self.image_alpha = (self.image_alpha + 0.2)
    }
    if (self.btimer >= self.bmax)
    {
        if (self.side == 0)
            self.radius = 80
        else
            self.radius = 560
        self.sidespade[self.side] = instance_create((__view_get(e__VW.XView, 0) + self.radius), ((obj_growtangle.y - (obj_growtangle.sprite_height / 2)) + random(obj_growtangle.sprite_height)), obj_regularbullet)
        if (self.side == 0)
            self.sidespade[self.side].direction = 0
        if (self.side == 1)
            self.sidespade[self.side].direction = 180
        self.sidespade[self.side].image_alpha = 0
        self.sidespade[self.side].damage = self.damage
        self.sidespade[self.side].target = self.target
        with(self.sidespade[self.side])
        {
            self.sprite_index = spr_spadebullet
            self.speed = 5
            self.friction = -0.1
            self.image_angle = self.direction
        }
        if (self.side == 1)
            self.side = 0
        else
            self.side = 1
        self.btimer = 0
    }
}
if (self.type == 24)
{
    self.bmax = (self.difficulty + 5)
    with(obj_regularbullet)
    {
        if instance_exists(obj_heart)
        {
            self.xdiff = (self.x - (obj_heart.x + 8))
            if (self.y >= (obj_heart.y - 240))
                _temp_local_var_7 = (abs(self.xdiff) <= 30)
            else
                _temp_local_var_7 = 0
            if _temp_local_var_7
            {
                if (self.xdiff >= 0)
                    _temp_local_var_8 = (self.hspeed < 5)
                else
                    _temp_local_var_8 = 0
                if _temp_local_var_8
                    self.hspeed = (self.hspeed + 0.4)
                if (self.xdiff < 0)
                    _temp_local_var_9 = (self.hspeed > -5)
                else
                    _temp_local_var_9 = 0
                if _temp_local_var_9
                    self.hspeed = (self.hspeed - 0.4)
            }
            if (self.y >= (obj_heart.y - 100))
            {
                if (abs(self.xdiff) <= 60)
                {
                    if (self.xdiff >= 0)
                    {
                        if (self.hspeed < 2)
                            self.hspeed = (self.hspeed + 0.25)
                        if (self.xdiff < 10)
                            self.x = (self.x + 3)
                        if (self.xdiff < 20)
                            self.x = (self.x + 3)
                        if (self.xdiff < 30)
                            self.x = (self.x + 3)
                        if (self.xdiff < 40)
                            self.x = (self.x + 2)
                        if (self.xdiff < 60)
                            self.x = (self.x + 1)
                    }
                    else
                    {
                        if (self.hspeed > -2)
                            self.hspeed = (self.hspeed - 0.25)
                        if (self.xdiff > -10)
                            self.x = (self.x - 3)
                        if (self.xdiff > -20)
                            self.x = (self.x - 3)
                        if (self.xdiff > -30)
                            self.x = (self.x - 3)
                        if (self.xdiff > -40)
                            self.x = (self.x - 2)
                        if (self.xdiff > -60)
                            self.x = (self.x - 1)
                    }
                }
            }
        }
    }
    if (self.btimer >= self.bmax)
    {
        self.radius = ((-80 + random(160)) + 8)
        self.fallspade = instance_create((obj_heart.x + self.radius), -20, obj_regularbullet)
        self.fallspade.damage = self.damage
        self.fallspade.target = self.target
        with(self.fallspade)
        {
            self.sprite_index = spr_spadebullet
            self.image_angle = 270
            self.gravity = 0.3
            self.speed = 0
            self.vspeed = 3
            self.hspeed = (-0.6 + random(1.2))
        }
        if (self.side == 1)
            self.side = -1
        else
            self.side = 1
        self.btimer = 0
    }
}
if (self.type == 26)
{
    with(obj_regularbullet)
    {
        if (self.sprite_index == spr_blockbullet)
            self.image_alpha = (self.image_alpha + 0.1)
    }
    self.timer = 35
    if (scr_monsterpop() == 2)
        self.timer = 52.5
    if (scr_monsterpop() == 3)
        self.timer = 77
    if (self.btimer >= self.timer)
    {
        self.x_c = (__view_get(e__VW.XView, 0) + 300)
        self.y_c = (__view_get(e__VW.YView, 0) + 140)
        self.x_o = 200
        self.y_o = -60
        self.y_o_o = (-80 + random(160))
        self.y_o = (self.y_o + self.y_o_o)
        self.v_s = ((variable)(- self.y_o_o) / 160)
        self.h_s = -2
        self.i = 0
        while(true)
        {
            if (self.i < 2)
            {
                self.upallow = choose(0, 1, 2)
                self.rightallow = choose(0, 1, 2)
                self.j = 0
                while(true)
                {
                    if (self.j < 2)
                    {
                        self.bul[self.i][self.j] = instance_create(((self.x_c + self.x_o) + (self.i * 80)), ((self.y_c + self.y_o) + (self.j * 80)), obj_regularbullet)
                        scr_bullet_inherit(self.bul[self.i][self.j])
                        if (self.j == self.upallow)
                            self.bul[self.i][self.j].y = (self.bul[self.i][self.j].y + choose(0, 40))
                        if (self.i == 1)
                            _temp_local_var_10 = (self.j == 1)
                        else
                            _temp_local_var_10 = 0
                        if _temp_local_var_10
                        {
                            self.bul[self.i][self.j].x = (self.bul[self.i][self.j].x + choose(0, -40))
                            self.bul[self.i][self.j].y = (((self.y_c + self.y_o) + choose(0, 40)) + (self.j * 80))
                        }
                        self.bul[self.i][self.j].hspeed = self.h_s
                        self.bul[self.i][self.j].vspeed = self.v_s
                        self.bul[self.i][self.j].friction = -0.07
                        if (scr_monsterpop() >= 2)
                            self.bul[self.i][self.j].friction = -0.1
                        self.bul[self.i][self.j].sprite_index = spr_blockbullet
                        self.bul[self.i][self.j].image_alpha = 0
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
        self.btimer = 0
    }
}
if (self.type == 27)
{
    self.timer = 15
    if (scr_monsterpop() == 2)
        self.timer = 25.5
    if (scr_monsterpop() == 3)
        self.timer = 34.5
    self.lx = ((obj_battlesolid.x - (obj_battlesolid.sprite_width / 2)) + 8)
    self.ly = ((obj_battlesolid.y + (obj_battlesolid.sprite_height / 2)) - 15)
    if (self.btimer >= self.timer)
    {
        self.prevmade = self.made
        self.made = choose(0, 1, 2, 3)
        if (self.made == self.prevmade)
            self.made = choose(0, 1, 2, 3)
        self.btimer = 0
        self.block = instance_create(100, 100, obj_blockbullet_fall)
        self.block.xpos = self.made
        scr_bullet_inherit(self.block)
        self.testblock = collision_point(((self.lx + (self.made * self.block.sprite_width)) + 8), ((self.ly - (self.block.sprite_height * 3)) - 10), obj_blockbullet_fall, 0, 1)
        if (self.testblock > obj_choicer_neo)
        {
            if (self.testblock.halt == 1)
            {
                with(self.block)
                {
                    instance_destroy()
                }
            }
        }
    }
    self.legoa = collision_point((self.lx + 15), self.ly, obj_blockbullet_fall, 0, 1)
    self.legob = collision_point(((self.lx + 15) + 34), self.ly, obj_blockbullet_fall, 0, 1)
    self.legoc = collision_point(((self.lx + 15) + 68), self.ly, obj_blockbullet_fall, 0, 1)
    self.legod = collision_point(((self.lx + 15) + 102), self.ly, obj_blockbullet_fall, 0, 1)
    if (self.legoa > obj_choicer_neo)
    {
        if (self.legob > obj_choicer_neo)
        {
            if (self.legoc > obj_choicer_neo)
                _temp_local_var_12 = (self.legod > obj_choicer_neo)
            else
                _temp_local_var_12 = 0
        }
        else
            _temp_local_var_12 = 0
    }
    else
        _temp_local_var_12 = 0
    if _temp_local_var_12
    {
        with(self.legoa)
        {
            self.con = 3
        }
        with(self.legob)
        {
            self.con = 3
        }
        with(self.legoc)
        {
            self.con = 3
        }
        with(self.legod)
        {
            self.con = 3
        }
    }
}
if (self.type == 30)
{
    self.bmax = 34
    if (scr_monsterpop() == 2)
        self.bmax = 46
    if (scr_monsterpop() == 3)
        self.bmax = 60
    if (self.btimer >= self.bmax)
    {
        self.rab = instance_create((obj_battlesolid.x + obj_battlesolid.sprite_width), obj_battlesolid.y, obj_rabbitbullet)
        scr_bullet_inherit(self.rab)
        self.btimer = 0
    }
}
if (self.type == 32)
{
    self.skiprab = 0
    if instance_exists(obj_carrotthrower)
    {
        self.skiprab = 1
        self.type = 30
    }
    if (self.made == 0)
        _temp_local_var_13 = (self.skiprab == 0)
    else
        _temp_local_var_13 = 0
    if _temp_local_var_13
    {
        self.made = 1
        self.rab = instance_create(obj_battlesolid.x, obj_battlesolid.y, obj_carrotthrower)
        scr_bullet_inherit(self.rab)
        instance_destroy()
    }
}
if (self.type == 33)
{
    if (self.btimer >= (26 * self.ratio))
    {
        self.hs = instance_create(obj_battlesolid.x, obj_battlesolid.y, obj_heartshaper)
        self.hs.maxradius = 50
        self.hs.type = 1
        self.btimer = 0
        self.hs.thisx = ((obj_battlesolid.x - 50) + random(100))
        self.hs.thisy = ((obj_battlesolid.y - 50) + random(100))
        scr_bullet_inherit(self.hs)
    }
}
if (self.type == 34)
{
    if (self.btimer >= 28)
    {
        self.typechoice = choose(0, 1, 2, 3)
        self.xx = 0
        self.yy = 0
        if (self.typechoice == 0)
            _temp_local_var_14 = 1
        else
            _temp_local_var_14 = (self.typechoice == 3)
        if _temp_local_var_14
        {
            self.xx = (((__view_get(e__VW.XView, 0) + 320) + random(300)) - random(300))
            self.yy = -60
        }
        if (self.typechoice == 1)
        {
            self.xx = (__view_get(e__VW.XView, 0) - 60)
            self.yy = random(320)
        }
        if (self.typechoice == 2)
        {
            self.xx = (__view_get(e__VW.XView, 0) + 700)
            self.yy = random(320)
        }
        self.chain = instance_create(self.xx, self.yy, obj_skychain)
        scr_bullet_inherit(obj_skychain)
        self.btimer = 0
    }
}
if (self.type == 35)
{
    if (self.btimer >= 22)
    {
        self.typechoice = choose(0, 1, 2, 3)
        self.xx = 0
        self.yy = 0
        if (self.typechoice == 0)
            _temp_local_var_15 = 1
        else
            _temp_local_var_15 = (self.typechoice == 3)
        if _temp_local_var_15
        {
            self.xx = (((__view_get(e__VW.XView, 0) + 320) + random(300)) - random(300))
            self.yy = -60
        }
        if (self.typechoice == 1)
        {
            self.xx = (__view_get(e__VW.XView, 0) - 60)
            self.yy = random(320)
        }
        if (self.typechoice == 2)
        {
            self.xx = (__view_get(e__VW.XView, 0) + 700)
            self.yy = random(320)
        }
        self.chain = instance_create(self.xx, self.yy, obj_skychain)
        scr_bullet_inherit(self.chain)
        self.btimer = 0
    }
}
if (self.type == 36)
{
    if (self.btimer >= 16)
    {
        self.typechoice = choose(0, 1, 2, 3)
        self.xx = 0
        self.yy = 0
        if (self.typechoice == 0)
            _temp_local_var_16 = 1
        else
            _temp_local_var_16 = (self.typechoice == 3)
        if _temp_local_var_16
        {
            self.xx = (((__view_get(e__VW.XView, 0) + 320) + random(300)) - random(300))
            self.yy = -60
        }
        if (self.typechoice == 1)
        {
            self.xx = (__view_get(e__VW.XView, 0) - 60)
            self.yy = random(320)
        }
        if (self.typechoice == 2)
        {
            self.xx = (__view_get(e__VW.XView, 0) + 700)
            self.yy = random(320)
        }
        self.chain = instance_create(self.xx, self.yy, obj_skychain)
        scr_bullet_inherit(self.chain)
        self.btimer = 0
    }
}
if (self.type >= 80)
    _temp_local_var_17 = (self.type <= 84)
else
    _temp_local_var_17 = 0
if _temp_local_var_17
{
    self.maxtimer = 40
    if (self.type == 81)
        self.maxtimer = 30
    if (self.type == 82)
        self.maxtimer = 26
    if (self.type == 83)
        self.maxtimer = 19
    if (self.type == 84)
        self.maxtimer = 14
    if (self.btimer >= self.maxtimer)
    {
        self.btimer = 0
        self.lx = obj_battlesolid.x
        self.ly = obj_battlesolid.y
        self.side = choose(0, 1)
        if (self.type == 81)
            _temp_local_var_18 = 1
        else
            _temp_local_var_18 = (self.type == 84)
        if _temp_local_var_18
        {
            self.side = self.made
            if (self.made == 0)
                self.made = 1
            else
                self.made = 0
        }
        if (self.side == 0)
        {
            self.puzz1 = instance_create((obj_heart.x + 8), (self.ly - 150), obj_jigsawbullet)
            self.puzz1.side = 3
            self.puzz2 = instance_create((obj_heart.x + 8), (self.ly + 150), obj_jigsawbullet)
            self.puzz2.side = 1
            if (self.type == 82)
                self.puzz1.timer = 10
            if (self.type == 82)
                self.puzz2.timer = 10
            if (self.type == 83)
                _temp_local_var_19 = 1
            else
                _temp_local_var_19 = (self.type == 84)
            if _temp_local_var_19
                self.puzz1.timer = 15
            if (self.type == 83)
                _temp_local_var_20 = 1
            else
                _temp_local_var_20 = (self.type == 84)
            if _temp_local_var_20
                self.puzz2.timer = 15
            scr_bullet_inherit(self.puzz1)
            scr_bullet_inherit(self.puzz2)
        }
        if (self.side == 1)
        {
            self.puzz1 = instance_create((self.lx + 150), (obj_heart.y + 8), obj_jigsawbullet)
            self.puzz1.side = 2
            self.puzz2 = instance_create((self.lx - 150), (obj_heart.y + 8), obj_jigsawbullet)
            self.puzz2.side = 0
            if (self.type == 82)
                self.puzz1.timer = 10
            if (self.type == 82)
                self.puzz2.timer = 10
            if (self.type == 83)
                self.puzz1.timer = 15
            if (self.type == 83)
                self.puzz2.timer = 15
            scr_bullet_inherit(self.puzz1)
            scr_bullet_inherit(self.puzz2)
        }
        if (self.type == 83)
        {
            with(obj_jigsawbullet)
            {
                self.joker = 1
            }
        }
    }
}
if (self.type == 85)
{
    if (self.made == 0)
    {
        self.cheer = 0
        self.cheertimer = 0
        self.remhp[0] = global.hp[global.char[0]]
        self.remhp[1] = global.hp[global.char[1]]
        with(obj_susieenemy)
        {
            self.visible = 0
        }
        with(obj_lancerboss3)
        {
            self.visible = 0
        }
        self.fakelan = instance_create((__view_get(e__VW.XView, 0) + 580), (obj_battlesolid.y + 160), obj_bulletparent)
        with(self.fakelan)
        {
            self.depth = (self.depth + 1)
            self.image_xscale = 2
            self.image_yscale = 2
            self.visible = 1
            self.sprite_index = spr_lancerbike
            self.active = 0
            self.image_speed = 0.2
        }
        self.fakesus = instance_create((__view_get(e__VW.XView, 0) + 530), (obj_battlesolid.y - 40), obj_bulletparent)
        with(self.fakesus)
        {
            self.image_xscale = 2
            self.image_yscale = 2
            self.visible = 1
            self.sprite_index = spr_susie_enemy_attack
            self.active = 0
            self.image_speed = 0
        }
        self.made = 1
    }
    if (self.made == 1)
    {
        if instance_exists(self.fakelan)
        {
            if (self.cheer == 0)
            {
                if (global.inv > 10)
                {
                    self.cheer = 1
                    snd_play(snd_lancerwhistle)
                    with(self.fakelan)
                    {
                        self.sprite_index = spr_lancerbike_l
                    }
                }
            }
            if (self.cheer == 1)
            {
                self.cheertimer = (self.cheertimer + 1)
                if (self.cheertimer >= 30)
                {
                    self.cheertimer = 0
                    with(self.fakelan)
                    {
                        self.sprite_index = spr_lancerbike
                    }
                    self.cheer = 0
                }
            }
        }
        if instance_exists(self.fakesus)
        {
            with(self.fakesus)
            {
                if (self.image_index < 5)
                    self.image_index = (self.image_index + 0.334)
            }
        }
    }
    if (self.made == 1)
        _temp_local_var_21 = (global.turntimer <= 10)
    else
        _temp_local_var_21 = 0
    if _temp_local_var_21
    {
        with(self.fakesus)
        {
            self.visible = 0
        }
        with(self.fakelan)
        {
            self.visible = 0
        }
        with(obj_susieenemy)
        {
            self.visible = 1
        }
        with(obj_lancerboss3)
        {
            self.visible = 1
        }
    }
    if (self.btimer >= 27)
    {
        if instance_exists(obj_battlesolid)
            _temp_local_var_22 = (global.turntimer > 10)
        else
            _temp_local_var_22 = 0
    }
    else
        _temp_local_var_22 = 0
    if _temp_local_var_22
    {
        with(self.fakesus)
        {
            self.image_index = 0
            snd_play(snd_laz_c)
        }
        self.i = 0
        while(true)
        {
            if (self.i < 1)
            {
                self.axe[self.i] = instance_create((__view_get(e__VW.XView, 0) + 540), obj_battlesolid.y, obj_axebullet)
                scr_bullet_inherit(self.axe[self.i])
                self.i = (self.i + 1)
                continue
            }
            break
        }
        self.btimer = 0
    }
}
if (self.joker == 1)
{
    if (self.type == 45)
    {
        if (self.btimer >= 18)
        {
            self.xx = choose(0, 1)
            self.basex = (__view_get(e__VW.XView, 0) + 320)
            if instance_exists(obj_growtangle)
                self.basex = obj_growtangle.x
            if (self.xx == 0)
                self.idealx = ((self.basex - 180) - random(100))
            if (self.xx == 1)
                self.idealx = ((self.basex + 180) + random(100))
            self.bomb = instance_create(self.idealx, -20, obj_suitbomb)
            scr_bullet_inherit(self.bomb)
            if (self.bomb.type == 2)
                self.bomb.type = choose(0, 1, 2, 3)
            self.btimer = 0
        }
    }
    if (self.type == 46)
    {
        if (self.btimer >= 12)
        {
            self.xx = choose(0, 1)
            self.basex = (__view_get(e__VW.XView, 0) + 320)
            if instance_exists(obj_growtangle)
                self.basex = obj_growtangle.x
            if (self.xx == 0)
                self.idealx = ((self.basex - 180) - random(100))
            if (self.xx == 1)
                self.idealx = ((self.basex + 180) + random(100))
            self.bomb = instance_create(self.idealx, -20, obj_suitbomb)
            scr_bullet_inherit(self.bomb)
            if (self.bomb.type == 2)
                self.bomb.type = choose(0, 1, 2, 3)
            self.btimer = 0
        }
    }
    if (self.type == 47)
    {
        if (self.btimer >= 12)
        {
            self.xx = choose(0, 1)
            self.basex = (__view_get(e__VW.XView, 0) + 320)
            if instance_exists(obj_growtangle)
                self.basex = obj_growtangle.x
            if (self.xx == 0)
                self.idealx = ((self.basex - 180) - random(100))
            if (self.xx == 1)
                self.idealx = ((self.basex + 180) + random(100))
            self.bomb = instance_create(self.idealx, -20, obj_suitbomb)
            scr_bullet_inherit(self.bomb)
            self.bomb.type = 1
            self.btimer = 0
        }
    }
    if (self.type == 48)
    {
        if (self.btimer >= 12)
        {
            self.xx = choose(0, 1)
            self.basex = (__view_get(e__VW.XView, 0) + 320)
            if instance_exists(obj_growtangle)
                self.basex = obj_growtangle.x
            if (self.xx == 0)
                self.idealx = ((self.basex - 180) - random(100))
            if (self.xx == 1)
                self.idealx = ((self.basex + 180) + random(100))
            self.bomb = instance_create(self.idealx, -20, obj_suitbomb)
            scr_bullet_inherit(self.bomb)
            self.bomb.type = 0
            self.btimer = 0
        }
    }
    if (self.type == 49)
    {
        if (self.btimer >= 20)
        {
            self.xx = choose(0, 1)
            self.basex = (__view_get(e__VW.XView, 0) + 320)
            if instance_exists(obj_growtangle)
                self.basex = obj_growtangle.x
            if (self.xx == 0)
                self.idealx = ((self.basex - 180) - random(100))
            if (self.xx == 1)
                self.idealx = ((self.basex + 180) + random(100))
            self.bomb = instance_create(self.idealx, -20, obj_suitbomb)
            scr_bullet_inherit(self.bomb)
            self.bomb.type = 2
            self.btimer = 0
        }
    }
    if (self.type == 50)
    {
        if (self.btimer >= 12)
        {
            self.xx = choose(0, 1)
            self.basex = (__view_get(e__VW.XView, 0) + 320)
            if instance_exists(obj_growtangle)
                self.basex = obj_growtangle.x
            if (self.xx == 0)
                self.idealx = ((self.basex - 180) - random(100))
            if (self.xx == 1)
                self.idealx = ((self.basex + 180) + random(100))
            self.bomb = instance_create(self.idealx, -20, obj_suitbomb)
            scr_bullet_inherit(self.bomb)
            self.bomb.type = 3
            self.btimer = 0
        }
    }
    if (self.type == 55)
    {
        if (self.btimer >= 40)
            _temp_local_var_23 = (self.made == 0)
        else
            _temp_local_var_23 = 0
        if _temp_local_var_23
        {
            self.btimer = 0
            self.made = 1
            self.scythe = instance_create((obj_battlesolid.x - 200), obj_battlesolid.y, obj_bigscythe)
            scr_bullet_inherit(self.scythe)
            self.scythe.image_angle = (270 + random(120))
        }
    }
    if (self.type == 56)
    {
        if (self.btimer >= 29)
            _temp_local_var_24 = (self.made == 0)
        else
            _temp_local_var_24 = 0
        if _temp_local_var_24
        {
            self.btimer = 0
            self.xchoose = choose(-250)
            self.scythe = instance_create((obj_battlesolid.x + self.xchoose), obj_battlesolid.y, obj_bigscythe)
            scr_bullet_inherit(self.scythe)
            self.scythe.image_angle = random(90)
            self.scythe.type = 3
            self.scythe.friction = -0.25
            if (self.xchoose > 0)
                self.scythe.hspeed = -1
            if (self.xchoose < 0)
                self.scythe.hspeed = 1
        }
    }
    if (self.type == 57)
    {
        if (self.btimer >= 40)
            _temp_local_var_25 = (self.made == 0)
        else
            _temp_local_var_25 = 0
        if _temp_local_var_25
        {
            self.btimer = 0
            self.made = 1
            self.scythe = instance_create((obj_battlesolid.x - 140), obj_battlesolid.y, obj_bigscythe)
            scr_bullet_inherit(self.scythe)
            self.scythe.anglespeed = -12
            self.scythe.image_angle = (270 + random(120))
        }
    }
    if (self.type == 58)
    {
        if (self.btimer >= 40)
            _temp_local_var_26 = (self.made == 0)
        else
            _temp_local_var_26 = 0
        if _temp_local_var_26
        {
            self.btimer = 0
            self.made = 1
            self.scythe = instance_create((obj_battlesolid.x - 150), obj_battlesolid.y, obj_bigscythe)
            self.scythe.anglespeed = -17
            self.scythe.image_angle = (270 + random(120))
        }
    }
    if (self.type == 60)
    {
        if (self.btimer >= 40)
            _temp_local_var_27 = (self.made == 0)
        else
            _temp_local_var_27 = 0
        if _temp_local_var_27
        {
            self.btimer = 0
            self.made = 1
            self.i = 0
            while(true)
            {
                if (self.i < 3)
                {
                    self.j = 0
                    while(true)
                    {
                        if (self.j < 7)
                        {
                            self.horse1 = instance_create((obj_battlesolid.x + 150), ((obj_battlesolid.y - 80) + (self.i * 80)), obj_carouselbullet)
                            self.horse1.siner = (self.j * 18)
                            self.horse1.vsin = (self.j * 9)
                            scr_bullet_inherit(self.horse1)
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
        }
    }
    if (self.type == 61)
    {
        if (self.btimer >= 40)
            _temp_local_var_28 = (self.made == 0)
        else
            _temp_local_var_28 = 0
        if _temp_local_var_28
        {
            self.btimer = 0
            self.made = 1
            self.horse = 0
            self.vseed = random(300)
            self.j = 0
            while(true)
            {
                if (self.j < 3)
                {
                    self.i = 0
                    while(true)
                    {
                        if (self.i < 3)
                        {
                            self.horse1 = instance_create((obj_battlesolid.x + 150), ((obj_battlesolid.y - 80) + (self.i * 80)), obj_carouselbullet)
                            self.horse1.siner = (self.j * 42)
                            self.horse1.vsin = (0 + self.vseed)
                            self.horse1.image_index = 0
                            self.horse1.altmode = 2
                            self.horse1.sinspeed = 1.1
                            scr_bullet_inherit(self.horse1)
                            self.horse1 = instance_create((obj_battlesolid.x + 150), ((obj_battlesolid.y - 80) + (self.i * 80)), obj_carouselbullet)
                            self.horse1.siner = ((self.j * 42) + 21)
                            self.horse1.vsin = (0 + self.vseed)
                            self.horse1.image_index = 1
                            self.horse1.altmode = 1
                            self.horse1.sinspeed = 1.1
                            scr_bullet_inherit(self.horse1)
                            self.chance = floor(random(50))
                            if (self.chance == 1)
                                self.horse1.image_index = 2
                            self.i = (self.i + 1)
                            continue
                        }
                        break
                    }
                    if (self.horse == 0)
                        self.horse = 1
                    else
                        self.horse = 0
                    self.j = (self.j + 1)
                    continue
                }
                break
            }
        }
    }
    if (self.type == 62)
    {
        if (self.btimer >= 40)
            _temp_local_var_29 = (self.made == 0)
        else
            _temp_local_var_29 = 0
        if _temp_local_var_29
        {
            self.btimer = 0
            self.made = 1
            self.i = 0
            while(true)
            {
                if (self.i < 3)
                {
                    self.j = 0
                    while(true)
                    {
                        if (self.j < 7)
                        {
                            self.horse1 = instance_create((obj_battlesolid.x + 150), ((obj_battlesolid.y - 80) + (self.i * 80)), obj_carouselbullet)
                            self.horse1.siner = (self.j * 18)
                            self.horse1.vsin = (self.j * 9)
                            self.horse1.sinspeed = 1.15
                            self.horse1.altmode = 3
                            scr_bullet_inherit(self.horse1)
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
        }
    }
    if (self.type == 65)
    {
        if (self.btimer >= 60)
        {
            self.ring = instance_create(obj_battlesolid.x, obj_battlesolid.y, obj_spadering)
            self.ring.maxspade = 10
            self.ring.grav = 0.4
            scr_bullet_inherit(self.ring)
            self.btimer = 0
        }
    }
    if (self.type == 66)
    {
        if (self.btimer >= 30)
        {
            self.ring = instance_create(obj_battlesolid.x, obj_battlesolid.y, obj_spadering)
            self.ring.maxspade = 6
            self.ring.grav = 3
            self.ring.size = 1.5
            scr_bullet_inherit(self.ring)
            self.btimer = 0
        }
    }
    if (self.type == 67)
    {
        if (self.btimer >= 20)
        {
            self.ring = instance_create(obj_battlesolid.x, obj_battlesolid.y, obj_spadering)
            self.ring.grav = 0.2
            self.ring.maxspade = 4
            self.ring.special = 1
            scr_bullet_inherit(self.ring)
            self.btimer = 0
        }
    }
    if (self.type == 68)
    {
        with(obj_heart)
        {
            self.wspeed = 5
        }
        if (self.btimer >= 54)
        {
            self.ring = instance_create(obj_battlesolid.x, obj_battlesolid.y, obj_spadering)
            self.ring.side = choose(0, 1)
            self.ring.grav = 0.45
            self.ring.maxspade = 10
            scr_bullet_inherit(self.ring)
            self.btimer = 0
        }
    }
    if (self.type == 70)
    {
        if (self.btimer >= 20)
            _temp_local_var_30 = (global.turntimer >= 30)
        else
            _temp_local_var_30 = 0
        if _temp_local_var_30
        {
            self.jokerx = choose(((obj_battlesolid.x - 100) - random(100)), ((obj_battlesolid.x + 100) + random(100)))
            self.jokery = choose((obj_battlesolid.y - random(100)), (obj_battlesolid.y + random(100)))
            self.jokern = instance_create(self.jokerx, self.jokery, obj_joker_teleport)
            self.jokern.type = 1
            scr_bullet_inherit(self.jokern)
            self.jokern.active = 0
            self.btimer = 0
        }
    }
    if (self.type == 71)
    {
        if (self.btimer >= 9)
            _temp_local_var_31 = (global.turntimer >= 20)
        else
            _temp_local_var_31 = 0
        if _temp_local_var_31
        {
            self.jokerx = choose(((obj_battlesolid.x - 100) - random(100)), ((obj_battlesolid.x + 100) + random(100)))
            self.jokery = choose((obj_battlesolid.y - random(100)), (obj_battlesolid.y + random(100)))
            self.jokern = instance_create(self.jokerx, self.jokery, obj_joker_teleport)
            scr_bullet_inherit(self.jokern)
            self.jokern.active = 0
            self.btimer = 0
        }
    }
    if (self.type == 72)
    {
        if (self.btimer >= 18)
        {
            self.btimer = 0
            if (self.side == 1)
                self.dir = choose(225, 315)
            if (self.side == -1)
                self.dir = choose(45, 135)
            self.radius = 360
            self.xx = lengthdir_x(self.radius, self.dir)
            self.yy = lengthdir_y(self.radius, self.dir)
            self.d = instance_create(((obj_heart.x + 8) + self.xx), ((obj_heart.y + 8) + self.yy), obj_clubsbullet_dark)
            self.d.direction = (self.dir + 180)
            self.d.speed = 20
            self.d.friction = 1
            self.d.type = 2
            self.d.damage = self.damage
            self.d.target = self.target
            with(self.d)
            {
                self.image_angle = self.direction
            }
            if (self.side == 1)
                self.side = -1
            else
                self.side = 1
        }
    }
    if (self.type == 73)
    {
        if (self.btimer >= 4)
        {
            self.btimer = 0
            self.radius = (140 + random(40))
            self.yy = (self.radius * self.side)
            self.xx = (-100 + random(200))
            self.num = choose(0, 1, 2, 3)
            if (self.num == 3)
                self.xx = (-10 + random(20))
            if instance_exists(obj_battlesolid)
            {
                self.db = instance_create(((obj_heart.x + 8) + self.xx), (obj_battlesolid.y + 100), obj_dbullet_vert)
                with(self.db)
                {
                    self.type = 1
                }
                self.db.damage = self.damage
                self.db.target = self.target
                self.db.timepoints = 2
            }
        }
    }
    if (self.type == 74)
    {
        if (self.btimer >= 9)
        {
            self.btimer = 0
            self.radius = (140 + random(40))
            self.yy = (self.radius * self.side)
            self.xx = (-100 + random(200))
            self.num = choose(0, 1, 2, 3)
            if (self.num == 3)
                self.xx = (-10 + random(20))
            self.d = instance_create(((obj_heart.x + 8) + self.xx), ((obj_heart.y + 8) + self.yy), obj_dbullet_vert)
            self.d.grazepoints = 12
            self.d.timepoints = 2
            self.d.damage = self.damage
            self.d.target = self.target
        }
    }
    if (self.type == 75)
        _temp_local_var_32 = 1
    else
        _temp_local_var_32 = (self.type == 76)
    if _temp_local_var_32
    {
        if (self.btimer >= 0)
            _temp_local_var_33 = (self.special == 0)
        else
            _temp_local_var_33 = 0
        if _temp_local_var_33
        {
            snd_play(snd_spearappear)
            self.scythe = instance_create(0, 0, obj_centerscythe)
            scr_bullet_inherit(obj_centerscythe)
            self.special = 1
        }
    }
    if (self.type == 77)
    {
        global.sp = 10
        with(obj_heart)
        {
            self.wspeed = 10
        }
        if (self.special == 0)
        {
            snd_play(snd_joker_byebye)
            self.prevmake = 0
            self.special = 1
            self.rank = 16
            self.realtimer = 0
            self.chase = 0
            self.made = 0
            self.amount = 0
            self.jokertimer = 0
            self.darkfader = scr_dark_marker((__view_get(e__VW.XView, 0) + 320), (__view_get(e__VW.YView, 0) - 10), spr_tallpx)
            with(self.darkfader)
            {
                self.depth = 2
                self.image_alpha = 0
                self.image_blend = 0x000000
                self.image_xscale = 200
                self.image_yscale = 2
            }
        }
        if (self.realtimer >= 0)
            _temp_local_var_34 = (self.realtimer < 10)
        else
            _temp_local_var_34 = 0
        if _temp_local_var_34
        {
            with(self.darkfader)
            {
                self.image_alpha = (self.image_alpha + 0.1)
            }
            with(obj_battlesolid)
            {
                self.image_alpha = (self.image_alpha - 0.1)
            }
            with(obj_heart)
            {
                self.y = (self.y + 16)
                self.boundaryup = 160
            }
        }
        if (self.realtimer == 10)
        {
            with(obj_battlesolid)
            {
                instance_destroy()
            }
        }
        if (self.realtimer == 20)
            instance_create((__view_get(e__VW.XView, 0) + 40), -60, obj_laserscythe)
        if (self.realtimer == 40)
            instance_create((__view_get(e__VW.XView, 0) + 570), -60, obj_laserscythe)
        if (self.realtimer >= 60)
            _temp_local_var_35 = (self.amount < 30)
        else
            _temp_local_var_35 = 0
        if _temp_local_var_35
        {
            if (self.btimer >= self.rank)
            {
                if (self.rank > 7)
                    self.rank = (self.rank - 1)
                self.which = floor(random(5))
                if (self.which == self.prevmake)
                    self.which = floor(random(5))
                if (self.chase == 3)
                {
                    self.which = floor(((obj_heart.x + 8) / 90))
                    self.chase = 0
                }
                self.scythe = instance_create(((__view_get(e__VW.XView, 0) + 40) + (90 * self.which)), -60, obj_laserscythe)
                if (self.which == 1)
                    self.scythe2 = instance_create(((__view_get(e__VW.XView, 0) + 40) + 450), -60, obj_laserscythe)
                if (self.which == 0)
                    self.scythe2 = instance_create(((__view_get(e__VW.XView, 0) + 40) + 540), -60, obj_laserscythe)
                self.prevmake = self.which
                self.btimer = 0
                self.chase = (self.chase + 1)
                self.amount = (self.amount + 1)
            }
        }
        if (self.amount >= (29 - self.made))
            _temp_local_var_36 = (self.special == 1)
        else
            _temp_local_var_36 = 0
        if _temp_local_var_36
        {
            self.jokertimer = 0
            self.jokerin = instance_create((__view_get(e__VW.XView, 0) + 320), (__view_get(e__VW.YView, 0) + 100), obj_joker_teleport)
            with(self.jokerin)
            {
                self.type = 66
                self.depth = -30
            }
            self.special = 2
            self.which2 = 0
        }
        if (self.special == 2)
        {
            self.jokertimer = (self.jokertimer + 1)
            if (self.jokertimer == 10)
                snd_play(scr_84_get_sound("snd_joker_neochaos"@3398))
            if (self.jokertimer == 40)
                _temp_local_var_37 = 1
            else
                _temp_local_var_37 = (self.jokertimer == 98)
            if _temp_local_var_37
            {
                self.scythe = instance_create((__view_get(e__VW.XView, 0) + 40), -60, obj_laserscythe)
                self.scythe = instance_create((__view_get(e__VW.XView, 0) + 580), -60, obj_laserscythe)
            }
            if (self.jokertimer == 46)
                _temp_local_var_38 = 1
            else
                _temp_local_var_38 = (self.jokertimer == 86)
            if _temp_local_var_38
            {
                self.scythe = instance_create((__view_get(e__VW.XView, 0) + 130), -60, obj_laserscythe)
                self.scythe = instance_create((__view_get(e__VW.XView, 0) + 490), -60, obj_laserscythe)
            }
            if (self.jokertimer == 52)
                _temp_local_var_39 = 1
            else
                _temp_local_var_39 = (self.jokertimer == 80)
            if _temp_local_var_39
            {
                self.scythe = instance_create((__view_get(e__VW.XView, 0) + 220), -60, obj_laserscythe)
                self.scythe = instance_create((__view_get(e__VW.XView, 0) + 400), -60, obj_laserscythe)
            }
            if (self.jokertimer == 66)
                _temp_local_var_40 = 1
            else
                _temp_local_var_40 = (self.jokertimer == 98)
            if _temp_local_var_40
                self.scythe = instance_create((__view_get(e__VW.XView, 0) + 310), -60, obj_laserscythe)
            if (self.jokertimer == 130)
            {
                self.lastscythe = instance_create((__view_get(e__VW.XView, 0) + 320), -320, obj_laserscythe)
                self.p = 0
                self.vol = 0
                self.vol2 = 1
                self.rumnoise = audio_play_sound(snd_rumble, 50, 1)
                with(self.lastscythe)
                {
                    self.vspeed = 1
                    self.gravity = 0.02
                    self.image_xscale = 16
                    self.image_yscale = 16
                    self.scale = 16
                    self.rotspeed = 0
                    self.remrot = 160
                    self.image_angle = 160
                }
                self.fadewhite = instance_create((__view_get(e__VW.XView, 0) + 320), (__view_get(e__VW.YView, 0) - 40), obj_marker)
                self.fadewhite.sprite_index = spr_tallpx
                self.fadewhite.image_xscale = 400
                self.fadewhite.image_yscale = 2
                self.fadewhite.depth = -100
                self.fadewhite.image_alpha = -0.3
            }
            if (self.jokertimer >= 131)
            {
                with(self.lastscythe)
                {
                    self.x = (self.xstart + random(8))
                }
                with(self.fadewhite)
                {
                    self.image_alpha = (self.image_alpha + 0.01)
                }
                self.vol = (self.vol + 0.01)
                if (self.fadewhite.image_alpha >= 1)
                {
                    with(self.darkfader)
                    {
                        instance_destroy()
                    }
                    with(self.lastscythe)
                    {
                        instance_destroy()
                    }
                }
                if (self.fadewhite.image_alpha >= 1.3)
                    self.special = 3
            }
        }
        if (self.special == 3)
        {
            with(obj_heart)
            {
                self.x = (__view_get(e__VW.XView, 0) + 320)
                self.y = (__view_get(e__VW.YView, 0) + 120)
            }
            self.vol = (self.vol - 0.1)
            audio_sound_gain(self.rumnoise, self.vol, 0)
            with(self.fadewhite)
            {
                self.image_alpha = (self.image_alpha - 0.1)
            }
            if (self.fadewhite.image_alpha <= 0)
            {
                audio_stop_sound(self.rumnoise)
                global.turntimer = 11
                self.special = 4
            }
        }
        self.realtimer = (self.realtimer + 1)
    }
}
