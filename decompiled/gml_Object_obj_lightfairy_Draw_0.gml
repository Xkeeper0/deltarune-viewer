self.image_alpha = (sin((self.siner / 26)) * self.factor)
draw_sprite_ext(self.sprite_index, (self.siner / 10), self.x, self.y, (3 + sin((self.siner / 12))), (3 + sin((self.siner / 12))), 0, 0x00FFFFFF, self.image_alpha)
