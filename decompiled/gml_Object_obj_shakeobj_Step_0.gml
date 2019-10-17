if (self.active == 0)
    instance_destroy()
if (self.active == 1)
{
    if instance_exists(self.target)
    {
        self.shakeamt -= self.shakereduct
        self.on *= -1
        self.target.x = (self.nowx + (self.shakeamt * self.on))
        if (self.shakeamt <= 0)
            instance_destroy()
    }
    else
        instance_destroy()
}
