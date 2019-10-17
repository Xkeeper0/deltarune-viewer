self.direction = 180
self.speed = 10
self.image_angle = 180
self.chaincon = 0
self.sons = -1
self.timer = 0
self.gotimer = 0
self.initkingx = obj_chainking.x
self.initkingy = obj_chainking.y
self.initboxx = obj_nonsolid_growtangle.x
self.initboxy = obj_nonsolid_growtangle.y
for (self.i = 0; self.i < 40; self.i += 1)
{
    self.kingx[self.i] = 0
    self.kingy[self.i] = 0
}
self.siner = 0
self.btimer = 20
self.bgap = 0
self.type = 1
self.movecon = 0
self.movetime = 25
self.mytimer = 0
self.maxtimer = 200
if (self.type == 1)
    self.maxtimer = 300
self.image_blend = 0x000000FF
self.bulletpoint = 0
self.spikemake = 0
self.ended = 0
self.endtimer = 0
self.xx = __view_get(0, 0)
self.yy = __view_get(1, 0)
self.inv = 60
self.timepoints = 0
self.grazepoints = 3
self.target = 0
self.damage = 50
self.grazed = 0
self.grazetimer = 0
self.chain_noise = 0
self.timerbonus = 0
