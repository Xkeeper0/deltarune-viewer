if (self.explode == 0)
{
    self.remx = self.x
    self.remy = self.y
    self.image_angle += self.rotspeed
    self.remrot = self.image_angle
}
if ((self.y >= (self.room_height - 100)) && (self.explode == 0))
{
    audio_stop_sound(snd_scytheburst)
    snd_play(snd_scytheburst)
    self.remx = self.x
    self.remy = self.y
    self.explode = 1
    self.explodetimer = 0
    self.remrot = self.image_angle
    self.image_angle = 0
    self.speed = 0
    self.gravity = 0
    self.mask_index = spr_tallpx
    self.sprite_index = spr_tallpx
    self.grazed = 0
    self.y = 0
    self.depth += 1
}
if (self.explode == 1)
{
    self.active = 0
    self.image_xscale += 8
    if (self.image_xscale >= 16)
        self.active = 1
    if (self.image_xscale >= 32)
        self.explode = 2
}
if (self.explode == 2)
{
    self.image_xscale -= 4
    if (self.image_xscale <= 16)
    {
        self.image_alpha -= 0.25
        self.active = 0
    }
    if (self.image_xscale <= 0)
        instance_destroy()
}
if (self.grazed == 1)
{
    with (obj_dbulletcontroller)
        self.made += 0.2
    self.grazed = 2
}
