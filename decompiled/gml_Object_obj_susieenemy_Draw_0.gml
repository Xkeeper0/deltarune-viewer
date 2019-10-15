if (self.state == 3)
{
    self.sleepcounter = 99
    self.sleeping = 0
    global.monstercomment[self.myself] = scr_84_get_lang_string("obj_susieenemy_slash_Draw_0_gml_5_0"@8708)
    global.monsterstatus[self.myself] = 0
    self.idlesprite = spr_susie_enemy
    self.hurttimer = (self.hurttimer - 1)
    if (self.hurttimer < 0)
        self.state = 0
    else
    {
        if (global.monster[self.myself] == 0)
        {
            snd_play(snd_sussurprise)
            with(obj_susieandlancer_event)
            {
                with(self.s)
                {
                    self.visible = 1
                    self.sprite_index = spr_susie_enemy_defeat
                    self.depth = 100
                }
            }
            self.visible = 0
            instance_destroy()
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
        draw_sprite_ext(self.hurtsprite, 0, (self.x + self.shakex), self.y, 2, 2, 0, self.image_blend, 1)
    }
}
if (self.state == 0)
{
    self.siner = (self.siner + 1)
    self.thissprite = self.idlesprite
    if (global.mercymod[self.myself] >= global.mercymax[self.myself])
        self.thissprite = self.idlesprite
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
