if (self.state == 3)
{
    global.mercymod[self.myself] = 0
    self.traitorp = 1
    global.flag[20] = 1
    with(obj_jigsawryenemy)
    {
        if (self.traitorp == 0)
            self.traitorp = 2
        global.mercymod[self.myself] = 0
    }
    if (global.monsterhp[self.myself] <= (global.monstermaxhp[self.myself] - 20))
    {
        global.monsterstatus[self.myself] = 1
        if (global.monstercomment[self.myself] == " "@24)
            global.monstercomment[self.myself] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Draw_0_gml_15_0"@8130)
    }
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
        draw_sprite_ext(self.hurtsprite, 0, (self.x + self.shakex), self.y, 2, 2, 0, self.image_blend, 1)
    }
}
if (self.state == 0)
{
    self.siner = (self.siner + 1)
    self.thissprite = self.idlesprite
    if (global.mercymod[self.myself] >= global.mercymax[self.myself])
        self.thissprite = self.sparedsprite
    if (global.flag[20] == 1)
        self.thissprite = self.hurtsprite
    draw_sprite_ext(self.thissprite, (self.siner / 6), self.x, self.y, 2, 2, 0, self.image_blend, 1)
    if (self.flash == 1)
    {
        self.fsiner = (self.fsiner + 1)
        d3d_set_fog(1, 16777215, 0, 1)
        draw_sprite_ext(self.thissprite, (self.siner / 6), self.x, self.y, 2, 2, 0, self.image_blend, (((variable)(- cos((self.fsiner / 5))) * 0.4) + 0.6))
        d3d_set_fog(0, 0, 0, 0)
    }
}
if (self.becomeflash == 0)
    self.flash = 0
self.becomeflash = 0
