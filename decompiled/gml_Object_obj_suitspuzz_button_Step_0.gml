if (self.press_timer <= 0)
    self.image_index = self.d_index
else
    self.image_index = (self.d_index + 1)
self.press_timer = (self.press_timer - 1)
