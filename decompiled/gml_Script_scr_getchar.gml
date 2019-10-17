self.getchar = 0
if (global.char[0] == 0)
{
    global.char[0] = self.argument0
    self.getchar = 1
}
if ((global.char[1] == 0) && (self.getchar == 0))
{
    global.char[1] = self.argument0
    self.getchar = 1
}
if ((global.char[2] == 0) && (self.getchar == 0))
{
    global.char[2] = self.argument0
    self.getchar = 1
}
with (obj_darkcontroller)
{
    self.chartotal = 0
    self.havechar[0] = 0
    self.havechar[1] = 0
    self.havechar[2] = 0
    for (self.i = 0; self.i < 3; self.i += 1)
    {
        global.faceaction[self.i] = 0
        if (global.char[self.i] != 0)
            self.chartotal += 1
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
    }
}
