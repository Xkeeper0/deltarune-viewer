self.objanim = instance_create(self.x, self.y, obj_anim)
self.objanim.target = self.id
self.objanim.sprite_index = self.argument0
self.objanim.framespeed = self.argument1
with(self.objanim)
{
    event_user(0)
}
