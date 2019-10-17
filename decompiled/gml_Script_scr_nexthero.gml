self.moveswapped = 0
self.prevturn = global.charturn
if (global.charturn == 0)
{
    self.moveswapped = 1
    if ((global.charmove[1] == 1) && scr_charcan(1))
        global.charturn = 1
    else if ((global.charmove[2] == 1) && scr_charcan(2))
        global.charturn = 2
    else
        scr_endturn()
}
if ((global.charturn == 1) && (self.moveswapped == 0))
{
    self.moveswapped = 1
    if (scr_charcan(2) && (global.acting[1] == 0))
        global.charturn = 2
    else
        scr_endturn()
}
if ((global.charturn == 2) && (self.moveswapped == 0))
    scr_endturn()
if (self.moveswapped == 1)
    global.bmenuno = 0
if (global.charturn > 0)
{
    global.temptension[global.charturn] = global.tension
    for (self.i = 0; self.i < 12; self.i += 1)
        self.tempitem[self.i, global.charturn] = self.tempitem[self.i, self.prevturn]
}
