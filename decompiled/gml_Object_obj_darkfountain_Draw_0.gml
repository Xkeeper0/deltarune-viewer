self.siner += 1
self.hscroll += 1
if (self.hscroll > 240)
    self.hscroll -= 240
if (self.adjust == 0)
{
    self.colcol = make_color_hsv((self.siner / 4), (160 + (sin((self.siner / 32)) * 60)), 255)
    __background_set_colour(make_color_hsv((self.siner / 4), 255, ((sin((self.siner / 16)) * 40) + 60)))
}
if (self.adjust == 1)
{
    self.colcol = merge_color(self.colcol, 0x00FFFFFF, 0.06)
    __background_set_colour(merge_color(__background_get_colour(), 0x00000000, 0.06))
}
if (self.adjust == 2)
{
    if (self.slowdown < 1)
        self.slowdown += 0.02
    self.siner -= self.slowdown
    self.bgsiner -= (self.slowdown / 16)
    __background_set_colour(merge_color(__background_get_colour(), 0x00FFFFFF, 0.03))
}
self.bgsiner += 0.0625
if (self.bgsiner > 7)
    self.bgsiner -= 7
self.bg = bg_fountain1
draw_background_tiled_ext(self.bg, (0 - self.siner), (0 - self.siner), 2, 2, self.colcol, (0.7 * self.eyebody))
draw_background_tiled_ext(self.bg, (-240 + self.hscroll), (0 + self.siner), 2, 2, self.colcol, (0.3 * self.eyebody))
draw_set_color(0x00000000)
draw_rectangle(0, 0, ((self.room_width / 2) - (self.sprite_width / 2)), 280, 0)
draw_rectangle(((self.room_width / 2) + (self.sprite_width / 2)), 0, 999, 280, 0)
draw_sprite_ext(self.sprite_index, 0, ((self.room_width / 2) - (self.sprite_width / 2)), (0 - ((self.bgsiner * 280) / 7)), 2, 2, 0, self.colcol, 1)
draw_sprite_ext(self.sprite_index, 0, ((self.room_width / 2) - (self.sprite_width / 2)), (280 - ((self.bgsiner * 280) / 7)), 2, 2, 0, self.colcol, 1)
draw_sprite_ext(self.sprite_index, 0, (((self.room_width / 2) - (self.sprite_width / 2)) + (sin((self.siner / 16)) * 12)), (0 - ((self.bgsiner * 280) / 7)), 2, 2, 0, self.colcol, 0.5)
draw_sprite_ext(self.sprite_index, 0, (((self.room_width / 2) - (self.sprite_width / 2)) + (sin((self.siner / 16)) * 12)), (280 - ((self.bgsiner * 280) / 7)), 2, 2, 0, self.colcol, 0.5)
draw_sprite_ext(self.sprite_index, 0, (((self.room_width / 2) - (self.sprite_width / 2)) - (sin((self.siner / 16)) * 12)), (0 - ((self.bgsiner * 280) / 7)), 2, 2, 0, self.colcol, 0.5)
draw_sprite_ext(self.sprite_index, 0, (((self.room_width / 2) - (self.sprite_width / 2)) - (sin((self.siner / 16)) * 12)), (280 - ((self.bgsiner * 280) / 7)), 2, 2, 0, self.colcol, 0.5)
draw_sprite_ext(spr_fountainbottom, 0, ((self.room_width / 2) - (self.sprite_width / 2)), (-8 + (sin((self.siner / 16)) * 8)), 2, 2, 0, self.colcol, 0.3)
draw_sprite_ext(spr_fountainbottom, 0, ((self.room_width / 2) - (self.sprite_width / 2)), (-4 + (sin((self.siner / 16)) * 4)), 2, 2, 0, self.colcol, 0.5)
draw_sprite_ext(spr_fountainbottom, 0, ((self.room_width / 2) - (self.sprite_width / 2)), 0, 2, 2, 0, self.colcol, 1)
draw_set_color(__background_get_colour())
draw_rectangle(0, 280, 640, 480, 0)
