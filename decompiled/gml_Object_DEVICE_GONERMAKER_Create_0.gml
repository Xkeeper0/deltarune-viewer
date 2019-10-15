self.HEAD = 0
self.BODY = 0
self.LEGS = 0
self.HEADMAX = 7
self.BODYMAX = 5
self.LEGSMAX = 1
self.PART[0] = global.flag[900]
self.PART[1] = global.flag[901]
self.PART[2] = global.flag[902]
self.PARTMAX[0] = 7
self.PARTMAX[1] = 5
self.PARTMAX[2] = 4
self.s = 0
self.offx = 0
self.movetimer = 0
self.PARTX[0] = 0
self.IDEALX[0] = 0
self.PARTX[1] = 0
self.IDEALX[1] = 0
self.PARTX[2] = 0
self.IDEALX[2] = 0
self.i = 0
while(true)
{
    if (self.i < 3)
    {
        self.IDEALX[self.i] = (self.PART[self.i] * -50)
        self.PARTX[self.i] = self.IDEALX[self.i]
        self.i = (self.i + 1)
        continue
    }
    break
}
self.LOCK[0] = 0
self.LOCK[1] = 0
self.LOCK[2] = 0
self.sy[0] = 0
self.sy[1] = 34
self.sy[2] = 60
self.siner = 0
self.obacktimer = 0
self.OB_DEPTH = 0
self.flashtimer = 0
self.midscreenx = (__view_get(e__VW.XView, 0) + (__view_get(e__VW.WView, 0) / 2))
self.midscreeny = (__view_get(e__VW.YView, 0) + (__view_get(e__VW.HView, 0) / 2))
self.STEP = 1
self.FINISH = 0
self.ONEBUFFER = 10
self.FADEBUFFER = 10
self.CANCEL = 0
self.initx = self.x
self.inity = self.y
self.NAMEFADE = 0
