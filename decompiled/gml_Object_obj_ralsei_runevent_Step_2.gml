if instance_exists(obj_mainchara)
{
    if (obj_mainchara.runmove == 1)
        self.runamt = (self.runamt + 1)
    if (self.runamt >= 30)
        _temp_local_var_1 = (self.con == 0)
    else
        _temp_local_var_1 = 0
    if _temp_local_var_1
    {
        self.con = 99
        global.flag[206] = 1
    }
    if (obj_mainchara.y > 760)
    {
        if (self.con == 0)
            _temp_local_var_2 = (global.interact == 0)
        else
            _temp_local_var_2 = 0
    }
    else
        _temp_local_var_2 = 0
    if _temp_local_var_2
    {
        global.interact = 1
        self.con = 1
        global.typer = 31
        global.fe = 0
        global.fc = 2
        global.msc = 130
        scr_text(global.msc)
        instance_create(0, 0, obj_dialoguer)
        self.con = 2
    }
    if (self.con == 2)
        _temp_local_var_3 = (d_ex() == 0)
    else
        _temp_local_var_3 = 0
    if _temp_local_var_3
    {
        global.interact = 0
        self.con = 99
        global.flag[206] = 1
    }
}
