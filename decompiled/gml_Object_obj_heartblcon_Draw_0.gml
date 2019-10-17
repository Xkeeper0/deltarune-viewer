self.siner += 1
draw_sprite(spr_battleblcon, 0, self.x, self.y)
draw_sprite(self.sprite_index, self.image_index, ((self.x + 15) + round(sin((self.siner / 8)))), ((self.y + 15) + round(cos((self.siner / 8)))))
