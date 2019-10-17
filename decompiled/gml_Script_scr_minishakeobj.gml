self.shakeobj = instance_create(self.x, self.y, obj_shakeobj)
self.shakeobj.target = self.id
self.shakeobj.shakeamt = 4
self.shakeobj.shakereduct = 1
with (self.shakeobj)
    event_user(0)
