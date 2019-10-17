self.timer += 1
self.image_index = (1 + ((self.timer * 1.5) / 55))
if (self.timer >= 55)
    instance_destroy()
self.x += (sin((self.timer / 5)) * 0.4)
self.y += cos((self.timer / 3.5))
self.x += 1.6
self.y -= 0.8
