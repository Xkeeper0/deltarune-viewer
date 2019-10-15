if instance_exists(self.target)
{
    self.image_index = self.target.image_index
    self.sprite_index = self.target.sprite_index
}
self.siner = (self.siner + self.flashspeed)
d3d_set_fog(1, self.flashcolor, 0, 1)
draw_sprite_ext(self.sprite_index, self.image_index, self.x, self.y, self.image_xscale, self.image_yscale, 0, self.image_blend, sin((self.siner / 3)))
d3d_set_fog(0, 0, 0, 0)
if (self.siner > 4)
    _temp_local_var_1 = (sin((self.siner / 3)) < 0)
else
    _temp_local_var_1 = 0
if _temp_local_var_1
    instance_destroy()
