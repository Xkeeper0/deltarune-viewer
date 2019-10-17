self.timer += 1
self.image_index = ((self.timer / 30) * 4)
if (self.timer >= 30)
{
    self.image_index = 3
    self.image_alpha -= 0.1
}
if (self.timer >= 40)
    instance_destroy()
