self.bul = instance_create(self.x, self.y, obj_regularbullet)
if instance_exists(self.bul)
{
    self.bul.sprite_index = spr_clubsball_b
    self.bul.direction = self.direction
    self.bul.speed = (self.speed - 6)
    self.bul.image_angle = self.image_angle
    self.bul.damage = self.damage
    self.bul.target = self.target
    self.bul.grazepoints = 3
    self.bul.timepoints = 2
}
self.bul = instance_create(self.x, self.y, obj_regularbullet)
if instance_exists(self.bul)
{
    self.bul.sprite_index = spr_clubsball_c
    self.bul.direction = (self.direction - 25)
    self.bul.speed = (self.speed - 8)
    self.bul.image_angle = self.image_angle
    self.bul.damage = self.damage
    self.bul.target = self.target
    self.bul.grazepoints = 3
    self.bul.timepoints = 2
}
self.bul = instance_create(self.x, self.y, obj_regularbullet)
if instance_exists(self.bul)
{
    self.bul.sprite_index = spr_clubsball_a
    self.bul.direction = (self.direction + 25)
    self.bul.speed = (self.speed - 8)
    self.bul.image_angle = self.image_angle
    self.bul.damage = self.damage
    self.bul.target = self.target
    self.bul.grazepoints = 3
    self.bul.timepoints = 2
}
instance_destroy()
