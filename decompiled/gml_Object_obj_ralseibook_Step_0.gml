if left_p()
{
    if (self.turning == 0)
        _temp_local_var_1 = (self.page > -1)
    else
        _temp_local_var_1 = 0
}
else
    _temp_local_var_1 = 0
if _temp_local_var_1
{
    self.turning = -1
    self.turnpage = self.page
    self.siner = 0
}
if right_p()
{
    if (self.turning == 0)
        _temp_local_var_2 = (self.page < 6)
    else
        _temp_local_var_2 = 0
}
else
    _temp_local_var_2 = 0
if _temp_local_var_2
{
    self.turning = 1
    self.turnpage = self.page
    self.siner = 0
}
if button2_p()
{
    if (global.interact == 1)
        global.interact = 0
    instance_destroy()
}
