if (self.lcon == 1)
{
    self.orx = self.x
    self.ory = self.y
    self.ang = 0
    self.ltimer = 0
    self.shrinktimer = 0
    self.lcon = 1.5
}
if (self.lcon == 1.5)
{
    self.ltimer = (self.ltimer + 1)
    if (self.ltimer >= 10)
    {
        self.ltimer = 0
        self.lcon = 2
        snd_play(snd_cardrive)
    }
}
if (self.lcon >= 6)
    _temp_local_var_1 = (self.lcon < 10)
else
    _temp_local_var_1 = 0
if _temp_local_var_1
{
    self.btimer = (self.btimer + 1)
    if (self.btimer >= 10)
    {
        self.xoff = lengthdir_x(40, (self.image_angle - 20))
        self.yoff = lengthdir_y(40, (self.image_angle - 20))
        snd_play(snd_spearrise)
        self.bullet = instance_create((self.x - self.xoff), (self.y - self.yoff), obj_regularbullet)
        with(self.bullet)
        {
            self.target = obj_lancerbike.target
            self.damage = obj_lancerbike.damage
            if (self.target == 0)
            {
                if (global.hp[1] <= (global.maxhp[1] / 2))
                    self.damage = ceil((global.hp[1] / 3))
            }
            self.timepoints = 0
            self.sprite_index = spr_spadebullet
            move_towards_point((obj_heart.x + 8), (obj_heart.y + 8), 4)
            self.image_angle = self.direction
            self.friction = -0.4
        }
        self.bullet.depth = (self.depth + 1)
        self.btimer = 0
    }
}
if (self.lcon == 2)
{
    self.ltimer = (self.ltimer + 1)
    self.shrinktimer = (self.shrinktimer + 1)
    self.hspeed = (sin((self.ltimer / 3)) * 5)
    self.image_yscale = (2 - (sin((self.ltimer / 5)) * 1))
    if (self.shrinktimer > 4)
        self.image_yscale = (2 - ((sin((self.ltimer / 5)) * 1) * (8 / self.shrinktimer)))
    if (self.ltimer > 7)
    {
        self.image_angle = (self.image_angle - (abs(sin((self.ltimer / 5))) * 4))
        self.ang = (variable)(- self.image_angle)
    }
    if (self.ltimer > 4)
        _temp_local_var_2 = (abs(sin((self.ltimer / 5))) <= 0.06)
    else
        _temp_local_var_2 = 0
    if _temp_local_var_2
    {
        self.lcon = 5
        self.image_yscale = 2
        self.direction = 180
        self.speed = 4
    }
}
if (self.lcon == 5)
{
    if (self.speed < 16)
        self.speed = (self.speed + 2)
    if (self.ang < 45)
        self.ang = (self.ang + 4)
    self.image_angle = (variable)(- self.ang)
    if (self.x < (__view_get(e__VW.XView, 0) + 80))
        self.lcon = 6
}
if (self.lcon == 6)
{
    if (self.ang < 135)
        self.ang = (self.ang + 10)
    self.image_angle = (variable)(- self.ang)
    if (self.x <= (__view_get(e__VW.XView, 0) + 5))
    {
        self.lcon = 7
        self.direction = 90
    }
}
if (self.lcon == 7)
{
    if (self.y < (__view_get(e__VW.YView, 0) + 80))
    {
        if (self.ang < 225)
            self.ang = (self.ang + 10)
        if (self.y <= (__view_get(e__VW.YView, 0) + 5))
        {
            self.direction = 0
            self.lcon = 8
        }
    }
    else
    {
        if (self.ang < 135)
            self.ang = (self.ang + 10)
    }
    self.image_angle = (variable)(- self.ang)
}
if (self.lcon == 8)
{
    if (self.x >= (__view_get(e__VW.XView, 0) + 540))
    {
        if (self.ang < 315)
            self.ang = (self.ang + 10)
        if (self.x >= (__view_get(e__VW.XView, 0) + 630))
        {
            self.direction = 270
            self.lcon = 9
        }
    }
    else
    {
        if (self.ang < 225)
            self.ang = (self.ang + 10)
    }
    self.image_angle = (variable)(- self.ang)
}
if (self.lcon == 9)
{
    if (self.y > (self.ory - 70))
    {
        if (self.ang < 360)
            self.ang = (self.ang + 10)
        if (self.y >= (self.ory - 5))
        {
            self.y = self.ory
            self.direction = 180
            self.lcon = 10
        }
    }
    else
    {
        if (self.ang < 315)
            self.ang = (self.ang + 10)
    }
    self.image_angle = (variable)(- self.ang)
}
if (self.lcon == 10)
{
    self.ang = 0
    self.image_angle = 0
    if (self.x <= self.orx)
    {
        self.speed = 0
        self.x = self.orx
        self.lcon = 11
        self.ltimer = 0
    }
}
if (self.lcon == 11)
{
    self.sprite_index = spr_lancerbike_l
    self.ltimer = (self.ltimer + 1)
    if (self.ltimer >= 25)
    {
        with(obj_regularbullet)
        {
            self.active = 0
            self.image_alpha = (self.image_alpha - 0.2)
        }
        self.image_alpha = 1
    }
    if (self.ltimer >= 30)
    {
        self.lcon = 0
        self.endcon = 1
    }
}
if (self.racecon == 1)
{
    self.sy = 0
    self.s_moveup = 0
    if instance_exists(obj_susieandlancer_event)
    {
        self.s = obj_susieandlancer_event.s
        self.sy = self.s.y
        self.s_moveup = 1
    }
    else
    {
        if instance_exists(obj_susieenemy)
        {
            self.s = obj_susieenemy
            self.sy = self.s.y
            self.s_moveup = 1
        }
    }
    self.orx = self.x
    self.ory = self.y
    self.ang = 0
    self.racecon = 2
    self.vspeed = (-14 * choose(1, -1))
    self.rtimer = 0
    self.maxr = (15 + random(25))
}
if (self.racecon == 2)
{
    if (self.s_moveup == 1)
    {
        if (self.s.y > -20)
            self.s.y = (self.s.y - 10)
    }
    if (self.y < (self.topy + 10))
        self.vspeed = 12
    if (self.y > (self.bottomy - 10))
        self.vspeed = -12
    self.rtimer = (self.rtimer + 1)
    if (self.rtimer > self.maxr)
    {
        self.vspeed = 0
        self.racecon = 3
        self.rtimer = 0
    }
}
if (self.racecon == 3)
{
    self.rtimer = (self.rtimer + 1)
    if (self.rtimer == 5)
        _temp_local_var_3 = 1
    else
        _temp_local_var_3 = (self.rtimer == 10)
    if _temp_local_var_3
    {
        snd_play(snd_lancerhonk)
        self.honkimg = instance_create((self.x - 60), (self.y - 40), obj_afterimage_grow)
        with(self.honkimg)
        {
            self.sprite_index = spr_lancernoise
        }
    }
    if (self.rtimer >= 25)
    {
        snd_play(snd_drive)
        self.racecon = 4
        self.hspeed = -20
        self.rtimer = 0
        self.ang = 0
    }
}
if (self.racecon == 4)
{
    if (self.s_moveup == 1)
    {
        self.s.y = (self.s.y + 10)
        if (self.s.y >= self.sy)
        {
            self.s.y = self.sy
            self.s_moveup = 0
        }
    }
    self.rtimer = (self.rtimer + 1)
    self.ang = (self.ang + ((self.rtimer * 2) + 4))
    if (self.ang > 50)
        self.ang = 50
    self.image_angle = (variable)(- self.ang)
    if (self.x <= (__view_get(e__VW.XView, 0) - 40))
    {
        self.ang = 0
        self.image_angle = 0
        self.x = (__view_get(e__VW.XView, 0) + 740)
        self.y = self.ory
        self.hspeed = -12
        self.racecon = 5
    }
}
if (self.racecon == 5)
{
    if (self.x <= (self.orx + 5))
    {
        self.hspeed = 0
        self.x = self.orx
        self.racecon = 0
        self.endcon = 1
    }
}
if (self.endcon == 1)
{
    global.turntimer = 2
    with(obj_lancerboss)
    {
        self.visible = 1
        if (self.turns >= 4)
        {
            self.con = 1
            with(obj_battlecontroller)
            {
                self.noreturn = 1
            }
        }
    }
    with(obj_lancerboss3)
    {
        self.visible = 1
    }
    instance_destroy()
}
with(obj_lancerboss)
{
    if (self.compliment >= 3)
    {
        with(obj_dmgwriter)
        {
            self.spec = 1
        }
    }
}
