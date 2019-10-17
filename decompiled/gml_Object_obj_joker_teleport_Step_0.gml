if (self.con == 0)
{
    if (self.sndcon == 0)
    {
        snd_stop(snd_swing)
        snd_play(snd_swing)
        self.sndcon = 1
    }
    self.image_index = 0
    if (self.image_xscale < 2)
        self.image_xscale += 0.4
    else
    {
        self.image_xscale = 2
        self.con = 1
        self.timer = 0
    }
}
if (self.con == 1)
{
    self.timer += 1
    if (self.timer >= 8)
    {
        if ((self.sndcon == 1) && (self.type < 3))
        {
            snd_play(snd_joker_oh)
            self.sndcon = 2
        }
        self.image_index = 1
        self.con = 2
        self.timer = 0
        if (self.type == 0)
        {
            self.bullet = instance_create(self.x, self.y, obj_collidebullet)
            self.bullet.sprite_index = spr_diamondbullet
            self.bullet.active = 1
            scr_bullet_inherit(self.bullet)
            with (self.bullet)
            {
                move_towards_point((obj_heart.x + 10), (obj_heart.y + 10), 8)
                self.image_angle = self.direction
                self.image_xscale = 0.7
                self.image_yscale = 0.7
            }
        }
        if (self.type == 1)
        {
            for (self.i = 0; self.i < 5; self.i += 1)
            {
                self.bullet = instance_create(self.x, self.y, obj_collidebullet)
                self.bullet.sprite_index = spr_spadebullet
                self.bullet.active = 1
                self.bullet.offset = (18 * self.i)
                scr_bullet_inherit(self.bullet)
                with (self.bullet)
                {
                    move_towards_point((obj_heart.x + 10), (obj_heart.y + 10), 4.5)
                    self.direction = ((self.direction - 36) + self.offset)
                    self.image_angle = self.direction
                    self.image_xscale = 0.4
                    self.image_yscale = 0.4
                }
            }
        }
    }
}
if (self.con == 2)
{
    self.timer += 1
    if (self.timer >= 10)
    {
        self.con = 4
        self.timer = 0
    }
}
if (self.con == 4)
{
    if (self.sndcon == 2)
    {
        snd_stop(snd_swing)
        snd_play(snd_swing)
        self.sndcon = 3
    }
    if (self.image_xscale > 0)
    {
        self.image_xscale -= 0.4
        self.image_yscale += 0.2
    }
    else
    {
        self.image_xscale = 0
        self.con = 0
        instance_destroy()
    }
}
