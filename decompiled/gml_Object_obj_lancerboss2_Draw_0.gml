if (self.state == 3)
{
    self.shakesine = 0
    self.siner = 0
    self.hurttimer = (self.hurttimer - 1)
    if (self.hurttimer < 0)
        self.state = 0
    else
    {
        if (global.monster[self.myself] == 0)
            scr_defeatrun()
        self.hurtshake = (self.hurtshake + 1)
        if (self.hurtshake > 1)
        {
            if (self.shakex > 0)
                self.shakex = (self.shakex - 1)
            if (self.shakex < 0)
                self.shakex = (self.shakex + 1)
            self.shakex = (variable)(- self.shakex)
            self.hurtshake = 0
        }
        if ((global.monsterhp[self.myself] / global.monstermaxhp[self.myself]) <= 0.65)
            self.hurtlevel = 1
        if ((global.monsterhp[self.myself] / global.monstermaxhp[self.myself]) <= 0.2)
            self.hurtlevel = 2
        draw_sprite_ext(self.hurtsprite, 0, (self.x + (self.shakex * 2)), self.y, 2, 2, 0, self.image_blend, 1)
    }
}
if (self.state == 0)
{
    self.shakesine = (self.shakesine + 1)
    self.siner = (self.siner + 1)
    self.shx = random(((sin((self.shakesine / 6)) * self.hurtlevel) / 1.5))
    self.thissprite = self.idlesprite
    if (global.mercymod[self.myself] >= global.mercymax[self.myself])
        self.thissprite = self.sparedsprite
    draw_sprite_ext(self.thissprite, self.hurtlevel, (self.x + self.shx), self.y, 2, 2, 0, self.image_blend, 1)
    if (self.flash == 1)
    {
        self.fsiner = (self.fsiner + 1)
        d3d_set_fog(1, 16777215, 0, 1)
        draw_sprite_ext(self.thissprite, self.hurtlevel, self.x, self.y, 2, 2, 0, self.image_blend, (((variable)(- cos((self.fsiner / 5))) * 0.4) + 0.6))
        d3d_set_fog(0, 0, 0, 0)
    }
}
if (self.becomeflash == 0)
    self.flash = 0
self.becomeflash = 0
