if (self.active == 1)
{
    scr_dbox()
    if (!instance_exists(self.writer))
        instance_destroy()
}
