self.image_blend = obj_darkfountain.colcol
self.siner = obj_darkfountain.siner
draw_sprite_ext(self.sprite_index, self.image_index, self.x, (self.y - 4), 2, 2, 0, self.image_blend, 1)
draw_sprite_ext(self.sussprite, self.susindex, self.susx, (self.susy - 4), 2, 2, 0, self.image_blend, 1)
self.image_blend = 0x000000
draw_sprite_ext(self.sprite_index, self.image_index, self.x, ((self.y + (self.sprite_height * 4)) - 8), 2, -6, 0, self.image_blend, 1)
draw_sprite_ext(self.sussprite, self.susindex, self.susx, ((self.susy + 368) - 8), 2, -6, 0, self.image_blend, 1)
draw_self()
draw_sprite_ext(self.sussprite, self.susindex, self.susx, self.susy, 2, 2, 0, self.image_blend, 1)
