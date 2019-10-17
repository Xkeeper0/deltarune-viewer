if (self.state == 3)
{
    if (global.monsterhp[self.myself] < (global.monstermaxhp[self.myself] / 4))
    {
        with (obj_monsterparent)
            self.defeated = 1
        global.monsterhp[self.myself] = (global.monstermaxhp[self.myself] / 4)
    }
    self.hurttimer -= 1
    if (self.hurttimer < 0)
        self.state = 0
    else
    {
        if (global.monster[self.myself] == 0)
            self.hspeed = 12
        self.hurtshake += 1
        if (self.hurtshake > 1)
        {
            if (self.shakex > 0)
                self.shakex -= 1
            if (self.shakex < 0)
                self.shakex += 1
            self.shakex = (-self.shakex)
            self.hurtshake = 0
        }
        draw_sprite_ext(spr_lancerbike_hurt, (self.hurttimer / 2), (self.x + self.shakex), self.y, 2, 2, 0, self.image_blend, 1)
    }
}
if (self.state == 4)
{
    self.dodgetimer += 1
    self.dodgeamt = (cos((((self.dodgetimer * 2) * 3.14159265358979) / 15)) * 2)
    draw_sprite_ext(spr_lancerbike_l, 0, self.x, self.y, self.dodgeamt, 2, 0, self.image_blend, 1)
    if (self.dodgetimer >= 15)
        self.state = 0
}
if (self.state == 0)
{
    self.siner += 1
    self.thissprite = self.idlesprite
    if (global.mercymod[self.myself] >= global.mercymax[self.myself])
        self.thissprite = self.idlesprite
    draw_sprite_ext(self.thissprite, (self.siner / 5), self.x, self.y, 2, 2, 0, self.image_blend, 1)
    if (self.flash == 1)
    {
        self.fsiner += 1
        d3d_set_fog(1, 16777215, 0, 1)
        draw_sprite_ext(self.thissprite, (self.siner / 5), self.x, self.y, 2, 2, 0, self.image_blend, (((-cos((self.fsiner / 5))) * 0.4) + 0.6))
        d3d_set_fog(0, 0, 0, 0)
    }
}
if (self.becomeflash == 0)
    self.flash = 0
self.becomeflash = 0
