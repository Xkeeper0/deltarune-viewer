if (self.homing == 1)
{
    self.dir = random(360)
    self.radius = (200 + random(40))
    self.dirx = lengthdir_x(self.radius, self.dir)
    self.diry = lengthdir_y(self.radius, self.dir)
    self.xx = ((self.dirx + obj_mainchara.x) + 10)
    self.yy = ((self.diry + obj_mainchara.y) + 40)
    instance_create(self.xx, self.yy, obj_overworld_spade_homing)
    self.alarm[0] = 10
}
if (self.homing == 0)
{
    self.radius = (-300 + random(1000))
    if (global.facing == 3)
        self.radius *= -1
    self.alarm[0] = 5
    self.fallspade = instance_create((obj_mainchara.x + self.radius), (__view_get(1, 0) - 500), obj_overworld_spade)
    with (self.fallspade)
    {
        self.image_angle = 270
        self.gravity = 0.08
        self.speed = 0
        self.vspeed = 6
        self.hspeed = (-0.8 + random(1.6))
    }
}
if (self.homing == 2)
{
    self.alarmamt = (10 - (self.intensity / 20))
    if (self.alarmamt < 5)
        self.alarmamt = 5
    with (self.sidespade[self.side])
        self.speed = 11
    self.alarm[0] = self.alarmamt
    if (self.side == 0)
        self.radius = 80
    else
        self.radius = 560
    self.sidespade[self.side] = instance_create(self.radius, ((__view_get(1, 0) + 30) + random(420)), obj_overworld_spade)
    if (self.side == 0)
        self.sidespade[self.side].direction = 0
    if (self.side == 1)
        self.sidespade[self.side].direction = 180
    with (self.sidespade[self.side])
    {
        self.damage = 17
        if (global.hp[1] <= 40)
            self.damage = 13
        self.image_angle = self.direction
    }
    self.intensity += 1
}
if (self.homing == 3)
{
    self.radius = (100 + random(900))
    if (global.facing == 3)
        self.radius -= 500
    self.alarm[0] = 7
    self.fallspade = instance_create((obj_mainchara.x + self.radius), choose((__view_get(1, 0) + 550), (__view_get(1, 0) - 100)), obj_overworld_spade)
    with (self.fallspade)
    {
        self.damage -= 4
        self.damage += (global.battledf[0] * 2)
        self.image_xscale = 1.5
        self.image_yscale = 1.5
        self.friction = -0.1
        self.sprite_index = spr_diamondbullet
        if (self.y >= (self.room_height / 2))
        {
            self.image_angle = 135
            self.vspeed = -5
            self.hspeed = -5
        }
        else
        {
            self.image_angle = 225
            self.vspeed = 5
            self.hspeed = -5
        }
    }
}
if (self.homing == 4)
{
    self.slow_bonus = (1 - (global.hp[1] / global.maxhp[1]))
    self.alarm[0] = (20 + (15 * self.slow_bonus))
    self.side = choose(0, 1)
    if (obj_mainchara.y >= 400)
    {
        for (self.i = 0; self.i < 6; self.i += 1)
        {
            self.fallspade = instance_create(((220 + (20 * self.i)) + (self.side * 120)), (__view_get(1, 0) + 500), obj_overworld_spade)
            self.fallspade.vvalue = (-10 + (3 * self.slow_bonus))
            self.fallspade.fvalue = (-0.5 + (0.2 * self.slow_bonus))
            with (self.fallspade)
            {
                self.damage -= 4
                self.damage += (global.battledf[0] * 2)
                self.image_angle = 90
                self.image_xscale = 1.5
                self.image_yscale = 1.5
                self.vspeed = self.vvalue
                self.friction = self.fvalue
                self.sprite_index = spr_diamondbullet
            }
        }
    }
}
if (self.side == 0)
    self.side = 1
else
    self.side = 0
