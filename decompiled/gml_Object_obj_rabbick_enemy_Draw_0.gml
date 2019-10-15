self.animsiner = (self.animsiner + 1)
self.image_xscale = (2 - (self.blowamt / 100))
if (self.blown == 1)
    self.image_xscale = 2
self.xoff = 0
if (self.image_xscale < 2)
    self.xoff = ((self.originalwidth - self.sprite_width) / 2)
self.blowanimtimer = (self.blowanimtimer - 1)
if (self.blowanimtimer > 6)
    _temp_local_var_1 = (self.blown == 0)
else
    _temp_local_var_1 = 0
if _temp_local_var_1
{
    if (self.onoff == 2)
        self.onoff = 0
    if (self.onoff == 1.5)
        self.onoff = 2
    if (self.onoff == 0.5)
        self.onoff = 1
    if (self.onoff == 0)
    {
        self.ashake = (variable)(- self.shakeamt)
        self.onoff = 0.5
    }
    if (self.onoff == 1)
    {
        self.ashake = self.shakeamt
        if (self.shakeamt > 0)
            self.shakeamt = (self.shakeamt - 1)
        self.onoff = 1.5
    }
    if (self.image_xscale > 1.5)
        draw_sprite_ext(spr_rabbick_enemy_hurt, 0, ((self.x + self.xoff) + self.ashake), self.y, self.image_xscale, self.image_yscale, 0, 0xFFFFFF, 1)
    else
        draw_sprite_ext(spr_rabbick_enemy_hurt, 1, (((self.x + self.xoff) + self.ashake) - 8), self.y, (self.image_xscale + 0.5), self.image_yscale, 0, 0xFFFFFF, 1)
}
else
{
    if (self.state == 3)
    {
        if (global.monsterhp[self.myself] <= (global.monstermaxhp[self.myself] / 3))
        {
            global.monsterstatus[self.myself] = 1
            if (global.monstercomment[self.myself] == " "@24)
                global.monstercomment[self.myself] = scr_84_get_lang_string("obj_rabbick_enemy_slash_Draw_0_gml_45_0"@8481)
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
            self.thissprite = self.hurtsprite
            if (self.image_xscale > 1.5)
                draw_sprite_ext(self.thissprite, 0, ((self.x + self.xoff) + self.shakex), self.y, self.image_xscale, self.image_yscale, 0, 0xFFFFFF, 1)
            else
                draw_sprite_ext(self.thissprite, 1, (((self.x + self.xoff) + self.shakex) - 8), self.y, (self.image_xscale + 0.5), self.image_yscale, 0, 0xFFFFFF, 1)
        }
    }
    if (self.state == 0)
    {
        self.thissprite = self.idlesprite
        if (global.mercymod[self.myself] >= global.mercymax[self.myself])
            _temp_local_var_2 = 1
        else
            _temp_local_var_2 = (self.blown == 1)
        if _temp_local_var_2
            self.thissprite = self.sparedsprite
        draw_sprite_ext(self.thissprite, (self.animsiner / 5), (self.x + self.xoff), self.y, self.image_xscale, self.image_yscale, 0, self.image_blend, 1)
        if (self.flash == 1)
        {
            self.fsiner = (self.fsiner + 1)
            d3d_set_fog(1, 16777215, 0, 1)
            draw_sprite_ext(self.thissprite, (self.animsiner / 5), (self.x + self.xoff), self.y, self.image_xscale, self.image_yscale, 0, 0xFFFFFF, (((variable)(- cos((self.fsiner / 5))) * 0.4) + 0.6))
            d3d_set_fog(0, 0, 0, 0)
        }
    }
    if (self.becomeflash == 0)
        self.flash = 0
    self.becomeflash = 0
}
