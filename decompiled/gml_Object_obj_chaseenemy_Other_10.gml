if (self.touchflag > 0)
    global.flag[self.touchflag] = 1
self.newme = instance_create(self.x, self.y, obj_testoverworldenemy)
self.newme.sprite_index = self.touchsprite
self.newme.touchsprite = self.touchsprite
self.newme.slidesprite = self.sprite_index
self.newme.depth = self.depth
self.newme.eraser = self.eraser
with (self.newme)
    event_user(0)
global.encounterno = self.myencounter
instance_destroy()
