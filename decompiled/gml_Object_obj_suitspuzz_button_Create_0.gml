self.image_xscale = 2
self.image_yscale = 2
self.press_timer = 0
self.boss = 0
self.image_speed = 0
self.type = 0
self.d_index = 0
if (self.id == instance_find(self.object_index, 0))
{
    self.boss = 1
    self.type = 0
    self.image_index = 0
    self.d_index = self.image_index
}
if (self.id == instance_find(self.object_index, 1))
{
    self.type = 1
    self.image_index = 2
    self.d_index = self.image_index
}
if (self.id == instance_find(self.object_index, 2))
{
    self.type = 2
    self.image_index = 4
    self.d_index = self.image_index
}
