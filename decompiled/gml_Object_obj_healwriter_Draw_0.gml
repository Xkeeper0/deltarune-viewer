scr_84_set_draw_font("mainbig")
draw_set_color(0x0000FF00)
draw_set_alpha(self.image_alpha)
draw_text(self.x, self.y, string_hash_to_newline(("+" + string(self.healamt))))
draw_set_alpha(1)
self.image_alpha -= 0.1
if (self.image_alpha < 0)
    instance_destroy()
