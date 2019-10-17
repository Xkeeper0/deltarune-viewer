self.dtimer += 1
if (self.type == 0)
{
    if ((self.dtimer == 15) || ((self.dtimer == 19) || (self.dtimer == 23)))
    {
        move_towards_point((obj_heart.x + 8), (obj_heart.y + 8), 0.1)
        self.bul = instance_create(self.x, self.y, obj_regularbullet)
        if instance_exists(self.bul)
        {
            self.bul.sprite_index = spr_clubsball_b
            self.bul.direction = self.direction
            self.bul.speed = 4
            self.bul.image_angle = self.direction
            self.bul.damage = self.damage
            self.bul.target = self.target
            self.bul.grazepoints = 2
            self.bul.timepoints = 1
        }
        self.bul = instance_create(self.x, self.y, obj_regularbullet)
        if instance_exists(self.bul)
        {
            self.bul.sprite_index = spr_clubsball_c
            self.bul.direction = (self.direction - 17)
            self.bul.speed = 4
            self.bul.image_angle = self.direction
            self.bul.damage = self.damage
            self.bul.target = self.target
            self.bul.grazepoints = 2
            self.bul.timepoints = 1
        }
        self.bul = instance_create(self.x, self.y, obj_regularbullet)
        if instance_exists(self.bul)
        {
            self.bul.sprite_index = spr_clubsball_a
            self.bul.direction = (self.direction + 17)
            self.bul.speed = 4
            self.bul.image_angle = self.direction
            self.bul.damage = self.damage
            self.bul.target = self.target
            self.bul.grazepoints = 2
            self.bul.timepoints = 1
        }
    }
    if (self.dtimer == 25)
    {
        self.a = instance_create(self.x, self.y, obj_afterimage)
        self.a.sprite_index = self.sprite_index
        self.a.image_angle = self.image_angle
        instance_destroy()
    }
}
if (self.type == 2)
{
    if ((self.dtimer == 20) || ((self.dtimer == 22) || (self.dtimer == 24)))
    {
        move_towards_point((obj_heart.x + 8), (obj_heart.y + 8), 0.1)
        self.bul = instance_create(self.x, self.y, obj_regularbullet)
        if instance_exists(self.bul)
        {
            self.bul.sprite_index = spr_clubsball_b
            self.bul.direction = ((self.direction - 2) + self.initangle)
            self.bul.speed = 2
            if (self.type == 2)
                self.bul.speed = 5
            self.bul.image_angle = self.direction
            scr_bullet_inherit(self.bul)
        }
        self.bul = instance_create(self.x, self.y, obj_regularbullet)
        if instance_exists(self.bul)
        {
            self.bul.sprite_index = spr_clubsball_c
            self.bul.direction = (((self.direction - 19) - 2) + self.initangle)
            self.bul.speed = 2
            if (self.type == 2)
                self.bul.speed = 5
            self.bul.image_angle = self.direction
            scr_bullet_inherit(self.bul)
        }
        self.bul = instance_create(self.x, self.y, obj_regularbullet)
        if instance_exists(self.bul)
        {
            self.bul.sprite_index = spr_clubsball_a
            self.bul.direction = (((self.direction + 19) - 2) + self.initangle)
            self.bul.speed = 2
            if (self.type == 2)
                self.bul.speed = 5
            self.bul.image_angle = self.direction
            scr_bullet_inherit(self.bul)
        }
        self.initangle += 2
    }
    if (self.dtimer == 26)
    {
        self.a = instance_create(self.x, self.y, obj_afterimage)
        self.a.sprite_index = self.sprite_index
        self.a.image_angle = self.image_angle
        instance_destroy()
    }
}
