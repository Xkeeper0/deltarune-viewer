if (self.active == 0)
    instance_destroy()
if (self.active == 2)
{
    if instance_exists(self.target)
    {
        self.frame = (self.frame + self.framespeed)
        if (self.frame >= (self.maxframe - 1))
        {
            self.done = 1
            self.frame = (self.maxframe - 1)
        }
        self.target.sprite_index = self.sprite_index
        self.target.image_index = self.frame
    }
    else
        instance_destroy()
    if (self.done == 1)
        instance_destroy()
}
if (self.active == 1)
{
    if instance_exists(self.target)
    {
        self.target.sprite_index = self.sprite_index
        self.target.image_speed = 0
        self.target.image_index = 0
    }
    else
        instance_destroy()
    self.active = 2
}
