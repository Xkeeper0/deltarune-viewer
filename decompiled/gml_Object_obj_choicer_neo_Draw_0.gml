if (self.dar == 1)
    scr_84_set_draw_font("main"@1558)
else
    scr_84_set_draw_font("mainbig"@1561)
self.textx = self.xx
self.texty = self.yy
self.i = 0
while(true)
{
    if (self.i < (self.choicetotal + 1))
    {
        draw_set_color(0xFFFFFF)
        if (self.mychoice == self.i)
            draw_set_color(0x00FFFF)
        self.textx = self.textposx[self.i]
        self.texty = self.textposy[self.i]
        if (self.candraw == 1)
            draw_text(self.textx, self.texty, string_hash_to_newline(global.choicemsg[self.i]))
        self.i = (self.i + 1)
        continue
    }
    break
}
if (global.lang == "ja"@1566)
{
    if (self.candraw == 0)
    {
        if (self.choicetotal == 2)
            _temp_local_var_1 = (self.mychoice == -1)
        else
            _temp_local_var_1 = 0
    }
    else
        _temp_local_var_1 = 0
    if _temp_local_var_1
        self.hy = (self.hy + (20 * self.dar))
}
self.candraw = 1
draw_sprite_ext(spr_heartsmall, 0, self.hx, self.hy, self.image_xscale, self.image_yscale, 0, 0xFFFFFF, 1)
