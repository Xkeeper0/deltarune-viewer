self.growth = 0
if (self.timer < self.maxtimer)
    _temp_local_var_1 = (self.growcon == 1)
else
    _temp_local_var_1 = 0
if _temp_local_var_1
    self.growth = 1
if (self.timer > 0)
    _temp_local_var_2 = (self.growcon == 3)
else
    _temp_local_var_2 = 0
if _temp_local_var_2
    self.growth = 1
if (self.growth == 1)
{
    if (self.growcon == 1)
        self.timer = (self.timer + 1)
    if (self.growcon == 3)
        self.timer = (self.timer - 1)
    self.image_xscale = (2 * (self.timer / self.maxtimer))
    self.image_yscale = (2 * (self.timer / self.maxtimer))
    self.image_angle = (180 + (180 * (self.timer / self.maxtimer)))
    self.image_alpha = (0.5 + ((self.timer / self.maxtimer) * 0.5))
    self.d = instance_create(self.x, self.y, obj_afterimage)
    self.d.sprite_index = self.sprite_index
    self.d.image_xscale = self.image_xscale
    self.d.image_yscale = self.image_yscale
    self.d.image_angle = self.image_angle
    self.d.depth = (self.depth - 1)
    self.d.image_blend = self.image_blend
    self.d.image_alpha = ((1 - self.image_alpha) + 0.1)
    self.d.image_speed = 0
    if (self.timer >= self.maxtimer)
        _temp_local_var_3 = (self.growcon == 1)
    else
        _temp_local_var_3 = 0
    if _temp_local_var_3
    {
        self.growcon = 2
        self.image_angle = 0
    }
    if (self.timer <= 0)
        _temp_local_var_4 = (self.growcon == 3)
    else
        _temp_local_var_4 = 0
    if _temp_local_var_4
        instance_destroy()
}
