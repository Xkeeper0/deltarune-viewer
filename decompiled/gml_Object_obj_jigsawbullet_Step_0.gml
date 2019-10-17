if ((self.init == 0) && (self.image_alpha < 1))
{
    self.image_alpha += 0.1
    if (self.image_alpha >= 1)
    {
        self.init = 1
        self.active = 1
    }
}
if (self.tracking == 1)
{
    if instance_exists(obj_heart)
    {
        if ((self.side == 1) || (self.side == 3))
        {
            if (((obj_heart.x + 10) - self.x) >= 10)
                self.x += 3
            if (((obj_heart.x + 10) - self.x) <= -10)
                self.x -= 3
        }
        if ((self.side == 0) || (self.side == 2))
        {
            if (((obj_heart.y + 10) - self.y) >= 10)
                self.y += 3
            if (((obj_heart.y + 10) - self.y) <= -10)
                self.y -= 3
        }
    }
}
self.timer += 1
if ((self.timer >= 30) && (self.con == 0))
{
    self.tracking = 0
    self.direction = ((self.side * 90) + 180)
    self.speed = 4
    self.gravity_direction = (self.side * 90)
    self.gravity = 1.2
    if (self.joker == 1)
    {
        self.gravity = 1.6
        self.speed = 6
    }
    self.con = 1
}
if (self.timer >= 40)
    self.gravity = 0
if (self.locked == 1)
{
    self.ltimer += 1
    if (self.ltimer >= 12)
    {
        self.image_alpha -= 0.2
        self.active = 0
    }
    if (self.ltimer >= 17)
        instance_destroy()
}
