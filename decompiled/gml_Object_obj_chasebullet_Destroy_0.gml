if (self.active == 1)
{
    self.af = instance_create(self.x, self.y, obj_afterimage)
    self.af.sprite_index = self.sprite_index
    self.af.depth = self.depth
    self.af.image_angle = self.futuredir
}
