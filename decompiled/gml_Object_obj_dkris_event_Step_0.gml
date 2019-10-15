if (self.con == 0)
{
    self.con = 1
    self.alarm[4] = 90
}
if (self.con == 2)
{
    self.image_speed = 0.25
    self.con = 3
    self.alarm[4] = 12
}
if (self.con == 4)
{
    self.image_speed = 0
    self.image_index = 0
    self.con = 5
    self.alarm[4] = 70
}
if (self.con == 6)
{
    self.image_speed = 0.334
    self.con = 7
    self.alarm[4] = 20
}
if (self.con == 8)
{
    self.image_index = 0
    self.image_speed = 0
    self.con = 9
    self.alarm[4] = 70
    self.remx = self.x
    self.remy = self.y
    self.shaketimer = 0
}
if (self.con == 10)
{
    self.con = 11
    self.image_speed = 0.5
    self.alarm[4] = 60
}
if (self.con == 11)
{
    self.shaketimer = (self.shaketimer + 0.05)
    self.x = ((self.remx + random((self.shaketimer / 2))) - random((self.shaketimer / 2)))
    self.y = ((self.remy + random((self.shaketimer / 4))) - random((self.shaketimer / 4)))
}
if (self.con == 12)
{
    self.x = (self.remx + 10)
    self.y = (self.remy + 20)
    self.underbed = scr_marker(self.remx, self.remy, spr_dkris_bed2)
    self.underbed.depth = 100000
    self.sprite_index = spr_dkris_ground
    self.image_index = 2
    snd_play(snd_heavyswing)
    self.image_speed = 0
    self.hspeed = -6
    self.friction = 0.3
    self.con = 13
    self.alarm[4] = 7
}
if (self.con == 14)
{
    self.gravity = 1
    self.con = 15
    self.alarm[4] = 5
}
if (self.con == 16)
{
    self.gravity = 0
    self.friction = 0.4
    self.vspeed = 0
    self.image_index = 0
    snd_play(snd_impact)
    instance_create(0, 0, obj_shake)
    self.con = 17
    self.alarm[4] = 90
}
if (self.con == 18)
{
    self.sprite_index = spr_dkris_ground
    self.image_index = 1
    self.x = 180
    self.y = 119
    self.con = 19
    self.alarm[4] = 90
    scr_minishakeobj()
}
if (self.con == 20)
{
    snd_play(snd_noise)
    self.sprite_index = spr_dkris_dl
    self.x = (self.x + 5)
    self.y = (self.y - 12)
    scr_minishakeobj()
    self.image_index = 0
    self.con = 21
    self.alarm[4] = 60
}
if (self.con == 22)
{
    self.con = 23
    self.goalx = 153
    self.goaly = 125
    self.stepcycle = 0
    self.stepmax = 8
    self.stepx = ((self.goalx - self.x) / self.stepmax)
    self.stepy = ((self.goaly - self.y) / self.stepmax)
    self.alarm[4] = 50
}
if (self.con == 24)
{
    self.x = (self.x + self.stepx)
    self.y = (self.y + self.stepy)
    snd_play(snd_step1)
    self.image_index = 1
    scr_minishakeobj()
    self.con = 25
    self.alarm[4] = 15
}
if (self.con == 26)
{
    self.image_index = 0
    self.stepcycle = (self.stepcycle + 1)
    if (self.stepcycle >= self.stepmax)
    {
        self.con = 27
        self.alarm[4] = 30
    }
    else
    {
        self.con = 23
        self.alarm[4] = 20
    }
}
if (self.con == 28)
{
    self.x = 158
    self.y = 125
    scr_minishakeobj()
    self.sprite_index = spr_dkris_dr
    snd_play(snd_step1)
    self.con = 29
    self.alarm[4] = 60
}
if (self.con == 30)
{
    self.sprite_index = spr_dkris_readyhand
    self.image_index = 0
    self.image_speed = 0.1
    self.con = 31
    self.alarm[4] = 150
}
if (self.con == 32)
{
    self.image_speed = 0
    self.con = 33
    self.alarm[4] = 30
}
if (self.con == 34)
{
    self.flashobj = 0
    self.image_index = 0
    self.sprite_index = spr_dkris_grabheart
    self.image_speed = 0.25
    self.animtimer = 0
    self.htimer = 0
    self.remx = self.x
    self.remy = self.y
    self.con = 33.1
    self.alarm[4] = 20
}
if (self.con == 33.1)
{
    self.animtimer = (self.animtimer + 1)
    if (self.animtimer == 13)
        snd_play(snd_heavyswing)
    if (self.animtimer == 14)
    {
        snd_play(snd_grab)
        snd_play(snd_hurt1)
        instance_create(0, 0, obj_shake)
        scr_minishakeobj()
    }
}
if (self.con == 34.1)
{
    self.image_speed = 0.4
    self.sprite_index = spr_dkris_grabscream
    scr_minishakeobj()
    self.alarm[4] = 60
    self.con = 35
    self.shakeamt = 0
}
if (self.con == 35)
{
    self.htimer = (self.htimer + 1)
    if (self.htimer == 1)
        snd_play(snd_hurt1)
    if (self.htimer >= 8)
        self.htimer = 0
    self.x = ((self.remx + random(0.8)) - random(0.8))
    self.y = ((self.remy + random(0.8)) - random(0.8))
}
if (self.con == 36)
{
    self.x = self.remx
    self.y = self.remy
    self.gnoise = 0
    self.image_index = 0
    self.sprite_index = spr_dkris_pullheart
    self.image_speed = 0.334
    self.con = 37
    self.alarm[4] = 20
}
if (self.con == 37)
{
    if (self.image_index >= 2)
        _temp_local_var_1 = (self.gnoise == 0)
    else
        _temp_local_var_1 = 0
    if _temp_local_var_1
    {
        self.burst = instance_create((self.x + 2), (self.y + 10), obj_heartburst)
        self.gnoise = 1
        snd_play(snd_grab)
        snd_play(snd_break2)
    }
}
if (self.con == 38)
{
    self.image_speed = 0
    self.con = 37.1
    self.alarm[4] = 30
}
if (self.con == 38.1)
{
    self.sprite_index = spr_dkris_glowheart
    self.con = 37.2
    self.image_index = 0
    self.image_speed = 0.2
    snd_play(snd_break2)
    self.alarm[4] = 30
}
if (self.con == 38.2)
{
    self.image_speed = 0
    self.con = 39
    self.alarm[4] = 70
}
if (self.con == 40)
{
    self.x = 158
    self.y = 125
    self.sprite_index = spr_dkris_heartwalk
    self.image_speed = 0.1
    self.goalx = (self.wagon.x - 47)
    self.goaly = (self.wagon.y - 9)
    self.stepx = ((self.goalx - self.x) / 100)
    self.stepy = ((self.goaly - self.y) / 100)
    self.con = 41
    self.steps = 0
    self.samt = 0
}
if (self.con == 41)
{
    self.samt = (self.samt + 1)
    if (self.samt == 10)
        snd_play(snd_step1)
    if (self.samt == 20)
        self.samt = 0
    self.steps = (self.steps + 1)
    self.x = (self.x + self.stepx)
    self.y = (self.y + self.stepy)
    if (self.steps >= 100)
    {
        self.con = 52
        self.alarm[4] = 40
        self.x = self.goalx
        self.y = self.goaly
        self.image_speed = 0
        self.image_index = 0
    }
}
if (self.con == 53)
{
    with(self.wagon)
    {
        self.visible = 0
    }
    self.sprite_index = spr_dkris_heartthrow
    self.image_index = 0
    self.image_speed = 0.25
    self.con = 54
    self.alarm[4] = 40
}
if (self.con == 54)
{
    if (self.image_index == 5)
    {
        snd_play(snd_impact)
        snd_play(snd_hurt1)
        snd_play(snd_locker)
        instance_create(0, 0, obj_shake)
    }
}
if (self.con == 55)
{
    self.heartwagon = 1
    self.sprite_index = spr_dkris_heartthrow_post
    self.con = 56
    self.alarm[4] = 30
}
if (self.con == 57)
{
    self.x = 158
    self.y = 125
    self.sprite_index = spr_dkris_ul
    self.image_speed = 0
    self.goalx = (self.wagon.x - 47)
    self.goaly = (self.wagon.y - 9)
    self.stepx = ((self.goalx - self.x) / 100)
    self.stepy = ((self.goaly - self.y) / 100)
    self.x = self.goalx
    self.y = self.goaly
    self.steps = 0
    self.samt = 0
    self.con = 58
    self.alarm[4] = 30
}
if (self.con == 59)
{
    self.samt = (self.samt + 1)
    if (self.samt == 10)
        snd_play(snd_step1)
    if (self.samt == 20)
        self.samt = 0
    self.image_speed = 0.1
    self.x = (self.x - self.stepx)
    self.y = (self.y - self.stepy)
    self.steps = (self.steps + 1)
    if (self.steps >= 100)
    {
        self.image_index = 0
        self.image_speed = 0
        self.con = 60
        self.alarm[4] = 30
    }
}
if (self.con == 61)
{
    self.sprite_index = spr_dkris_ur_pullknife
    self.image_speed = 0
    self.image_index = 0
    self.con = 62
    self.alarm[4] = 30
}
if (self.con == 63)
{
    self.image_speed = 0.1
    self.con = 64
    self.alarm[4] = 285
}
if (self.con == 65)
{
    self.eyeflash = scr_marker((self.x + 15), (self.y + 9), spr_asgore_eyeflash_serious)
    self.eyeflash.image_blend = 0x0000FF
    with(self.eyeflash)
    {
        self.image_speed = 0.2
    }
    self.image_speed = 0
    snd_play(snd_break2)
    self.con = 66
    self.alarm[4] = 25
}
if (self.con == 67)
{
    with(self.eyeflash)
    {
        instance_destroy()
    }
    self.con = 68
    self.alarm[4] = 60
}
if (self.con == 69)
{
    self.pix = scr_marker(-10, -10, spr_pixel_white)
    with(self.pix)
    {
        self.image_blend = 0x000000
        self.image_xscale = 700
        self.image_yscale = 700
    }
    self.con = 70
    self.alarm[4] = 60
}
if (self.con == 71)
    room_goto(PLACE_LOGO)
if (self.heartwagon == 1)
{
    if left_p()
        _temp_local_var_2 = (self.heartx > -4)
    else
        _temp_local_var_2 = 0
    if _temp_local_var_2
        self.heartx = (self.heartx - 1)
    if right_p()
        _temp_local_var_3 = (self.heartx < 4)
    else
        _temp_local_var_3 = 0
    if _temp_local_var_3
        self.heartx = (self.heartx + 1)
    if down_p()
        _temp_local_var_4 = (self.hearty < 4)
    else
        _temp_local_var_4 = 0
    if _temp_local_var_4
        self.hearty = (self.hearty + 1)
    if up_p()
        _temp_local_var_5 = (self.hearty > -4)
    else
        _temp_local_var_5 = 0
    if _temp_local_var_5
        self.hearty = (self.hearty - 1)
}
if (self.heartwagon == 2)
{
    self.moved = 0
    if left_p()
        self.moved = 1
    if right_p()
        self.moved = 1
    if down_p()
        self.moved = 1
    if up_p()
        self.moved = 1
    if (self.moved == 1)
        _temp_local_var_6 = (self.shaketimer <= 0)
    else
        _temp_local_var_6 = 0
    if _temp_local_var_6
    {
        self.shaketimer = 24
        self.cageamt = 4
        snd_play(snd_noise)
    }
    if (self.cageamt > 0)
        self.cageamt = (self.cageamt - 0.5)
    else
        self.cageamt = 0
    self.shaketimer = (self.shaketimer - 1)
}
