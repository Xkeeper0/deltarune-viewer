obj_menuwriter.testwho = self.who
with(obj_menuwriter)
{
    if (self.active == 1)
        _temp_local_var_1 = (self.testwho == self.who)
    else
        _temp_local_var_1 = 0
    if _temp_local_var_1
        instance_destroy()
}
self.active = 1
