self.jumpsiner += 1
if ((self.image_alpha < 1) && (self.active == 0))
    self.image_alpha += 0.1
else
    self.active = 1
self.bottomy = ((obj_battlesolid.y + (obj_battlesolid.sprite_height / 2)) - 20)
self.jsine = (sin((self.jumpsiner / self.jumpspeed)) * self.jumpheight)
self.y = ((self.bottomy + self.jsine) - self.jumpheight)
self.image_speed = 0
self.image_index = 1
if (self.jsine > 0)
    self.image_index = 2
if (self.jsine > (self.jumpheight / 2))
    self.image_index = 0
if (self.x <= ((obj_battlesolid.x - (obj_battlesolid.sprite_width / 2)) - 40))
    self.image_alpha -= 0.1
