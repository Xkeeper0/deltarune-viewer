self.shakeobj = instance_create(self.x, self.y, obj_shakeobj)
self.shakeobj.target = self.id
with (self.shakeobj)
    event_user(0)
