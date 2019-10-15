draw_background_ext(bg_cc_elevator, 0, 0, 2, 2, 0, self.cur_bg_c, 1)
if (self.rectcon >= 1)
{
    draw_set_color(merge_color(self.cur_bg_c, 0x000000, (1 - self.rect_alpha)))
    self.i = 0
    while(true)
    {
        if (self.i < 8)
        {
            draw_rectangle(-10, ((-100 + self.recty) + (self.i * self.rectspacing)), 180, ((-60 + self.recty) + (self.i * self.rectspacing)), 0)
            draw_rectangle(640, ((-100 + self.recty) + (self.i * self.rectspacing)), 460, ((-60 + self.recty) + (self.i * self.rectspacing)), 0)
            self.i = (self.i + 1)
            continue
        }
        break
    }
}
if (self.doorx > 0)
{
    draw_sprite_ext(spr_elevator_frontdoor, 0, (302 - self.doorx), 352, 2, 2, 0, self.cur_bg_c, 1)
    draw_sprite_ext(spr_elevator_frontdoor, 1, (318 + self.doorx), 352, 2, 2, 0, self.cur_bg_c, 1)
    draw_set_color(0x000000)
    draw_rectangle((318 - self.doorx), 352, (318 + self.doorx), 500, 0)
}
