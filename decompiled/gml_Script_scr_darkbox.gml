self.cur_jewel += 1
self.textbox_width = ((self.argument2 - self.argument0) - 63)
if (self.textbox_width < 0)
    self.textbox_width = 0
self.textbox_height = ((self.argument3 - self.argument1) - 63)
if (self.textbox_height < 0)
    self.textbox_height = 0
if (self.textbox_width > 0)
{
    draw_sprite_stretched(spr_textbox_top, 0, (self.argument0 + 32), self.argument1, self.textbox_width, 32)
    draw_sprite_ext(spr_textbox_top, 0, (self.argument0 + 32), (self.argument3 + 1), self.textbox_width, -2, 0, 0x00FFFFFF, 1)
}
if (self.textbox_height > 0)
{
    draw_sprite_ext(spr_textbox_left, 0, (self.argument2 + 1), (self.argument1 + 32), -2, self.textbox_height, 0, 0x00FFFFFF, 1)
    draw_sprite_ext(spr_textbox_left, 0, self.argument0, (self.argument1 + 32), 2, self.textbox_height, 0, 0x00FFFFFF, 1)
}
if (global.flag[8] == 0)
{
    draw_sprite_ext(spr_textbox_topleft, (self.cur_jewel / 10), self.argument0, self.argument1, 2, 2, 0, 0x00FFFFFF, 1)
    draw_sprite_ext(spr_textbox_topleft, (self.cur_jewel / 10), (self.argument2 + 1), self.argument1, -2, 2, 0, 0x00FFFFFF, 1)
    draw_sprite_ext(spr_textbox_topleft, (self.cur_jewel / 10), self.argument0, (self.argument3 + 1), 2, -2, 0, 0x00FFFFFF, 1)
    draw_sprite_ext(spr_textbox_topleft, (self.cur_jewel / 10), (self.argument2 + 1), (self.argument3 + 1), -2, -2, 0, 0x00FFFFFF, 1)
}
else
{
    draw_sprite_ext(spr_textbox_topleft, 0, self.argument0, self.argument1, 2, 2, 0, 0x00FFFFFF, 1)
    draw_sprite_ext(spr_textbox_topleft, 0, (self.argument2 + 1), self.argument1, -2, 2, 0, 0x00FFFFFF, 1)
    draw_sprite_ext(spr_textbox_topleft, 0, self.argument0, (self.argument3 + 1), 2, -2, 0, 0x00FFFFFF, 1)
    draw_sprite_ext(spr_textbox_topleft, 0, (self.argument2 + 1), (self.argument3 + 1), -2, -2, 0, 0x00FFFFFF, 1)
}
