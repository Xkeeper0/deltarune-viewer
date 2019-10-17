if (self.con == 1)
    self.image_angle += 10
if (self.con == 5)
{
    if (self.x < (self.xstart + 40))
        self.x += 10
    self.con = 6
}
if (self.con == 6)
{
    if (self.x > self.xstart)
        self.x -= 2
}
if (self.con == 7)
{
    if (self.x < (self.xstart + 40))
        self.x += 8
    self.con = 6
}
