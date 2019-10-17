self.bikeflip = 0
self.becomeflash = 0
self.turnt = 0
self.turns = 0
self.talktimer = 0
self.talkmax = 90
self.state = 0
self.flash = 0
self.siner = 0
self.fsiner = 0
self.talked = 0
self.attacked = 0
self.hurt = 0
self.hurttimer = 0
self.hurtshake = 0
self.shakex = 0
self.mywriter = 343249823
self.acting = 0
self.actcon = 0
self.acttimer = 0
self.mercymod = 0
self.maxmercy = 9999
self.warned = 0
self.compliment = 0
self.tired = 0
self.fixed = 0
self.attacks = 0
self.dodgetimer = 0
self.candodge = 0
self.con = 0
self.battlecancel = 0
self.nexttry = 0
self.mytarget = 3
self.image_speed = 0
self.image_xscale = 2
self.image_yscale = 2
self.idlesprite = 594
self.hurtsprite = spr_blockguy_overworld
self.sparedsprite = 597
self.rr = choose(0, 1, 2, 3)
self.headpart = 1
self.part[0] = 0
if (self.rr == 0)
{
    self.headpart = 3
    self.part[1] = 2
    self.part[2] = 3
    self.part[3] = 1
}
if (self.rr == 1)
{
    self.headpart = 3
    self.part[1] = 3
    self.part[2] = 2
    self.part[3] = 1
}
if (self.rr == 2)
{
    self.headpart = 1
    self.part[1] = 1
    self.part[2] = 3
    self.part[3] = 2
}
if (self.rr == 3)
{
    self.headpart = 2
    self.part[1] = 2
    self.part[2] = 1
    self.part[3] = 3
}
self.part[4] = 4
self.maxpart = 5
self.siner = 0
self.floatsin = 0
self.party[0] = 28
self.party[1] = 54
self.party[2] = 70
self.floating = 0
self.swaptime = 10
self.bodyfade = 0
self.bodyalpha = 1
self.swapx = 0
self.sinmomentum = 0
self.custom[0] = 4.5
self.custom[1] = 3
self.custom[2] = 1.5
self.select[0] = -1
self.select[1] = -1
self.select[2] = -1
self.selectpart[0] = 0
self.selectpart[1] = 0
self.selectpart[2] = 0
self.partyb[0] = 0
self.partyb[1] = 0
self.partyb[2] = 0
self.selecty = 0
self.selected = 0
self.selecttotal = 0
self.selectx[0] = 0
self.movex[0] = 0
self.movex[1] = 0
self.movex[2] = 0
self.threebuffer = 0
self.finishtimer = 0
self.hurk = 0
