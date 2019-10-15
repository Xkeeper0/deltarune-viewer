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
self.hurtamt = 0
self.hurttimer = 0
self.hurtshake = 0
self.mywriter = 343249823
self.acting = 0
self.actcon = 0
self.acttimer = 0
self.mercymod = -9999
self.maxmercy = 9999
self.warned = 0
self.compliment = 0
self.tired = 0
self.pirouette = 0
self.pirouettecounter = 0
self.pfactor = 1
self.hypnosis = 0
self.hypnosiscounter = 0
self.chaosdance = 0
self.reminvc = global.invc
self.i = 0
while(true)
{
    if (self.i < 4)
    {
        self.remmaxhp[self.i] = global.maxhp[self.i]
        self.i = (self.i + 1)
        continue
    }
    break
}
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
self.idlesprite = 580
self.hurtsprite = 580
self.sparedsprite = 580
self.body = instance_create(self.x, self.y, obj_joker_body)
self.laughnoise = 0
self.beepnoise = 0
self.beepbuffer = 0
self.burstnoise = 0
self.jturn = 0
self.jattack = 0
global.tempflag[4] = 1
