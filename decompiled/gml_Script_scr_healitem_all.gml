scr_healall(self.argument0)
for (self.i = 0; self.i < self.chartotal; self.i += 1)
{
    self.healx = scr_charbox_x(self.i)
    self.healtext = instance_create(((self.healx + 70) + self.xx), (self.yy + 430), obj_healwriter)
    self.healtext.healamt = self.argument0
}
