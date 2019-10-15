scr_heal(self.argument0, self.argument1)
self.healx = scr_charbox_x(self.argument0)
self.healtext = instance_create(((self.healx + 70) + self.xx), (self.yy + 430), obj_healwriter)
self.healtext.healamt = self.argument1
