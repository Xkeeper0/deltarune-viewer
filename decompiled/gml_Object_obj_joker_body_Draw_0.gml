self.floatsiner = (self.floatsiner + self.floatsinerspeed)
self.fly = ((sin((self.floatsiner / 8)) * 3) * ((self.floatsinerspeed * 2) - 1))
self.flyx = 0
if (self.dancelv >= 1)
    self.flyx = ((cos((self.floatsiner / 8)) * 3) * ((self.floatsinerspeed * 2) - 1))
if (self.dancelv == 4)
{
    self.flyx = 0
    self.fly = 0
}
self.offx = (self.x + 20)
self.offy = (self.y + 18)
if (self.condition == 0)
{
    if (self.fade == 0)
        self.fade_a = 1
    if (self.fade == 1)
        self.fade_a = abs(sin((self.floatsiner / 13)))
    if (self.dancelv == 0)
        draw_sprite_ext(spr_joker_main, 0, (self.offx + self.flyx), (self.offy + self.fly), 2, 2, 0, 0xFFFFFF, self.fade_a)
    if (self.dancelv == 1)
        draw_sprite_ext(spr_joker_dance, (self.floatsiner / 3), (self.offx + self.flyx), (self.offy + self.fly), 2, 2, 0, 0xFFFFFF, 1)
    if (self.dancelv == 2)
        draw_sprite_ext(spr_joker_tired, 0, (self.offx + self.flyx), (self.offy + self.fly), 2, 2, 0, 0xFFFFFF, 1)
    if (self.dancelv == 3)
    {
        self.dancesiner = (self.dancesiner + 1)
        self.i = 0
        while(true)
        {
            if (self.i < 7)
            {
                if (self.i >= 1)
                {
                    self.shadowx[self.i] = (self.shadowx[self.i] + ((sin((self.i + (self.floatsiner / 5))) * 8) * self.sfactor[self.i]))
                    self.shadowy[self.i] = (self.shadowy[self.i] + ((cos((self.i + (self.floatsiner / 5))) * 4) * self.sfactor[self.i]))
                }
                self.dalpha[self.i] = sin((self.i + (self.dancesiner / 9)))
                if (self.dalpha[self.i] < 0)
                    _temp_local_var_1 = (self.i >= 1)
                else
                    _temp_local_var_1 = 0
                if _temp_local_var_1
                {
                    self.shadowx[self.i] = (60 - random(120))
                    self.shadowy[self.i] = (60 - random(120))
                    self.sfactor[self.i] = (1.5 - random(3))
                }
                draw_sprite_ext(spr_joker_dance, ((self.dancesiner / 2) + (self.i / 4)), (self.x + self.shadowx[self.i]), (self.y + self.shadowy[self.i]), 2, 2, 0, self.image_blend, self.dalpha[self.i])
                self.i = (self.i + 1)
                continue
            }
            break
        }
    }
    if (self.dancelv == 4)
        draw_sprite_ext(spr_joker_teleport, 1, (self.offx + self.flyx), (self.offy + self.fly), 2, 2, 0, 0xFFFFFF, 1)
}
if (self.condition == 1)
{
    if (self.maxdist >= 150)
        self.maxdist = 150
    self.sinadd = (0.8 + (self.maxdist / 50))
    if (self.sinadd < 0.8)
        self.sinadd = 0.8
    if (self.sinadd > 2)
        self.sinadd = 2
    self.siner = (self.siner + self.sinadd)
    self.sinx = (sin((self.siner / 4)) * self.maxdist)
    self.siny = ((variable)(- abs(sin((self.siner / 4)))) * (self.maxdist * 0.7))
    self.ji = 0
    if (self.sinx > (self.maxdist / 2))
        _temp_local_var_3 = (self.maxdist > 15)
    else
        _temp_local_var_3 = 0
    if _temp_local_var_3
        self.ji = 1
    if (self.sinx < ((variable)(- self.maxdist) / 2))
        _temp_local_var_4 = (self.maxdist > 15)
    else
        _temp_local_var_4 = 0
    if _temp_local_var_4
        self.ji = 2
    if (self.maxdist < 4)
        self.ji = 3
    self.i = 0
    while(true)
    {
        if (self.i < (self.maxchain - 1))
        {
            draw_sprite_ext(spr_jokerchain, self.ji, ((self.offx + (self.sinx * (self.i / self.maxchain))) - 2), (((self.offy + 6) + ((self.siny - 32) * (self.i / self.maxchain))) + self.fly), 2, 2, 0, 0xFFFFFF, 1)
            self.i = (self.i + 1)
            continue
        }
        break
    }
    draw_sprite_ext(spr_jokerbody, 0, (self.offx - 42), ((self.offy + self.fly) - 2), 2, 2, 0, 0xFFFFFF, 1)
    draw_sprite_ext(spr_jokerhead, self.ji, ((self.offx + self.sinx) - 2), (((self.offy + self.siny) + self.fly) - 14), 2, 2, 0, 0xFFFFFF, 1)
    self.maxdist = (self.maxdist - 1)
    if (self.maxdist <= 0)
    {
        self.maxdist = 0
        self.condition = 0
    }
}
if (self.condition == 2)
{
    with(obj_heroparent)
    {
        self.image_alpha = (self.image_alpha - 0.25)
    }
    if (self.sndcon == 0)
    {
        snd_play(snd_spearappear)
        self.sndcon = 1
    }
    draw_sprite_ext(spr_joker_main, 0, self.offx, (self.offy + self.fly), self.size, 2, 0, 0xFFFFFF, 1)
    self.size = (self.size - 0.5)
    if (self.size <= 0)
    {
        with(obj_heroparent)
        {
            self.image_alpha = 0
        }
        self.sndcon = 0
        self.size = 2
        self.condition = 4
    }
}
if (self.condition == 3)
{
    with(obj_heroparent)
    {
        self.image_alpha = (self.image_alpha + 0.25)
    }
    if (self.sndcon == 0)
    {
        snd_play(snd_spearappear)
        self.sndcon = 1
    }
    draw_sprite_ext(spr_joker_main, 0, self.offx, (self.offy + self.fly), self.size, 2, 0, 0xFFFFFF, 1)
    self.size = (self.size + 0.5)
    if (self.size >= 2)
    {
        with(obj_heroparent)
        {
            self.image_alpha = 1
        }
        self.size = 2
        self.condition = 0
        self.sndcon = 0
    }
}
if (self.condition == 4)
{
    if (global.turntimer <= 10)
    {
        self.timer = 0
        self.condition = 3
        self.size = 0
    }
}
if (self.condition == 5)
{
    self.timer = (self.timer + 1)
    if (self.timer == 1)
    {
        self.spintimer = 0
        self.s_xscale = 2
        self.s_yscale = 2
        self.s_sprite = spr_joker_teleport
        self.s_y = 0
        self.s_vspeed = 0
        self.s_alpha = 1
        snd_play(scr_84_get_sound("snd_joker_metamorphosis"@3397))
    }
    if (self.timer >= 1)
        _temp_local_var_5 = (self.timer <= 3)
    else
        _temp_local_var_5 = 0
    if _temp_local_var_5
    {
        self.s_xscale = (self.s_xscale * 1.3)
        self.s_yscale = (self.s_yscale * 0.7)
    }
    if (self.timer >= 5)
        _temp_local_var_6 = (self.timer <= 15)
    else
        _temp_local_var_6 = 0
    if _temp_local_var_6
    {
        self.s_xscale = (self.s_xscale * 0.7)
        self.s_yscale = (self.s_yscale * 1.3)
    }
    if (self.timer >= 15)
        _temp_local_var_7 = (self.timer <= 30)
    else
        _temp_local_var_7 = 0
    if _temp_local_var_7
    {
        self.spintimer = (self.spintimer + 1)
        self.s_xscale = (sin((self.spintimer / 3)) * 2)
        self.s_sprite = spr_joker_scythebody
        self.s_yscale = (self.s_yscale * 0.7)
        if (self.s_xscale >= 2)
            self.s_xscale = 2
        if (self.s_yscale <= 2)
            self.s_yscale = 2
    }
    if (self.timer >= 30)
        _temp_local_var_8 = (self.timer < 41)
    else
        _temp_local_var_8 = 0
    if _temp_local_var_8
    {
        self.spintimer = (self.spintimer + 1)
        self.s_xscale = (sin((self.spintimer / 3)) * 2)
        self.s_vspeed = (self.s_vspeed - 3)
        self.s_y = (self.s_y + self.s_vspeed)
        self.s_alpha = (self.s_alpha - 0.1)
    }
    if (self.timer >= 41)
    {
        if instance_exists(obj_battlecontroller)
        {
            if (global.turntimer > 10)
            {
                self.timer = 0
                self.condition = 4
            }
        }
    }
    draw_sprite_ext(self.s_sprite, 0, self.offx, (self.offy + self.s_y), self.s_xscale, self.s_yscale, 0, self.image_blend, self.s_alpha)
}
if (self.condition == 0)
    _temp_local_var_9 = 1
else
    _temp_local_var_9 = (self.condition == 1)
if _temp_local_var_9
{
    if (self.dancelv <= 2)
    {
        draw_set_color(0x000000)
        draw_rectangle(((((self.x + (self.sprite_width / 2)) - 20) - self.fly) + self.flyx), ((self.y + 80) - (self.fly / 2)), ((((self.x + (self.sprite_width / 2)) + 30) + self.fly) + self.flyx), ((self.y + 85) + (self.fly / 2)), 0)
    }
}
if (self.debug == 1)
{
    if keyboard_check_pressed('(')
    {
        self.condition = (self.condition + 1)
        self.siner = 0
        if (self.condition == 1)
            self.maxdist = 40
        if (self.condition == 2)
            self.size = 2
        if (self.condition == 3)
            self.size = 0
    }
    if keyboard_check_pressed('&')
    {
        self.condition = (self.condition - 1)
        self.siner = 0
        if (self.condition == 1)
            self.maxdist = 50
        if (self.condition == 2)
            self.size = 2
        if (self.condition == 3)
            self.size = 0
    }
    if (self.condition < 0)
        self.condition = 0
    if (self.condition > 4)
        self.condition = 0
    if keyboard_check_pressed(' ')
        self.maxdist = (self.maxdist + 20)
    draw_set_color(0x0000FF)
    draw_rectangle(((self.x + (self.sprite_width / 2)) - 1), ((self.y + (self.sprite_height / 2)) - 1), ((self.x + (self.sprite_width / 2)) + 1), ((self.y + (self.sprite_height / 2)) + 1), 0)
}
