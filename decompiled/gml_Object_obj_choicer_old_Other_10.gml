if (self.canchoose == 1)
    _temp_local_var_1 = (self.choiced == 0)
else
    _temp_local_var_1 = 0
if _temp_local_var_1
{
    self.choiced = 1
    global.choice = self.mychoice
    self.alarm[0] = 1
}
