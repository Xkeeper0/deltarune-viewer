if instance_exists(obj_mainchara)
{
    self.mx = (obj_mainchara.x + (obj_mainchara.sprite_width / 2))
    self.ox = (self.x + (self.sprite_width / 2))
    if ((abs((self.mx - self.ox)) <= self.radius) && ((obj_mainchara.y >= self.y) && (self.con == 0)))
    {
        snd_play(snd_wing)
        self.lo = snd_play(snd_wing)
        snd_pitch(self.lo, 0.8)
        self.con = 1
        self.visible = 1
        self.rabbick = instance_create(self.x, self.y, obj_chaseenemy)
        self.rabbick.vspeed = 16
    }
}
