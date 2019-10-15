self.timer = (self.timer + 1)
if (self.timer >= 2)
{
    if (self.image_alpha < 1)
        self.image_alpha = (self.image_alpha + 0.1)
    if (self.image_alpha == 1)
        self.active = 1
}
if (self.room == room_dark_chase2)
{
    if (self.x > 680)
        instance_destroy()
    if (self.x < -40)
        instance_destroy()
}
else
{
    if (self.room == room_dark_chase1)
    {
        if (self.x >= (__view_get(e__VW.XView, 0) + 800))
            self.x = (self.x - 900)
        if (self.x <= (__view_get(e__VW.XView, 0) - 200))
            self.x = (self.x + 900)
    }
    if (self.y > (__view_get(e__VW.YView, 0) + 600))
        instance_destroy()
    if (self.y < (__view_get(e__VW.YView, 0) - 800))
        instance_destroy()
}
