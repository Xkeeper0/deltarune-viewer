self.image_alpha += self.fadespeed
draw_sprite_ext(self.sprite_index, self.image_index, self.x, self.y, self.length, self.height, 0, self.image_blend, self.image_alpha)
if (self.image_alpha <= 0)
    instance_destroy()
