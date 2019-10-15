if instance_exists(obj_mainchara)
{
    if (self.onioncount > 0)
        self.onioncount = (self.onioncount - 1)
    if (global.flag[258] == 0)
    {
        if (self.onioncount >= 200)
        {
            if (self.con == 0)
                _temp_local_var_1 = (global.flag[258] == 0)
            else
                _temp_local_var_1 = 0
        }
        else
            _temp_local_var_1 = 0
        if _temp_local_var_1
        {
            global.flag[258] = 1
            self.onioncount = 1
            global.facing = 1
            self.con = 1
            self.alarm[4] = 10
            global.interact = 1
        }
    }
    if (self.con == 2)
    {
        with(self.onion)
        {
            self.on = 1
        }
        self.con = 3
        self.alarm[4] = 50
    }
    if (self.con == 4)
    {
        global.facing = 1
        with(self.onion)
        {
            self.on = 2
        }
        self.con = 5
        self.alarm[4] = 150
    }
    if (self.con == 6)
    {
        global.fc = 0
        global.typer = 5
        global.msc = 195
        scr_text(global.msc)
        instance_create(0, 0, obj_dialoguer)
        self.con = 7
    }
    if (self.con == 7)
        _temp_local_var_2 = (~ d_ex())
    else
        _temp_local_var_2 = 0
    if _temp_local_var_2
    {
        global.interact = 1
        self.onion.on = 4
        self.con = 8
        self.alarm[4] = 150
    }
    if (self.con == 9)
    {
        with(self.onion)
        {
            instance_destroy()
        }
        self.con = 10
        global.interact = 0
        global.facing = 0
        instance_destroy()
    }
}
