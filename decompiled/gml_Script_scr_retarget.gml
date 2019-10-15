self.thistarget = global.chartarget[self.argument0]
self.cancelattack = 0
if (self.thistarget == 0)
{
    if (global.monster[0] == 0)
        self.thistarget = 1
}
if (self.thistarget == 1)
{
    if (global.monster[1] == 0)
        self.thistarget = 2
}
if (self.thistarget == 2)
{
    if (global.monster[2] == 0)
        self.thistarget = 3
    if (self.thistarget == 3)
        _temp_local_var_1 = (global.monster[0] == 1)
    else
        _temp_local_var_1 = 0
    if _temp_local_var_1
        self.thistarget = 0
    if (self.thistarget == 3)
        _temp_local_var_2 = (global.monster[1] == 1)
    else
        _temp_local_var_2 = 0
    if _temp_local_var_2
        self.thistarget = 1
    if (self.thistarget == 3)
        self.cancelattack = 1
}
global.chartarget[self.argument0] = self.thistarget
