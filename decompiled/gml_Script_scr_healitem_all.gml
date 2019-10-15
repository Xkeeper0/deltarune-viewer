scr_healall(self.argument0)
self.i = 0
while(true)
{
    if (self.i < self.chartotal)
    {
        self.healx = scr_charbox_x(self.i)
        self.healtext = instance_create(((self.healx + 70) + self.xx), (self.yy + 430), obj_healwriter)
        self.healtext.healamt = self.argument0
        self.i = (self.i + 1)
        continue
    }
    break
}
