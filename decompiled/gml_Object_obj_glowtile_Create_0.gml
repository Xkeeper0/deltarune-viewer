self.active = 0
self.stepped = 0
self.stepbuffer = 0
self.image_speed = 0.2
self.image_xscale = 2
self.image_yscale = 2
if instance_exists(obj_glowtilepuzz)
{
    obj_glowtilepuzz.tempid = self.id
    with(obj_glowtilepuzz)
    {
        self.tileid[self.tiletotal] = self.tempid
        self.tiletotal = (self.tiletotal + 1)
    }
}
