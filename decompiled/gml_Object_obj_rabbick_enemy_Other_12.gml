self.dustparticle = instance_create(((self.x + random((self.sprite_width - 10))) + 10), ((self.y + 20) + random((self.sprite_height - 20))), obj_animation)
with(self.dustparticle)
{
    self.sprite_index = spr_rabbick_dustorb
    self.speed = 6
    self.image_index = 1
    self.direction = (10 + random(70))
    self.image_speed = 0.5
    self.image_xscale = 2
    self.image_yscale = 2
    self.gravity_direction = 0
    self.gravity = 0.7
    self.friction = 0.4
    self.image_alpha = 0.5
    self.depth = 15
}
if (self.blown == 1)
{
    with(self.dustparticle)
    {
        self.image_alpha = 1
        self.depth = -10
    }
}
