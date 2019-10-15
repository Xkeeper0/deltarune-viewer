self.alarm[0] = 1
self.y = (self.y + 10)
self.image_angle = (random(10) - random(10))
self.after_x = ((self.x - 30) / 260)
if (self.after_x > 1)
    self.after_x = 1
self.image_blend = merge_color(0xFFFFFF, 0x000000, self.after_x)
