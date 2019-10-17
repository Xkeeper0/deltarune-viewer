scr_depth()
self.targetx = ((obj_mainchara.x + (obj_mainchara.sprite_width / 2)) - (self.sprite_width / 2))
self.targety = ((obj_mainchara.y + (obj_mainchara.sprite_height / 2)) - (self.sprite_height / 2))
if (global.interact == 0)
    self.frozen = 0
if (scr_outside_camera(200) && (self.offscreen_frozen == 1))
    self.frozen = 1
else
    self.frozen = 0
if (global.interact != 0)
    self.frozen = 1
if (self.frozen == 1)
{
    if (self.hadfrozen == 0)
    {
        self.remspeed = self.speed
        self.speed = 0
        self.hadfrozen = 1
    }
}
if (self.frozen == 0)
{
    if (self.hadfrozen == 1)
    {
        if (self.speed == 0)
            self.speed = self.remspeed
        self.hadfrozen = 0
    }
    if (self.pacecon == 0)
    {
        self.pacetimer += 1
        if (self.pacetype == 0)
        {
        }
        if (self.pacetype == 1)
        {
            if (self.pacetimer == 10)
                self.hspeed = 2
            if (self.pacetimer == 34)
                self.hspeed = 0
            if (self.pacetimer == 50)
                self.hspeed = -2
            if (self.pacetimer == 74)
                self.hspeed = 0
            if (self.pacetimer == 80)
                self.pacetimer = 0
        }
        if (self.pacetype == 2)
        {
            self.hspeed = (sin((self.pacetimer / 24)) * 4)
            self.vspeed = (cos((self.pacetimer / 24)) * 4)
        }
        if (self.pacetype == 5)
        {
            if (self.pacetimer == 1)
                self.vspeed = 6
            if (self.pacetimer == 25)
                self.vspeed = -6
            if (self.y < self.ystart)
                self.pacetimer = 0
        }
        if (self.pacetype == 6)
        {
            self.cancelwalk = 1
            self.walk_index += 0.25
        }
        if (self.pacetype == 7)
            self.hspeed = ((-sin((self.pacetimer / 30))) * 10)
        if (self.pacetype == 7.5)
            self.hspeed = (sin((self.pacetimer / 30)) * 10)
        if (self.pacetype == 8)
            self.vspeed = ((-sin((self.pacetimer / 25))) * 12.5)
        if (self.pacetype == 9)
        {
            self.hspeed = (sin((self.pacetimer / (self.pacespeed * 30))) * (self.moveradius / 20))
            self.pacespeed = 0.8
        }
        if (self.pacetype == 10)
        {
            if (self.pacecon2 == 0)
            {
                if (self.vspeed > 0)
                    self.vspeed *= 0.9
                if ((self.vspeed <= 0.5) && (self.pacecon2 == 0))
                    self.pacecon2 = 1
            }
            if (self.pacecon2 == 1)
                move_towards_point(obj_mainchara.x, obj_mainchara.y, 4)
        }
    }
    if (self.alertcon == 0)
    {
        self.alerttimer += 1
        if (self.alerttimer >= 6)
        {
            self.alerttimer -= 6
            if (distance_to_point((self.targetx + (self.sprite_width / 2)), (self.targety + (self.sprite_height / 2))) <= self.radius)
            {
                self.speed = 0
                self.pacecon = 1
                self.alerttimer = 0
                self.alertcon = 1
                snd_play(snd_b)
                instance_create((self.x + (self.sprite_width / 2)), (self.y - 20), obj_excblcon)
                self.alarm[4] = 20
            }
        }
    }
    if (self.alertcon == 2)
    {
        if (self.chasetype == 0)
        {
            if (self.speed < 4)
                self.speed = 4
            if (self.speed < 7)
                self.speed += 0.5
            move_towards_point(self.targetx, self.targety, self.speed)
        }
        if (self.chasetype == 1)
        {
            if (self.alerttimer == 0)
                move_towards_point(self.targetx, self.targety, 10)
            self.alerttimer += 1
            if (self.alerttimer >= 20)
                self.speed *= 0.75
            if (self.alerttimer >= 25)
                self.speed = 0
            if (self.alerttimer >= 27)
                self.alerttimer = 0
        }
        if (self.chasetype == 2)
        {
            if (self.alerttimer == 0)
            {
                self.xnext = 0
                self.ynext = 0
                if right_h()
                    self.xnext = 132
                if left_h()
                    self.xnext = -132
                if down_h()
                    self.ynext = 132
                if up_h()
                    self.ynext = -132
                move_towards_point((self.targetx + self.xnext), (self.targety + self.ynext), 10)
            }
            self.alerttimer += 1
            if (self.alerttimer >= 20)
                self.speed *= 0.75
            if (self.alerttimer >= 25)
                self.speed = 0
            if (self.alerttimer >= 27)
                self.alerttimer = 0
        }
        if (self.chasetype == 3)
        {
            if (self.speed < 2)
                self.speed = 2
            if (self.speed < 4)
                self.speed += 0.5
            move_towards_point(self.targetx, self.targety, self.speed)
        }
        if (self.chasetype == 4)
        {
            if (self.speed < 6)
                self.speed = 6
            if (self.speed < 14)
                self.speed += 0.5
            move_towards_point(self.targetx, self.targety, self.speed)
        }
    }
    self.facetimer += 1
    if (self.facetimer >= 10)
    {
        if ((self.hspeed <= -0.2) && (self.facing == 1))
        {
            self.facing = 0
            self.facetimer = 0
        }
        if ((self.hspeed >= 0.2) && (self.facing == 0))
        {
            self.facing = 1
            self.facetimer = 0
        }
    }
    if (self.cancelwalk == 0)
    {
        self.walk_index += (self.speed / 20)
        if (self.speed == 0)
            self.walk_index = 0
    }
}
