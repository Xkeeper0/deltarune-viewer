if (self.con == 0)
{
    if (self.type == 0)
        self.sprite_index = spr_bomb_spade
    if (self.type == 1)
        self.sprite_index = spr_bomb_diamond
    if (self.type == 2)
        self.sprite_index = spr_bomb_heart
    if (self.type == 3)
        self.sprite_index = spr_bomb_club
    self.visible = 1
    self.con = 1
}
if (self.con == 1)
{
    self.timer += 1
    if (self.timer >= 10)
    {
        with (obj_joker)
            self.beepnoise = 1
        self.image_speed = (self.timer / self.maxtimer)
    }
    if (self.timer >= self.maxtimer)
    {
        self.con = 2
        self.timer = 0
        self.speed = 0
    }
}
if (self.con == 2)
{
    with (obj_joker)
        self.burstnoise = 1
    if (self.type == 0)
    {
        self.dir = random(360)
        self.maxe = 12
        for (self.i = 0; self.i < 12; self.i += 1)
        {
            self.spade[self.i] = instance_create(self.x, self.y, obj_regularbullet)
            scr_bullet_inherit(self.spade[self.i])
            self.spade[self.i].active = 1
            self.spade[self.i].direction = (self.dir + (self.i * (360 / self.maxe)))
            self.spade[self.i].speed = 8
            self.spade[self.i].image_angle = self.spade[self.i].direction
            self.spade[self.i].sprite_index = spr_spadebullet
        }
        self.con = 3
    }
    if (self.type == 1)
    {
        for (self.i = 0; self.i < 3; self.i += 1)
        {
            self.diamond[self.i] = instance_create(self.x, self.y, obj_regularbullet)
            self.diamond[self.i].damage = 100
            scr_bullet_inherit(self.diamond[self.i])
            with (self.diamond[self.i])
                move_towards_point((obj_heart.x + 8), (obj_heart.y + 8), 11)
            self.diamond[self.i].speed -= self.i
            self.diamond[self.i].image_angle = self.diamond[self.i].direction
            self.diamond[self.i].sprite_index = spr_diamondbullet
        }
        self.con = 3
    }
    if (self.type == 2)
    {
        self.h = instance_create(self.x, self.y, obj_heartbomb_blast)
        scr_bullet_inherit(self.h)
        self.con = 3
    }
    if (self.type == 3)
    {
        self.dir = point_direction(self.x, self.y, (obj_heart.x + 8), (obj_heart.y + 8))
        for (self.i = 0; self.i < 3; self.i += 1)
        {
            self.club[self.i] = instance_create(self.x, self.y, obj_regularbullet)
            self.club[self.i].sprite_index = spr_clubsbullet
            self.club[self.i].damage = 100
            scr_bullet_inherit(self.club[self.i])
            self.club[self.i].active = 1
            self.club[self.i].direction = ((self.dir - 20) + (self.i * 20))
            self.club[self.i].image_angle = self.club[self.i].direction
            self.club[self.i].speed = 8
        }
        self.con = 3
    }
}
if (self.explodedraw >= 40)
    instance_destroy()
