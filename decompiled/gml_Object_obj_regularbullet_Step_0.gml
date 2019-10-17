if (self.wall_destroy == 1)
{
    if (self.x < (__view_get(0, 0) - 40))
        instance_destroy()
    if (self.x > (__view_get(0, 0) + 680))
        instance_destroy()
    if (self.y < (__view_get(1, 0) - 40))
        instance_destroy()
    if (self.y > (__view_get(1, 0) + 520))
        instance_destroy()
}
