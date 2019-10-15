self.getchar = 0
if (global.char[0] == 0)
{
    global.char[0] = self.argument0
    self.getchar = 1
}
if (global.char[1] == 0)
    _temp_local_var_1 = (self.getchar == 0)
else
    _temp_local_var_1 = 0
if _temp_local_var_1
{
    global.char[1] = self.argument0
    self.getchar = 1
}
if (global.char[2] == 0)
    _temp_local_var_2 = (self.getchar == 0)
else
    _temp_local_var_2 = 0
if _temp_local_var_2
{
    global.char[2] = self.argument0
    self.getchar = 1
}
with(obj_darkcontroller)
{
    self.chartotal = 0
    self.havechar[0] = 0
    self.havechar[1] = 0
    self.havechar[2] = 0
    self.i = 0
    while(true)
    {
        if (self.i < 3)
        {
            global.faceaction[self.i] = 0
            if (global.char[self.i] != 0)
                self.chartotal = (self.chartotal + 1)
            if (global.char[self.i] == 1)
            {
                self.havechar[0] = 1
                self.charpos[0] = self.i
            }
            if (global.char[self.i] == 2)
            {
                self.havechar[1] = 1
                self.charpos[1] = self.i
            }
            if (global.char[self.i] == 3)
            {
                self.havechar[2] = 1
                self.charpos[2] = self.i
            }
            self.i = (self.i + 1)
            continue
        }
        break
    }
}
