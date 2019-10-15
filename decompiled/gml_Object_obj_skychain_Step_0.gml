self.image_angle = self.direction
if (self.con == 0)
{
    self.timer = (self.timer + 1)
    if (self.timer >= 2)
    {
        self.sons = (self.sons + 1)
        self.son[self.sons] = instance_create(self.x, self.y, obj_fadechain)
        self.son[self.sons].image_angle = self.image_angle
        self.son[self.sons].direction = self.direction
        self.son[self.sons].speed = (self.speed / 2.5)
        self.son[self.sons].active = 1
        self.son[self.sons].damage = 10
        scr_bullet_inherit(self.son[self.sons])
        self.timer = 0
    }
}
if (self.sons >= 30)
    instance_destroy()
