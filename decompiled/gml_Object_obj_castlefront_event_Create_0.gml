self.con = 1
if (global.plot >= 165)
{
    self.con = 999
    instance_destroy()
}
else
{
    with(obj_doorw_musfade)
    {
        instance_destroy()
    }
}
self.black = 0
