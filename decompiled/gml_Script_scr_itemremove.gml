self.removed = 0
scr_itemcheck(self.argument0)
if (self.haveit == 1)
{
    self.loc = 0
    self.skip = 0
    if (global.item[0] == self.argument0)
        _temp_local_var_1 = (self.skip == 0)
    else
        _temp_local_var_1 = 0
    if _temp_local_var_1
    {
        self.loc = 0
        self.skip = 1
    }
    if (global.item[1] == self.argument0)
        _temp_local_var_2 = (self.skip == 0)
    else
        _temp_local_var_2 = 0
    if _temp_local_var_2
    {
        self.loc = 1
        self.skip = 1
    }
    if (global.item[2] == self.argument0)
        _temp_local_var_3 = (self.skip == 0)
    else
        _temp_local_var_3 = 0
    if _temp_local_var_3
    {
        self.loc = 2
        self.skip = 1
    }
    if (global.item[3] == self.argument0)
        _temp_local_var_4 = (self.skip == 0)
    else
        _temp_local_var_4 = 0
    if _temp_local_var_4
    {
        self.loc = 3
        self.skip = 1
    }
    if (global.item[4] == self.argument0)
        _temp_local_var_5 = (self.skip == 0)
    else
        _temp_local_var_5 = 0
    if _temp_local_var_5
    {
        self.loc = 4
        self.skip = 1
    }
    if (global.item[5] == self.argument0)
        _temp_local_var_6 = (self.skip == 0)
    else
        _temp_local_var_6 = 0
    if _temp_local_var_6
    {
        self.loc = 5
        self.skip = 1
    }
    if (global.item[6] == self.argument0)
        _temp_local_var_7 = (self.skip == 0)
    else
        _temp_local_var_7 = 0
    if _temp_local_var_7
    {
        self.loc = 6
        self.skip = 1
    }
    if (global.item[7] == self.argument0)
        _temp_local_var_8 = (self.skip == 0)
    else
        _temp_local_var_8 = 0
    if _temp_local_var_8
    {
        self.loc = 7
        self.skip = 1
    }
    if (global.item[8] == self.argument0)
        _temp_local_var_9 = (self.skip == 0)
    else
        _temp_local_var_9 = 0
    if _temp_local_var_9
    {
        self.loc = 8
        self.skip = 1
    }
    if (global.item[9] == self.argument0)
        _temp_local_var_10 = (self.skip == 0)
    else
        _temp_local_var_10 = 0
    if _temp_local_var_10
    {
        self.loc = 9
        self.skip = 1
    }
    if (global.item[10] == self.argument0)
        _temp_local_var_11 = (self.skip == 0)
    else
        _temp_local_var_11 = 0
    if _temp_local_var_11
    {
        self.loc = 10
        self.skip = 1
    }
    if (global.item[11] == self.argument0)
        _temp_local_var_12 = (self.skip == 0)
    else
        _temp_local_var_12 = 0
    if _temp_local_var_12
    {
        self.loc = 11
        self.skip = 1
    }
    scr_itemshift(self.loc, 0)
    self.removed = 1
}
