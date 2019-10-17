if (self.state == 3)
{
    if (global.monsterhp[self.myself] <= (global.monstermaxhp[self.myself] / 3))
    {
        global.monsterstatus[self.myself] = 1
        if (global.monstercomment[self.myself] == " ")
            global.monstercomment[self.myself] = scr_84_get_lang_string("obj_ponman_enemy_slash_Draw_0_gml_6_0")
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
        draw_sprite_ext(spr_ponman_idle, 0, (self.x + self.shakex), self.y, 2, 2, 0, self.image_blend, 1)
        if (self.sleeping == 0)
            draw_sprite_ext(spr_ponman_eye, 0, ((self.x + 28) + self.eyex), ((self.y + 32) + self.eyey), 2, 2, 0, 0x00FFFFFF, 1)
        if (self.sleeping == 1)
        {
            scr_mercyadd(self.myself, -100)
            self.sprite_index = spr_ponman_idle
            self.image_index = 0
            self.sleeping = 0
        }
    }
}
if (self.state == 0)
{
    self.thissprite = spr_ponman_idle
    self.this_index = self.image_index
    if (self.sleeping == 1)
    {
        self.thissprite = spr_ponman_appear
        self.this_index = self.sleep_index
        if (self.sleep_index > 0.5)
            self.sleep_index -= 0.25
    }
    draw_sprite_ext(self.thissprite, self.this_index, self.x, self.y, 2, 2, 0, self.image_blend, 1)
    if (self.sleeping == 0)
        draw_sprite_ext(spr_ponman_eye, 0, ((self.x + 28) + self.eyex), ((self.y + 32) + self.eyey), 2, 2, 0, 0x00FFFFFF, 1)
    if (self.flash == 1)
    {
        self.fsiner += 1
        d3d_set_fog(1, 16777215, 0, 1)
        draw_sprite_ext(self.thissprite, self.this_index, self.x, self.y, 2, 2, 0, self.image_blend, (((-cos((self.fsiner / 5))) * 0.4) + 0.6))
        d3d_set_fog(0, 0, 0, 0)
    }
}
if (self.becomeflash == 0)
    self.flash = 0
self.becomeflash = 0
