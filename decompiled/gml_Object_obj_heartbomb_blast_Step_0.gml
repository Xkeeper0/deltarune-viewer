if (self.made == 0)
{
    for (self.i = 0; self.i < 4; self.i += 1)
    {
        self.son[self.i] = instance_create(self.x, self.y, obj_regularbullet)
        self.son[self.i].sprite_index = spr_heartbullet
        scr_bullet_inherit(self.son[self.i])
    }
    self.made = 1
}
self.pausetimer += 1
if ((self.pausetimer >= 10) && (self.con == 0))
{
    move_towards_point((obj_heart.x + 8), (obj_heart.y + 8), 7)
    self.con = 1
}
self.siner += 1
if (self.maxlength < 40)
    self.maxlength += 4
for (self.i = 0; self.i < 4; self.i += 1)
{
    if instance_exists(self.son[self.i])
    {
        self.son[self.i].x = (self.x + lengthdir_x(self.maxlength, ((self.siner * 3) + (self.i * 90))))
        self.son[self.i].y = (self.y + lengthdir_y(self.maxlength, ((self.siner * 3) + (self.i * 90))))
    }
}
