if (self.racecon == 0)
{
    self.orx = self.x
    self.ory = self.y
    self.ang = 0
    self.vdir = choose(1, -1)
    self.racecon = 1
    self.rtimer = 0
    with (obj_susieenemy)
        self.visible = 0
    self.s = instance_create(self.susiex, self.susiey, obj_regularbullet_permanent)
    scr_bullet_inherit(self.s)
    self.s.wall_destroy = 0
    self.s.sprite_index = spr_susiel_dark
    self.s.image_xscale = 2
    self.s.image_yscale = 2
    self.s.active = 1
    self.s.depth = (self.depth - 1)
    self.s.image_speed = 0
    self.s.image_index = 1
    self.s.lx = self.x
    self.s.ly = (self.y - 108)
    snd_play(snd_jump)
    with (self.s)
    {
        self.hspeed = -2
        self.vspeed -= 7
        self.gravity = 1
    }
}
if (self.racecon == 1)
{
    self.siner = 0
    self.rtimer += 1
    if (self.rtimer == 13)
    {
        snd_stop(snd_jump)
        snd_play(snd_splat)
    }
    if (self.rtimer >= 13)
    {
        self.image_xscale += 0.1
        self.image_yscale -= 0.15
    }
    if (self.rtimer == 16)
    {
        with (self.s)
        {
            self.speed = 0
            self.gravity = 0
            self.image_index = 0
        }
        self.sfitx = (self.s.x - self.x)
        self.sfity = (self.s.y - self.y)
        self.s_tracking = 1
        self.ax_timer = 0
        self.s_timer = 0
        self.racecon = 2
        self.rtimer = 0
    }
}
if (self.s_attack == 1)
{
    self.ax_timer += 1
    self.s_timer += 1
    if (self.s_timer == 1)
    {
        self.axe = instance_create((self.s.x - 40), (self.s.y - 15), obj_axebullet)
        scr_bullet_inherit(self.axe)
        self.axe.depth = (self.depth + 2)
        with (self.axe)
        {
            self.hspeed = -16
            if (obj_heart.y >= self.y)
            {
                self.gravity_direction = (-15 + random(10))
                self.vspeed = 2
            }
            else
            {
                self.gravity_direction = (5 + random(10))
                self.vspeed = -2
            }
            self.gravity = 0.5
        }
        self.axe.hspeed += (0.3 * self.ax_timer)
        snd_play(snd_laz_c)
        self.s.sprite_index = spr_susie_enemy_attack
        self.s.active = 0
        self.s.image_index = 0
        self.s.image_speed = 0.5
    }
    if (self.s_timer == 4)
        self.s.active = 0
    if (self.s_timer == 8)
        self.s.image_speed = 0
    if ((self.s_timer == 8) && (self.ax_timer <= 60))
        self.s_timer = 0
}
if (self.racecon == 2)
{
    self.rtimer += 1
    if (self.rtimer >= 1)
    {
        if ((self.y <= (self.ory - 120)) || (self.y >= (self.ory + 120)))
        {
            if ((self.y <= (self.ory - 120)) && (self.vspeed < 0))
                self.vspeed = (-self.vspeed)
            if ((self.y >= (self.ory + 120)) && (self.vspeed > 0))
                self.vspeed = (-self.vspeed)
        }
    }
    if ((self.rtimer == 5) || (self.rtimer == 10))
    {
        self.vspeed = 0
        snd_play(snd_lancerhonk)
        self.honkimg = instance_create((self.x - 60), (self.y - 40), obj_afterimage_grow)
        with (self.honkimg)
            self.sprite_index = spr_lancernoise
    }
    if (self.rtimer == 30)
    {
        self.active = 1
        self.s_attack = 1
        self.racecon = 3
        self.rtimer = 0
        self.ang = 0
        snd_play(snd_drive)
        self.hspeed = -10
        self.vspeed = -11
        self.gravity = 0.5
    }
}
if (self.racecon == 3)
{
    self.rtimer += 1
    if (self.x <= (__view_get(0, 0) - 40))
    {
        self.speed = 0
        self.gravity = 0
        self.friction = 0
        self.s_attack = 0
        self.s_tracking = 0
        self.image_xscale = 2
        self.image_yscale = 2
        self.x = (__view_get(0, 0) + 740)
        self.y = self.ory
        self.s.x = (self.susiex + 200)
        self.s.hspeed = -8
        self.s.y = self.susiey
        self.s.sprite_index = spr_susie_enemy
        self.hspeed = -6
        self.racecon = 4
    }
}
if (self.racecon == 4)
{
    self.donecount = 0
    if (self.s.x <= self.susiex)
    {
        self.donecount += 1
        self.s.hspeed = 0
        self.s.x = self.susiex
    }
    if (self.x <= (self.orx + 5))
    {
        self.donecount += 1
        self.hspeed = 0
        self.x = self.orx
    }
    if (self.donecount >= 2)
    {
        global.turntimer = 5
        with (obj_susieenemy)
            self.visible = 1
        with (obj_lancerboss3)
            self.visible = 1
        self.racecon = -1
    }
}
if (self.s_tracking == 1)
{
    self.s.x = (self.x + self.sfitx)
    self.s.y = (self.y + self.sfity)
}
