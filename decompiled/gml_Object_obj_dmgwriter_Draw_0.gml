if (self.delaytimer < self.delay)
{
    with(obj_dmgwriter)
    {
        self.killtimer = 0
    }
}
self.delaytimer = (self.delaytimer + 1)
if (self.delaytimer == self.delay)
{
    self.vspeed = (-5 - random(2))
    self.hspeed = 10
    self.vstart = self.vspeed
    self.flip = 90
}
if (self.delaytimer >= self.delay)
{
    draw_set_color(0xFFFFFF)
    if (self.type == 0)
        draw_set_color(self.lightb)
    if (self.type == 1)
        draw_set_color(self.lightf)
    if (self.type == 2)
        draw_set_color(self.lightg)
    if (self.type == 3)
        draw_set_color(0x00FF00)
    if (self.type == 4)
        draw_set_color(0x0000FF)
    self.message = self.specialmessage
    if (self.damage == 0)
        self.message = 1
    if (self.type == 4)
        self.message = 2
    draw_set_font(global.damagefont)
    if (self.hspeed > 0)
        self.hspeed = (self.hspeed - 1)
    if (self.hspeed < 0)
        self.hspeed = (self.hspeed + 1)
    if (abs(self.hspeed) < 1)
        self.hspeed = 0
    if (self.message == 0)
    {
        draw_set_alpha((1 - self.kill))
        draw_set_halign(fa_right)
        if (self.spec == 0)
            draw_text_transformed((self.x + 30), self.y, string_hash_to_newline(string(self.damage)), (2 - self.stretch), (self.stretch + self.kill), 0)
        if (self.spec == 1)
            draw_text_transformed((self.x + 30), self.y, string_hash_to_newline(string(self.damage)), (2 - self.stretch), (self.stretch + self.kill), 90)
        draw_set_halign(fa_left)
        draw_set_alpha(1)
    }
    else
    {
        if (self.message == 1)
            draw_sprite_ext(spr_battlemsg, 0, (self.x + 30), self.y, (2 - self.stretch), (self.stretch + self.kill), 0, draw_get_color(), (1 - self.kill))
        if (self.message == 2)
            draw_sprite_ext(spr_battlemsg, 1, (self.x + 30), self.y, (2 - self.stretch), (self.stretch + self.kill), 0, 0x0000FF, (1 - self.kill))
        if (self.message == 3)
            draw_sprite_ext(spr_battlemsg, 2, (self.x + 30), self.y, (2 - self.stretch), (self.stretch + self.kill), 0, 0x00FF00, (1 - self.kill))
        if (self.message == 4)
            draw_sprite_ext(spr_battlemsg, 3, (self.x + 30), self.y, (2 - self.stretch), (self.stretch + self.kill), 0, 0x00FF00, (1 - self.kill))
    }
    if (self.bounces < 2)
        self.vspeed = (self.vspeed + 1)
    if (self.y > self.ystart)
    {
        if (self.bounces < 2)
            _temp_local_var_1 = (self.killactive == 0)
        else
            _temp_local_var_1 = 0
    }
    else
        _temp_local_var_1 = 0
    if _temp_local_var_1
    {
        self.y = self.ystart
        self.vspeed = (self.vstart / 2)
        self.bounces = (self.bounces + 1)
    }
    if (self.bounces >= 2)
        _temp_local_var_2 = (self.killactive == 0)
    else
        _temp_local_var_2 = 0
    if _temp_local_var_2
    {
        self.vspeed = 0
        self.y = self.ystart
    }
    if (self.stretchgo == 1)
        self.stretch = (self.stretch + 0.4)
    if (self.stretch >= 1.2)
    {
        self.stretch = 1
        self.stretchgo = 0
    }
    self.killtimer = (self.killtimer + 1)
    if (self.killtimer > 35)
        self.killactive = 1
    if (self.killactive == 1)
    {
        self.kill = (self.kill + 0.08)
        self.y = (self.y - 4)
    }
    if (self.kill > 1)
        instance_destroy()
}
