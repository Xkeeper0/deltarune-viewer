draw_sprite(spr_tplogo, 0, (self.x - 30), (self.y + 30))
draw_sprite(spr_tensionbar, 1, self.x, self.y)
draw_set_color(0xFFFFFF)
scr_84_set_draw_font("mainbig"@1561)
self.flashsiner = (self.flashsiner + 1)
self.tamt = floor(((self.apparent / global.maxtension) * 100))
self.maxed = 0
if (self.tamt < 100)
{
    draw_text((self.x - 30), (self.y + 70), string_hash_to_newline(floor(((self.apparent / global.maxtension) * 100))))
    draw_text((self.x - 25), (self.y + 95), string_hash_to_newline("%"@3588))
}
if (self.tamt >= 100)
{
    self.maxed = 1
    draw_set_color(0x00FFFF)
    draw_text((self.x - 28), (self.y + 70), string_hash_to_newline("M"@2540))
    draw_text((self.x - 24), (self.y + 90), string_hash_to_newline("A"@366))
    draw_text((self.x - 20), (self.y + 110), string_hash_to_newline("X"@2551))
}
if (abs((self.apparent - global.tension)) < 20)
    self.apparent = global.tension
if (self.apparent < global.tension)
    self.apparent = (self.apparent + 20)
if (self.apparent > global.tension)
    self.apparent = (self.apparent - 20)
if (self.apparent != self.current)
{
    self.changetimer = (self.changetimer + 1)
    if (self.changetimer > 15)
    {
        if ((self.apparent - self.current) > 0)
            self.current = (self.current + 2)
        if ((self.apparent - self.current) > 10)
            self.current = (self.current + 2)
        if ((self.apparent - self.current) > 25)
            self.current = (self.current + 3)
        if ((self.apparent - self.current) > 50)
            self.current = (self.current + 4)
        if ((self.apparent - self.current) > 100)
            self.current = (self.current + 5)
        if ((self.apparent - self.current) < 0)
            self.current = (self.current - 2)
        if ((self.apparent - self.current) < -10)
            self.current = (self.current - 2)
        if ((self.apparent - self.current) < -25)
            self.current = (self.current - 3)
        if ((self.apparent - self.current) < -50)
            self.current = (self.current - 4)
        if ((self.apparent - self.current) < -100)
            self.current = (self.current - 5)
        if (abs((self.apparent - self.current)) < 3)
            self.current = self.apparent
    }
}
if (self.current > 0)
{
    if (self.apparent < self.current)
    {
        draw_set_color(0x0000FF)
        draw_rectangle((self.x + 3), ((self.y + self.sprite_height) - 1), ((self.x + self.sprite_width) - 1), ((self.y + self.sprite_height) - ((self.current / global.maxtension) * self.sprite_height)), 0)
        draw_set_color(0x40A0FF)
        draw_rectangle((self.x + 3), ((self.y + self.sprite_height) - 1), ((self.x + self.sprite_width) - 1), ((self.y + self.sprite_height) - ((self.apparent / global.maxtension) * self.sprite_height)), 0)
    }
    if (self.apparent > self.current)
    {
        draw_set_color(0xFFFFFF)
        draw_rectangle((self.x + 3), ((self.y + self.sprite_height) - 1), ((self.x + self.sprite_width) - 1), ((self.y + self.sprite_height) - ((self.apparent / global.maxtension) * self.sprite_height)), 0)
        draw_set_color(0x40A0FF)
        if (self.maxed == 1)
            draw_set_color(merge_color(0x00FFFF, 0x40A0FF, 0.5))
        draw_rectangle((self.x + 3), ((self.y + self.sprite_height) - 1), ((self.x + self.sprite_width) - 1), ((self.y + self.sprite_height) - ((self.current / global.maxtension) * self.sprite_height)), 0)
    }
    if (self.apparent == self.current)
    {
        draw_set_color(0x40A0FF)
        if (self.maxed == 1)
            draw_set_color(merge_color(0x00FFFF, 0x40A0FF, 0.5))
        draw_rectangle((self.x + 3), ((self.y + self.sprite_height) - 1), ((self.x + self.sprite_width) - 1), ((self.y + self.sprite_height) - ((self.current / global.maxtension) * self.sprite_height)), 0)
    }
}
if (global.tensionselect > 0)
{
    self.tsiner = (self.tsiner + 1)
    draw_set_color(0xFFFFFF)
    draw_set_alpha((abs((sin((self.tsiner / 8)) * 0.5)) + 0.2))
    self.theight = ((self.y + self.sprite_height) - ((self.current / global.maxtension) * self.sprite_height))
    self.theight2 = (self.theight + ((global.tensionselect / global.maxtension) * self.sprite_height))
    if (self.theight2 > ((self.y + self.sprite_height) - 1))
    {
        self.theight2 = ((self.y + self.sprite_height) - 1)
        draw_set_color(0x404040)
        draw_set_alpha(0.7)
    }
    draw_rectangle((self.x + 3), self.theight2, ((self.x + self.sprite_width) - 1), self.theight, 0)
    draw_set_alpha(1)
}
if (self.apparent > 20)
    _temp_local_var_1 = (self.apparent < global.maxtension)
else
    _temp_local_var_1 = 0
if _temp_local_var_1
    draw_sprite(spr_tensionmarker, 0, (self.x + 3), ((self.y + self.sprite_height) - ((self.current / global.maxtension) * self.sprite_height)))
draw_sprite(spr_tensionbar, 0, self.x, self.y)
