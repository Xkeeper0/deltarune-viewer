if (self.facealpha < 1)
    self.facealpha = (self.facealpha + 0.2)
draw_sprite_ext(self.sprite_index, self.image_index, self.x, self.y, self.image_xscale, self.image_yscale, self.image_angle, self.image_blend, self.facealpha)
draw_set_alpha(self.facealpha)
if (self.type == 0)
    _temp_local_var_1 = 1
else
    _temp_local_var_1 = (self.type == 3)
if _temp_local_var_1
{
    scr_84_set_draw_font("main"@1558)
    draw_set_color(self.mycolor)
    draw_text((self.x + 70), (self.y + 10), string_hash_to_newline(self.mystring))
}
if (self.type == 1)
{
    if (self.active == 1)
        _temp_local_var_2 = (self.getrid == 0)
    else
        _temp_local_var_2 = 0
}
else
    _temp_local_var_2 = 0
if _temp_local_var_2
{
    scr_84_set_draw_font("main"@1558)
    draw_set_color(self.mycolor)
    draw_text((self.x + 70), (self.y + 15), string_hash_to_newline(self.mystring))
    self.finished = 1
}
if (self.type == 2)
    _temp_local_var_3 = 1
else
    _temp_local_var_3 = (self.type == 4)
if _temp_local_var_3
{
    if (self.active == 1)
    {
        scr_84_set_draw_font("main"@1558)
        draw_set_color(self.mycolor)
        if (self.finished == 0)
        {
            self.partstring = (self.partstring + string_char_at(self.mystring, self.part))
            self.part = (self.part + 1)
            if (self.part >= (string_length(self.mystring) + 1))
                self.finished = 1
        }
        draw_text(((self.x + 70) + random(1)), ((self.y + 15) + random(1)), string_hash_to_newline(self.partstring))
    }
}
if instance_exists(self.writergod)
{
    if (self.finished == 1)
        _temp_local_var_4 = (self.getrid == 0)
    else
        _temp_local_var_4 = 0
    if _temp_local_var_4
    {
        with(self.writergod)
        {
            if (self.halt == 0)
                self.halt = 1
        }
        self.finished = 2
    }
}
else
    instance_destroy()
if (self.getrid == 1)
{
    self.direction = (variable)(- self.nowdir)
    self.speed = (self.speed + 2)
    if (self.type == 3)
        _temp_local_var_5 = 1
    else
        _temp_local_var_5 = (self.type == 4)
    if _temp_local_var_5
        instance_destroy()
}
draw_set_alpha(1)
