if (self.dhaver == 1)
{
    with(self.myd)
    {
        self.writingx = (__view_get(e__VW.XView, 0) + 40)
        self.writingy = (__view_get(e__VW.YView, 0) + 20)
    }
}
if (self.v == 1)
{
    __view_set(e__VW.XView, 0, (self.c.x - self.vx))
    __view_set(e__VW.YView, 0, (self.c.y - self.vy))
}
