if (self.state == 3)
{
    self.hurttimer = (self.hurttimer - 1)
    if (self.hurttimer < 0)
        self.state = 0
    else
    {
        if (global.monster[self.myself] == 0)
        {
            self.hspeed = 12
            self.turnt = (self.turnt - 8)
            self.vspeed = -4
        }
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
        draw_sprite_ext(spr_diamondm_hurt, 0, (self.x + self.shakex), self.y, 2, 2, 0, self.image_blend, 1)
    }
}
if (self.state == 0)
{
    self.siner = (self.siner + 1)
    self.thissprite = spr_diamondm_idle
    if (global.mercymod[self.myself] >= global.mercymax[self.myself])
        self.thissprite = spr_diamondm_spared
    draw_sprite_ext(self.thissprite, (self.siner / 5), self.x, self.y, 2, 2, 0, self.image_blend, 1)
    if (self.flash == 1)
    {
        self.fsiner = (self.fsiner + 1)
        d3d_set_fog(1, 16777215, 0, 1)
        draw_sprite_ext(self.thissprite, (self.siner / 5), self.x, self.y, 2, 2, 0, self.image_blend, (((variable)(- cos((self.fsiner / 5))) * 0.4) + 0.6))
        d3d_set_fog(0, 0, 0, 0)
    }
}
if (self.becomeflash == 0)
    self.flash = 0
self.becomeflash = 0
