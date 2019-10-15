self.btimer = 99
self.timermax = 12
self.difficulty = 1
self.type = 1
self.joker = 0
self.side = 1
self.damage = 100
self.grazepoints = 1
self.timepoints = 1
self.inv = 60
self.grazed = 0
self.grazetimer = 0
self.target = 0
self.made = 0
self.special = 0
self.miny = 150
self.maxy = 280
if instance_exists(obj_growtangle)
{
    self.miny = (obj_growtangle.y - (obj_growtangle.sprite_height / 2))
    self.maxy = (obj_growtangle.y + (obj_growtangle.sprite_height / 2))
}
self.ratio = 1
if (scr_monsterpop() == 2)
    self.ratio = 1.6
if (scr_monsterpop() == 3)
    self.ratio = 2.3
