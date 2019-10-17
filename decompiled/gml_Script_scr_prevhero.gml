self.prevturn = global.charturn
self.moveswapped = 0
if (global.charturn == 1)
{
    if (global.charmove[0] == 1)
    {
        global.charturn = 0
        self.moveswapped = 1
    }
}
if (global.charturn == 2)
{
    self.moveswapped = 1
    if ((global.charmove[1] == 1) && (global.acting[1] == 0))
        global.charturn = 1
    else if (global.charmove[0] == 1)
        global.charturn = 0
}
if (self.moveswapped == 1)
{
    global.bmenuno = 0
    global.faceaction[global.charturn] = 0
    global.chartarget[global.charturn] = 0
    global.charaction[global.charturn] = 0
    global.charspecial[global.charturn] = 0
    self.movenoise = 1
}
if (global.charturn == 0)
{
    with (obj_monsterparent)
        self.acting = 0
    global.acting[0] = 0
    global.acting[1] = 0
    global.acting[2] = 0
    global.faceaction[1] = 0
    global.chartarget[1] = 0
    global.charaction[1] = 0
    global.charspecial[1] = 0
    global.faceaction[2] = 0
    global.tension = global.temptension[0]
    for (self.i = 0; self.i < 12; self.i += 1)
        self.tempitem[self.i, 0] = global.item[self.i]
}
else
{
    global.tension = global.temptension[global.charturn]
    for (self.i = 0; self.i < 12; self.i += 1)
        self.tempitem[self.i, global.charturn] = self.tempitem[self.i, (global.charturn - 1)]
}
