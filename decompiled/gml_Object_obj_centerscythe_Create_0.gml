self.grazed = 0
self.grazepoints = 3
self.timepoints = 2
self.target = 0
self.inv = 120
self.damage = 124
self.grazetimer = 0
self.active = 0
self.image_alpha = 0
self.image_xscale = 1
self.image_yscale = 1
self.rotspeed = 0
self.insanity = 1
self.chasecon = 1
self.chasetimer = 0
self.centerx = 320
self.centery = 120
if instance_exists(obj_battlesolid)
{
    self.centerx = obj_battlesolid.x
    self.centery = obj_battlesolid.y
}
self.radius = 150
self.sine = 0
self.sinespeed = 1.4
self.dir = random(70)
self.dirspeed = (1.5 * choose(1, -1))
self.un = 0
self.scythetimer = -5
self.scythesidex = 1
self.swingnoise = 0
self.noisebuffer = 0
self.type = 0
if instance_exists(obj_dbulletcontroller)
{
    if (obj_dbulletcontroller.type == 76)
        self.type = 1
}
self.king = 0
if (self.type == 1)
{
    self.image_xscale = 1
    self.image_yscale = 1
    self.insanity = 0
    self.sinespeed = 1.3
    self.scythesidex = choose(1, -1)
}
if (instance_number(obj_centerscythe) == 1)
{
    self.king = 1
    self.x = (self.centerx - self.radius)
    self.y = self.centery
    self.s2 = instance_create((self.centerx + self.radius), self.centery, obj_centerscythe)
    with(self.s2)
    {
        self.sine = 0
        self.dir = 180
        self.un = 1
    }
    self.s3 = instance_create(self.centerx, (self.centery - self.radius), obj_centerscythe)
    with(self.s3)
    {
        self.sine = 0
        self.dir = 90
        self.un = 0
    }
    self.s4 = instance_create(self.centerx, (self.centery + self.radius), obj_centerscythe)
    with(self.s4)
    {
        self.sine = 0
        self.dir = 270
        self.un = 1
    }
    obj_centerscythe.mydir = self.dir
    obj_centerscythe.sinespeed = self.sinespeed
    obj_centerscythe.dirspeed = self.dirspeed
    obj_centerscythe.insanity = self.insanity
    with(obj_centerscythe)
    {
        if (self.dir != self.mydir)
            self.dir = (self.dir + self.mydir)
        self.x = (self.centerx - lengthdir_x(self.radius, self.dir))
        self.y = (self.centery - lengthdir_y(self.radius, self.dir))
    }
}
self.wall_destroy = 0
