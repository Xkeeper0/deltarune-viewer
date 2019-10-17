if (self.leapmode == 0)
{
    if (self.jumpcon == 1)
    {
        if (self.vspeed >= 0)
        {
            if (self.y >= ((obj_growtangle.y + (obj_growtangle.sprite_height / 2)) - self.sprite_height))
            {
                snd_play(snd_impact)
                instance_create(0, 0, obj_shake)
                self.y = ((obj_growtangle.y + (obj_growtangle.sprite_height / 2)) - self.sprite_height)
                self.jumptimer = 0
                self.vspeed = 0
                self.gravity = 0
                self.hspeed = 0
                self.sprite_index = spr_checkers_crouch
                self.jumpcon = 0
            }
        }
    }
    if (self.jumpcon == 3)
    {
        if (self.vspeed >= 0)
        {
            if (self.y >= (self.floory - 2))
            {
                snd_play(snd_impact)
                instance_create(0, 0, obj_shake)
                self.y = self.floory
                self.x = self.xstart
                self.vspeed = 0
                self.gravity = 0
                self.hspeed = 0
                self.sprite_index = spr_checkers_crouch
                self.jumpcon = 4
            }
        }
    }
    if (self.jumpcon == 0)
    {
        self.sprite_index = spr_checkers_crouch
        self.jumptimer += 1
        self.jumpmax = 20
        if (self.amt >= 1)
            self.jumpmax = 10
        if (self.jumptimer >= self.jumpmax)
        {
            snd_play(snd_jump)
            self.floory = self.y
            self.jumptimer = 0
            self.jumpcon = 1
            self.amt += 1
            self.sprite_index = spr_checkers_leap
            self.targetx = ((obj_heart.x + 8) - (self.sprite_width / 2))
            self.vspeed = -15
            if (self.amt == 1)
                self.vspeed = -17
            self.gravity = 1
            self.hspeed = ((self.targetx - self.x) / 28)
            if (self.amt >= 4)
            {
                self.active = 0
                self.jumpcon = 3
                self.targetx = self.xstart
                self.gravity = 2
                self.hspeed = ((self.targetx - self.x) / 16)
            }
        }
    }
    if (self.jumpcon == 4)
    {
        self.jumptimer += 1
        if (self.jumptimer >= 10)
        {
            global.turntimer = -1
            with (obj_checkers_enemy)
                self.visible = 1
            instance_destroy()
        }
    }
}
if (self.leapmode == 1)
{
    if (self.jumpcon == 7)
    {
        self.jumptimer += 1
        if (self.jumptimer >= 10)
        {
            with (obj_regularbullet)
            {
                self.active = 0
                self.image_alpha -= 0.1
            }
        }
        if (self.jumptimer >= 20)
        {
            global.turntimer = -1
            with (obj_checkers_enemy)
                self.visible = 1
            instance_destroy()
        }
    }
    if (self.jumpcon == 6)
    {
        if (self.y >= (self.floory - 2))
        {
            self.y = self.floory
            self.x = self.xstart
            self.vspeed = 0
            self.gravity = 0
            self.hspeed = 0
            self.sprite_index = spr_checkers_crouch
            self.jumpcon = 7
        }
    }
    if (self.jumpcon == 0)
    {
        self.sprite_index = spr_checkers_crouch
        self.jumptimer += 1
        if (self.jumptimer >= 20)
        {
            self.floory = self.y
            self.jumptimer = 0
            self.jumpcon = 1
            self.sprite_index = spr_checkers_leap
            self.targetx = ((obj_heart.x + 8) - (self.sprite_width / 2))
            self.hspeed = ((self.targetx - self.x) / 17)
            self.vspeed = -17
            snd_play(snd_jump)
            self.gravity = 1
            self.amt += 1
            if (self.amt >= 3)
            {
                self.active = 0
                self.jumpcon = 6
                self.targetx = self.xstart
                self.gravity = 2
                self.hspeed = ((self.targetx - self.x) / 16)
            }
        }
    }
    if (self.jumpcon == 1)
    {
        if (self.vspeed >= 0)
        {
            self.gravity = 0
            self.vspeed = 0
            self.hspeed = 0
            self.jumpcon = 2
            snd_play(snd_boost)
        }
    }
    if (self.jumpcon == 2)
    {
        self.image_speed = 0.25
        self.jumptimer += 1
        if (self.jumptimer >= 15)
        {
            snd_play(snd_ultraswing)
            self.image_speed = 0
            self.image_index = 0
            self.vspeed = 32
            self.jumpcon = 3
            self.jumptimer = 0
        }
    }
    if (self.jumpcon == 3)
    {
        self.a = scr_afterimage()
        self.a.image_alpha = 0.7
        if (self.y >= ((obj_growtangle.y + (obj_growtangle.sprite_height / 2)) - self.sprite_height))
        {
            self.shrapmax = 6
            snd_play(snd_impact)
            instance_create(0, 0, obj_shake)
            for (self.i = 0; self.i < self.shrapmax; self.i += 1)
            {
                self.shrap = instance_create((((self.x + (self.sprite_width / 2)) - 15) + (self.i * 5)), (obj_growtangle.y + (obj_growtangle.sprite_height / 2)), obj_regularbullet)
                self.shrap.image_xscale = 1.5
                self.shrap.image_yscale = 1.5
                self.shrap.direction = ((130 - random(10)) - (70 * (self.i / (self.shrapmax - 1))))
                self.shrap.sprite_index = spr_checkershrapnel
                self.shrap.speed = (6 + random(1))
                self.shrap.gravity = 0.25
                self.shrap.target = self.target
                self.shrap.damage = self.damage
            }
            self.y = ((obj_growtangle.y + (obj_growtangle.sprite_height / 2)) - self.sprite_height)
            self.vspeed = 0
            self.gravity = 0
            self.hspeed = 0
            self.sprite_index = spr_checkers_crouch
            self.jumpcon = 0
        }
    }
}
if (self.leapmode == 2)
{
    if (self.jumpcon == 0)
    {
        self.sprite_index = spr_checkers_magnificent
        self.image_speed = 0.5
        self.jumpcon = 1
        self.magamt = 0
    }
    if (self.jumpcon == 1)
    {
        if (self.image_index == 2)
            snd_play(snd_ultraswing)
        if (self.image_index >= 4)
        {
            self.image_index = 4
            self.image_speed = 0
            self.hspeed = -4
            self.gravity = -0.12
            self.jumpcon = 2
            self.siner = 0
        }
    }
    if (self.jumpcon == 2)
    {
        self.siner += 1
        self.y += (sin((self.siner / 3)) * 4)
        self.s_timer += 1
        if (self.s_timer == 20)
            snd_play(snd_magicsprinkle)
        if (self.s_timer >= 24)
        {
            self.bul = instance_create((self.x + random((self.sprite_width / 2))), ((self.y + self.sprite_height) - 50), obj_regularbullet)
            self.bul.sprite_index = spr_checkershrapnel
            self.bul.vspeed = 3
            self.bul.image_xscale = 1.5
            self.bul.image_yscale = 1.5
            self.bul.depth = (self.depth + 1)
            self.bul.gravity_direction = (135 + random(180))
            self.bul.gravity = 0.06
            self.bul.target = self.target
            self.bul.damage = self.damage
            if ((self.magamt == 6) || (self.magamt == 12))
            {
                with (self.bul)
                {
                    self.gravity = 0
                    move_towards_point((obj_heart.x + 8), (obj_heart.y + 8), 3)
                }
            }
            self.s_timer = 21
            self.magamt += 1
        }
        if (self.y < (__view_get(1, 0) - 200))
        {
            self.speed = 0
            self.gravity = 0
            self.y = (self.ystart - 100)
            self.x = (self.xstart + 300)
            self.hspeed = -30
            self.vspeed = 10
            self.jumpcon = 3
        }
    }
    if (self.jumpcon == 3)
    {
        self.magamt = 0
        self.jumptimer += 1
        if (self.jumptimer >= 10)
        {
            snd_play(snd_impact)
            instance_create(0, 0, obj_shake)
            self.amt += 1
            self.s_timer = 0
            self.x = self.xstart
            self.y = self.ystart
            self.hspeed = 0
            self.vspeed = 0
            self.jumpcon = 0
            self.jumpcon = 4
            self.jumptimer = 0
            self.sprite_index = spr_checkers_idle
            self.image_index = 0
            self.image_speed = 0
        }
    }
    if (self.jumpcon == 4)
    {
        self.jumptimer += 1
        if (self.jumptimer >= 20)
        {
            with (obj_regularbullet)
            {
                self.active = 0
                self.image_alpha -= 0.1
            }
        }
        if (self.jumptimer >= 30)
        {
            global.turntimer = -1
            instance_destroy()
            with (obj_checkers_enemy)
                self.visible = 1
        }
    }
}
if (self.leapmode == 3)
{
    with (obj_regularbullet)
    {
        self.image_xscale += 0.01
        self.image_yscale += 0.01
    }
    if (self.jumpcon == 0)
    {
        self.sprite_index = spr_checkers_leg
        self.image_index = 0
        self.image_speed = 0.5
        self.jumpcon = 1
    }
    if (self.jumpcon == 1)
    {
        if (self.image_index == 3)
        {
            snd_play(snd_swing)
            snd_play(snd_magicsprinkle)
            for (self.i = 0; self.i < 4; self.i += 1)
            {
                self.bul = instance_create((self.x - 40), (self.y + 100), obj_regularbullet)
                self.bul.sprite_index = spr_checkershrapnel
                self.bul.direction = ((point_direction(self.bul.x, self.bul.y, (obj_heart.x + 8), (obj_heart.y + 8)) - (10 * self.i)) + random((self.i * 20)))
                self.bul.speed = (3.5 + random(1.8))
                self.bul.target = self.target
                self.bul.damage = self.damage
            }
        }
        if (self.image_index >= 5)
        {
            self.image_index = 5
            self.image_speed = 0
            self.jumpcon = 2
        }
    }
    if (self.jumpcon == 2)
    {
        self.jumptimer += 1
        if (self.jumptimer >= 10)
        {
            self.sprite_index = spr_checkers_idle
            self.image_index = 0
        }
        if (self.jumptimer >= 20)
        {
            self.jumptimer = 0
            self.jumpcon = 0
            self.amt += 1
            if (self.amt >= 4)
            {
                self.jumpcon = 3
                self.jumptimer = 0
            }
        }
    }
    if (self.jumpcon == 3)
    {
        self.jumptimer += 1
        if (self.jumptimer >= 20)
        {
            with (obj_regularbullet)
            {
                self.image_alpha -= 0.1
                self.active = 0
            }
        }
        if (self.jumptimer >= 30)
        {
            global.turntimer = -1
            instance_destroy()
            with (obj_checkers_enemy)
                self.visible = 1
        }
    }
}
if (self.leapmode == 4)
{
    if (self.jumpcon == 1)
    {
        if (self.y >= (self.floory - 2))
        {
            self.y = self.floory
            self.vspeed = 0
            self.gravity = 0
            self.hspeed = 0
            self.sprite_index = spr_checkers_crouch
            self.jumpcon = 0
            self.jumptimer = 10
        }
    }
    if (self.jumpcon == 3)
    {
        if (self.y >= (self.floory - 2))
        {
            self.y = self.floory
            self.x = self.xstart
            self.vspeed = 0
            self.gravity = 0
            self.hspeed = 0
            self.sprite_index = spr_checkers_crouch
            self.jumpcon = 4
        }
    }
    if (self.jumpcon == 0)
    {
        self.jumptimer += 1
        if (self.jumptimer >= 16)
        {
            self.floory = self.y
            self.jumptimer = 0
            self.jumpcon = 1
            self.sprite_index = spr_checkers_leap
            self.targetx = ((obj_heart.x + 8) - (self.sprite_width / 2))
            self.vspeed = -12
            self.gravity = 1
            self.hspeed = ((self.targetx - self.x) / 24)
            self.amt += 1
            if (self.amt >= 4)
            {
                self.active = 0
                self.jumpcon = 3
                self.jumptimer = 0
                self.targetx = self.xstart
                self.gravity = 2
                self.hspeed = ((self.targetx - self.x) / 12)
            }
        }
    }
    if (self.jumpcon == 4)
    {
        self.jumptimer += 1
        if (self.jumptimer >= 10)
        {
            global.turntimer = -1
            with (obj_checkers_enemy)
                self.visible = 1
            instance_destroy()
        }
    }
}
if (self.grazed == 1)
{
    self.grazetimer += 1
    if (self.grazetimer >= 10)
    {
        self.grazetimer = 0
        self.grazed = 0
    }
}
