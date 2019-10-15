self.abletotarget = 1
if (global.charcantarget[0] == 0)
{
    if (global.charcantarget[1] == 0)
        _temp_local_var_1 = (global.charcantarget[2] == 0)
    else
        _temp_local_var_1 = 0
}
else
    _temp_local_var_1 = 0
if _temp_local_var_1
    self.abletotarget = 0
self.mytarget = choose(0, 1, 2)
if (self.abletotarget == 1)
{
    while(true)
    {
        if (global.charcantarget[self.mytarget] == 0)
        {
            self.mytarget = choose(0, 1, 2)
            continue
        }
        break
    }
}
else
    self.mytarget = 3
global.targeted[self.mytarget] = 1
