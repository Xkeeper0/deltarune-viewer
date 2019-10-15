self.con = 0
self.lightsoff = 0
if (global.plot >= 250)
{
    self.con = 99
    instance_destroy()
}
else
{
    global.interact = 1
    self.lightsoff = 1
}
