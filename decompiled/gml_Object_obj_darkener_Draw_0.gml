if (self.darken == 1)
{
    with (obj_heroparent)
        self.darkify = 1
    if (self.darkamt < 15)
        self.darkamt += 1
    with (obj_whiteedge)
        self.image_alpha = (obj_darkener.darkamt / 15)
}
if (self.darken == 0)
{
    with (obj_growtangle)
        self.growcon = 3
    with (obj_heroparent)
        self.darkify = 0
    if (self.darkamt > 0)
        self.darkamt -= 1
    with (obj_whiteedge)
        self.image_alpha = (obj_darkener.darkamt / 15)
    if (self.darkamt <= 0)
        instance_destroy()
}
draw_set_alpha((self.darkamt / 20))
draw_set_color(0x00000000)
draw_rectangle((__view_get(0, 0) - 40), (__view_get(1, 0) - 40), (__view_get(0, 0) + 680), (__view_get(1, 0) + 520), 0)
draw_set_alpha(1)
