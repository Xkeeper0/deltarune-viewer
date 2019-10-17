self.image_xscale = 2
self.image_yscale = 2
self.image_speed = 0.2
self.good = 1
self.offing = 0
if (instance_number(self.object_index) == 1)
{
    self.tt = instance_create(self.x, self.y, obj_throwtarget)
    self.tt.depth = (self.depth + 1)
    with (self.tt)
    {
        self.offing = 0
        self.good = 0
        self.sprite_index = spr_checkers_idle_crownless
    }
}
self.con = 0
