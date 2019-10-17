obj_menuwriter.testwho = self.who
with (obj_menuwriter)
{
    if ((self.active == 1) && (self.testwho == self.who))
        instance_destroy()
}
self.active = 1
