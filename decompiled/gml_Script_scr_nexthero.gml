self.moveswapped = 0
self.prevturn = global.charturn
if (global.charturn == 0)
{
    self.moveswapped = 1
    if (global.charmove[1] == 1)
        _temp_local_var_1 = scr_charcan(1)
    else
        _temp_local_var_1 = 0
    if _temp_local_var_1
        global.charturn = 1
    else
    {
        if (global.charmove[2] == 1)
            _temp_local_var_8 = scr_charcan(2)
        else
            _temp_local_var_8 = 0
        if _temp_local_var_8
            global.charturn = 2
        else
            scr_endturn()
    }
}
if (global.charturn == 1)
    _temp_local_var_2 = (self.moveswapped == 0)
else
    _temp_local_var_2 = 0
if _temp_local_var_2
{
    self.moveswapped = 1
    if scr_charcan(2)
        _temp_local_var_3 = (global.acting[1] == 0)
    else
        _temp_local_var_3 = 0
    if _temp_local_var_3
        global.charturn = 2
    else
        scr_endturn()
}
if (global.charturn == 2)
    _temp_local_var_4 = (self.moveswapped == 0)
else
    _temp_local_var_4 = 0
if _temp_local_var_4
    scr_endturn()
if (self.moveswapped == 1)
    global.bmenuno = 0
if (global.charturn > 0)
{
    global.temptension[global.charturn] = global.tension
    self.i = 0
    while(true)
    {
        if (self.i < 12)
        {
            self.tempitem[self.i][global.charturn] = self.tempitem[self.i][self.prevturn]
            self.i = (self.i + 1)
            continue
        }
        break
    }
}
