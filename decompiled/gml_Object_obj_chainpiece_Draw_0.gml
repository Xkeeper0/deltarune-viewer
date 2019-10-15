self.siner = (self.siner + 0.5)
draw_sprite_ext(self.sprite_index, self.image_index, (self.x + sin((self.siner / 4))), (self.y + cos((self.siner / 4))), (self.image_xscale + (sin((self.siner / 8)) * 0.2)), (self.image_yscale + (sin((self.siner / 8)) * 0.2)), self.image_angle, self.image_blend, self.image_alpha)
