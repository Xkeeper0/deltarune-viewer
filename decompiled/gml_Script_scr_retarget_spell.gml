self.cancelattack = 0
if (self.star == 0)
{
    if (global.monster[0] == 0)
        self.star = 1
}
if (self.star == 1)
{
    if (global.monster[1] == 0)
        self.star = 2
}
if (self.star == 2)
{
    if (global.monster[2] == 0)
        self.star = 3
    if (self.star == 3)
        _temp_local_var_1 = (global.monster[0] == 1)
    else
        _temp_local_var_1 = 0
    if _temp_local_var_1
        self.star = 0
    if (self.star == 3)
        _temp_local_var_2 = (global.monster[1] == 1)
    else
        _temp_local_var_2 = 0
    if _temp_local_var_2
        self.star = 1
    if (self.star == 3)
        self.cancelattack = 1
}
