if (self.state == 3)
{
    if (global.monsterhp[self.myself] <= (global.monstermaxhp[self.myself] / 3))
    {
        global.monsterstatus[self.myself] = 1
        if (global.monstercomment[self.myself] == " ")
            global.monstercomment[self.myself] = scr_84_get_lang_string("obj_smallcheckers_enemy_slash_Draw_0_gml_6_0")
    }
    self.hurttimer -= 1
    if (self.hurttimer < 0)
        self.state = 0
    else
    {
        if (global.monster[self.myself] == 0)
        {
            self.hspeed = 12
            self.turnt -= 8
            self.vspeed = -4
        }
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
        draw_sprite_ext(spr_smallchecker_hurt, 0, (self.x + self.shakex), self.y, 2, 2, 0, self.image_blend, 1)
    }
}
if (self.state == 0)
{
    self.siner += 1
    self.thissprite = spr_smallchecker_idle
    if (global.mercymod[self.myself] >= global.mercymax[self.myself])
        self.thissprite = spr_smallchecker_run
    draw_sprite_ext(self.thissprite, (self.siner / 3), self.x, self.y, 2, 2, 0, self.image_blend, 1)
    if (self.flash == 1)
    {
        self.fsiner += 1
        d3d_set_fog(1, 16777215, 0, 1)
        draw_sprite_ext(self.thissprite, (self.siner / 3), self.x, self.y, 2, 2, 0, self.image_blend, (((-cos((self.fsiner / 5))) * 0.4) + 0.6))
        d3d_set_fog(0, 0, 0, 0)
    }
}
if (self.becomeflash == 0)
    self.flash = 0
self.becomeflash = 0
