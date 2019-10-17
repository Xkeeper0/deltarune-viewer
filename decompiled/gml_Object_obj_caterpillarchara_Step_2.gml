scr_depth()
self.depth += 5
self.nowx = self.x
self.nowy = self.y
self.moved = 0
self.walk = 0
self.runmove = 0
if (obj_mainchara.x != self.remx[0])
    self.moved = 1
if (obj_mainchara.y != self.remy[0])
    self.moved = 1
if (self.moved == 1)
{
    self.blushtimer = 0
    for (self.i = 25; self.i > 0; self.i -= 1)
    {
        self.remx[self.i] = self.remx[(self.i - 1)]
        self.remy[self.i] = self.remy[(self.i - 1)]
        self.facing[self.i] = self.facing[(self.i - 1)]
    }
    self.remx[0] = obj_mainchara.x
    self.remy[0] = obj_mainchara.y
    self.facing[0] = global.facing
    if (self.usprite == spr_susieu_dark)
        self.x = (self.remx[self.target] - 6)
    else
        self.x = (self.remx[self.target] - 4)
    if (self.usprite == spr_susieu_dark)
        self.y = (self.remy[self.target] - 16)
    else
        self.y = (self.remy[self.target] - 12)
    if (abs((self.remx[(self.target + 1)] - self.remx[self.target])) > 4)
        self.runmove = 1
    if (abs((self.remy[(self.target + 1)] - self.remy[self.target])) > 4)
        self.runmove = 1
    self.dir = self.facing[self.target]
}
if (self.x != self.nowx)
    self.walk = 1
if (self.y != self.nowy)
    self.walk = 1
if (self.walk == 1)
    self.walkbuffer = 6
if ((self.walkbuffer > 3) && (self.fun == 0))
{
    self.walktimer += 1.5
    if (self.runmove == 1)
        self.walktimer += 1.5
    if (self.walktimer >= 40)
        self.walktimer -= 40
    if (self.walktimer < 10)
        self.image_index = 0
    if (self.walktimer >= 10)
        self.image_index = 1
    if (self.walktimer >= 20)
        self.image_index = 2
    if (self.walktimer >= 30)
        self.image_index = 3
}
if ((self.walkbuffer <= 0) && (self.fun == 0))
{
    if (self.walktimer < 10)
        self.walktimer = 9.5
    if ((self.walktimer >= 10) && (self.walktimer < 20))
        self.walktimer = 19.5
    if ((self.walktimer >= 20) && (self.walktimer < 30))
        self.walktimer = 29.5
    if (self.walktimer >= 30)
        self.walktimer = 39.5
    self.image_index = 0
}
self.walkbuffer -= 0.75
if (self.fun == 0)
{
    if (self.facing[self.target] == 0)
        self.sprite_index = self.dsprite
    if (self.facing[self.target] == 1)
        self.sprite_index = self.rsprite
    if (self.facing[self.target] == 2)
        self.sprite_index = self.usprite
    if (self.facing[self.target] == 3)
        self.sprite_index = self.lsprite
}
if ((self.dsprite == spr_ralseid) && ((global.interact == 0) && (self.fun == 0)))
{
    self.distfrommcx = (obj_mainchara.x - (self.x + 4))
    self.distfrommcy = (obj_mainchara.y - (self.y + 12))
    if ((abs(self.distfrommcy) <= 10) && (abs(self.distfrommcx) <= 16))
    {
        if ((self.distfrommcx <= 0) && (global.facing == 1))
            self.blushtimer += 1
        if ((self.distfrommcx >= 0) && (global.facing == 3))
            self.blushtimer += 1
    }
    else
        self.blushtimer = 0
    if (self.blushtimer >= 300)
    {
        if (self.sprite_index == self.dsprite)
            self.sprite_index = self.dsprite_blush
        if (self.sprite_index == self.rsprite)
            self.sprite_index = self.rsprite_blush
        if (self.sprite_index == self.usprite)
            self.sprite_index = self.usprite_blush
        if (self.sprite_index == self.lsprite)
            self.sprite_index = self.lsprite_blush
    }
}
else
    self.blushtimer = 0
