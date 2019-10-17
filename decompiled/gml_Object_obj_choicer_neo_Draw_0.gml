if (self.dar == 1)
    scr_84_set_draw_font("main")
else
    scr_84_set_draw_font("mainbig")
self.textx = self.xx
self.texty = self.yy
for (self.i = 0; self.i < (self.choicetotal + 1); self.i += 1)
{
    draw_set_color(0x00FFFFFF)
    if (self.mychoice == self.i)
        draw_set_color(0x0000FFFF)
    self.textx = self.textposx[self.i]
    self.texty = self.textposy[self.i]
    if (self.candraw == 1)
        draw_text(self.textx, self.texty, string_hash_to_newline(global.choicemsg[self.i]))
}
if (global.lang == "ja")
{
    if ((self.candraw == 0) && ((self.choicetotal == 2) && (self.mychoice == -1)))
        self.hy += (20 * self.dar)
}
self.candraw = 1
draw_sprite_ext(spr_heartsmall, 0, self.hx, self.hy, self.image_xscale, self.image_yscale, 0, 0x00FFFFFF, 1)
