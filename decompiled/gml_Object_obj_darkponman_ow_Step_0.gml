self.rot += self.rotspeed
self.xx = (lengthdir_x(self.eyer, self.rot) + self.offx)
self.yy = (lengthdir_y(self.eyer, self.rot) + self.offy)
if (self.boss == 1)
{
    if instance_exists(obj_mainchara)
    {
        obj_mainchara.battlemode = 0
        with (obj_darkponman_ow)
        {
            if ((obj_mainchara.x > (self.x - self.xrange)) && ((obj_mainchara.x < (self.x + self.xrange)) && ((obj_mainchara.y > (self.y - self.yrange)) && (obj_mainchara.y < (self.y + self.yrange)))))
                obj_mainchara.battlemode = 1
        }
    }
}
if (self.con == 0)
{
    if (self.made == 0)
    {
        for (self.i = 0; self.i < self.bmax; self.i += 1)
        {
            self.xa = (lengthdir_x((self.eyer * (2 + (self.i * 2))), (self.rot - (self.i * 2))) + self.offx)
            self.ya = (lengthdir_y((self.eyer * (2 + (self.i * 2))), (self.rot - (self.i * 2))) + self.offy)
            self.fb[self.i] = instance_create((self.x + self.xa), (self.y + self.ya), obj_overworldbulletparent)
            self.fb[self.i].sprite_index = spr_diamondbullet
            self.fb[self.i].active = 1
            self.fb[self.i].target = 3
            self.fb[self.i].damage = 16
            self.fb[self.i].image_angle = (self.rot - self.i)
            self.fb[self.i].depth = 200
            self.fb[self.i].alarm[0] = -10
            self.fb[self.i].image_alpha = 0
            self.fb[self.i].image_xscale = 0.7
        }
        self.made = 1
    }
    if (self.eyer <= 10)
        self.eyer += 1
    else
    {
        self.con = 1
        self.image_speed = 0.1
    }
}
if (self.made == 1)
{
    if (self.rotspeed > 0)
        self.siner += 1
    if (self.rotspeed < 0)
        self.siner -= 1
    for (self.i = 0; self.i < self.bmax; self.i += 1)
    {
        if instance_exists(self.fb[self.i])
        {
            self.xa = (lengthdir_x((self.eyer * (2 + (self.i * 2))), (self.rot - (sin((self.siner / 10)) * (self.i * 2)))) + self.offx)
            self.ya = (lengthdir_y((self.eyer * (2 + (self.i * 2))), (self.rot - (sin((self.siner / 10)) * (self.i * 2)))) + self.offy)
            self.fb[self.i].x = (self.x + self.xa)
            self.fb[self.i].y = (self.y + self.ya)
            self.fb[self.i].image_alpha = (0.8 + (sin((((self.i * 4) + self.siner) / 5)) * 0.2))
            if (self.con < 1)
                self.fb[self.i].image_alpha = (0 + (self.eyer / 10))
            self.fb[self.i].image_angle = (self.rot - (sin((self.siner / 10)) * (self.i * 4)))
        }
    }
}
