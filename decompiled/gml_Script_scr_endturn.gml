self.i = 0
while(true)
{
    if (self.i < 12)
    {
        global.item[self.i] = self.tempitem[self.i][global.charturn]
        self.i = (self.i + 1)
        continue
    }
    break
}
self.i = 0
while(true)
{
    if (self.i < 12)
    {
        self.j = 0
        while(true)
        {
            if (self.j < 3)
            {
                self.tempitem[self.i][self.j] = global.item[self.i]
                self.j = (self.j + 1)
                continue
            }
            break
        }
        self.i = (self.i + 1)
        continue
    }
    break
}
self.moveswapped = 0
with(obj_writer)
{
    instance_destroy()
}
with(obj_face)
{
    instance_destroy()
}
with(obj_smallface)
{
    instance_destroy()
}
global.attacking = 0
self.i = 0
while(true)
{
    if (self.i < 3)
    {
        if (global.charauto[global.char[self.i]] == 1)
            _temp_local_var_1 = (global.hp[global.char[self.i]] > 0)
        else
            _temp_local_var_1 = 0
        if _temp_local_var_1
        {
            if (global.monster[2] == 1)
                global.chartarget[self.i] = 2
            if (global.monster[1] == 1)
                global.chartarget[self.i] = 1
            if (global.monster[0] == 1)
                global.chartarget[self.i] = 0
        }
        if (global.charaction[self.i] == 1)
            global.attacking = 1
        self.i = (self.i + 1)
        continue
    }
    break
}
if (global.acting[0] == 0)
    scr_attackphase()
else
{
    global.charturn = 3
    global.myfight = 3
}
