draw_sprite_ext(spr_jokerscythe_big, 0, self.x, self.y, 2, 2, self.image_angle, 0x00FFFFFF, (((1 - self.image_alpha) + 0.2) + (sin((self.siner / 10)) / 2.5)))
draw_self()
draw_set_color(0x000000FF)
draw_rectangle((self.x - 1), (self.y - 1), (self.x + 1), (self.y + 1), 0)
