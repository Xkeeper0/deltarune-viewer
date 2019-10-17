for (self.i = 0; self.i < 12; self.i += 1)
    global.item[self.i] = self.tempitem[self.i, global.charturn]
for (self.i = 0; self.i < 12; self.i += 1)
{
    for (self.j = 0; self.j < 3; self.j += 1)
        self.tempitem[self.i, self.j] = global.item[self.i]
}
self.moveswapped = 0
with (obj_writer)
    instance_destroy()
with (obj_face)
    instance_destroy()
with (obj_smallface)
    instance_destroy()
global.attacking = 0
for (self.i = 0; self.i < 3; self.i += 1)
{
    if ((global.charauto[global.char[self.i]] == 1) && (global.hp[global.char[self.i]] > 0))
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
}
if (global.acting[0] == 0)
    scr_attackphase()
else
{
    global.charturn = 3
    global.myfight = 3
}
