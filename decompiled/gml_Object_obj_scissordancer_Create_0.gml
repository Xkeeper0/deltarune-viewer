self.image_speed = 0
self.sndcon = 0
self.sndtimer = 0
self.dancetimer = (0 - (instance_number(self.object_index) * 2))
self.image_xscale = 2
self.image_yscale = 2
global.charinstance[0] = 326
global.charinstance[1] = global.cinstance[0]
global.charinstance[2] = global.cinstance[1]
self.con = 0
self.vspeed = -6
self.specturn = 0
if (self.room == room_cc_4f)
{
    self.specturn = 1
    self.vspeed = 0
    self.hspeed = 6
}
self.bullet = instance_create(self.x, self.y, obj_overworldbulletparent)
self.bullet.sprite_index = spr_scissordancer_precise
with (self.bullet)
{
    self.active = 1
    self.target = 3
    self.damage = 15
    self.visible = 0
    self.image_blend = 0x000000FF
    self.image_alpha = 1
    self.image_xscale = 2
    self.image_yscale = 2
}
self.myinteract = 0
