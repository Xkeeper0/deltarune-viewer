if (self.dhaver == 1)
{
    with (self.myd)
    {
        self.writingx = (__view_get(0, 0) + 40)
        self.writingy = (__view_get(1, 0) + 20)
    }
}
if (self.v == 1)
{
    __view_set(0, 0, (self.c.x - self.vx))
    __view_set(1, 0, (self.c.y - self.vy))
}
