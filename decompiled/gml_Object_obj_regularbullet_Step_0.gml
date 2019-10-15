if (self.wall_destroy == 1)
{
    if (self.x < (__view_get(e__VW.XView, 0) - 40))
        instance_destroy()
    if (self.x > (__view_get(e__VW.XView, 0) + 680))
        instance_destroy()
    if (self.y < (__view_get(e__VW.YView, 0) - 40))
        instance_destroy()
    if (self.y > (__view_get(e__VW.YView, 0) + 520))
        instance_destroy()
}
