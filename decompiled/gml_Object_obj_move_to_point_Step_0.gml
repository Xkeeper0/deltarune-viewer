if instance_exists(self.target)
{
    if (self.moved == 0)
    {
        self.x = self.target.x
        self.y = self.target.y
        self.dist = distance_to_point(self.movex, self.movey)
        self.dir = point_direction(self.x, self.y, self.movex, self.movey)
        self.amt = (self.dist / self.movemax)
        self.xadd = lengthdir_x(self.amt, self.dir)
        self.yadd = lengthdir_y(self.amt, self.dir)
        self.moved = 1
    }
    self.target.x = (self.target.x + self.xadd)
    self.target.y = (self.target.y + self.yadd)
    self.movetimer = (self.movetimer + 1)
    if (self.movetimer >= self.movemax)
        instance_destroy()
    if (self.target == 321)
        instance_destroy()
}
else
    instance_destroy()
