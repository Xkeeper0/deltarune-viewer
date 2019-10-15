if instance_exists(self.target)
{
    self.active = 1
    self.nowx = self.target.x
    self.nowy = self.target.y
}
else
    instance_destroy()
