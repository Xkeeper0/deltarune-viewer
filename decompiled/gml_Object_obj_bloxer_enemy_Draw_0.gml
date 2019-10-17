self.threebuffer -= 1
self.ss = sin((self.siner / 4))
self.ssb = cos((self.siner / 4))
if (self.swaptime == 5)
{
    self.returncount = 0
    for (self.i = 0; self.i < 3; self.i += 1)
    {
        self.movex[self.i] += self.xspeed
        if (self.movex[self.i] <= 0)
        {
            self.movex[self.i] = 0
            self.returncount += 1
        }
    }
    if (self.returncount >= 3)
    {
        self.swaptime = 6
        self.part[1] = self.selectpart[0]
        self.part[2] = self.selectpart[1]
        self.part[3] = self.selectpart[2]
        if ((self.part[1] == 1) && ((self.part[2] == 2) && (self.part[3] == 3)))
        {
            self.part[1] = 6
            scr_mercyadd(self.myself, 100)
        }
    }
    else
    {
        self.xspeed -= 2
        draw_sprite_ext(spr_blockguy_part, self.part[3], (self.x + self.movex[2]), self.partyb[2], 2, 2, 0, 0x00FFFFFF, 1)
        draw_sprite_ext(spr_blockguy_part, self.part[2], (self.x + self.movex[1]), self.partyb[1], 2, 2, 0, 0x00FFFFFF, 1)
        draw_sprite_ext(spr_blockguy_part, self.part[1], (self.x + self.movex[0]), self.partyb[0], 2, 2, 0, 0x00FFFFFF, 1)
    }
}
if ((self.swaptime == 2) || (self.swaptime == 3))
{
    if (self.sinmomentum < 0.8)
        self.sinmomentum += 0.05
    self.floatsin += self.sinmomentum
    if (self.threebuffer <= 0)
        self.selecty = ((self.y + 30) + (self.selecttotal * 26))
    if (self.select[0] < 0)
        self.partyb[0] = ((self.y + 53) + (sin(((self.floatsin / 8) + self.custom[0])) * 25))
    if (self.select[1] < 0)
        self.partyb[1] = ((self.y + 53) + (sin(((self.floatsin / 8) + self.custom[1])) * 25))
    if (self.select[2] < 0)
        self.partyb[2] = ((self.y + 53) + (sin(((self.floatsin / 8) + self.custom[2])) * 25))
    self.closest = -1
    self.closefactor = 99
    for (self.i = 0; self.i < 3; self.i += 1)
    {
        self.scolor[self.i] = 8421504
        if (self.select[self.i] < 0)
        {
            self.cfactor = abs((self.partyb[self.i] - self.selecty))
            if ((self.cfactor < self.closefactor) && (self.cfactor < 24))
            {
                self.closefactor = self.cfactor
                self.closest = self.i
            }
        }
        else
        {
            if (self.movex[self.i] < 60)
                self.movex[self.i] += 6
            self.scolor[self.i] = 65535
            self.idealy = ((self.y + 28) + (self.select[self.i] * 25))
            if (abs((self.partyb[self.i] - self.idealy)) < 6)
                self.partyb[self.i] = self.idealy
            if (self.partyb[self.i] < self.idealy)
                self.partyb[self.i] += 6
            if (self.partyb[self.i] > self.idealy)
                self.partyb[self.i] -= 6
        }
    }
    self.arrowcolor = 0x00FFFFFF
    for (self.i = 0; self.i < 3; self.i += 1)
    {
        if (self.closest == self.i)
        {
            self.scolor[self.i] = 16777215
            self.arrowcolor = 0x0000FFFF
        }
    }
    draw_sprite_ext(spr_blockguy_part, self.part[3], (self.x + self.movex[2]), self.partyb[2], 2, 2, 0, self.scolor[2], 1)
    draw_sprite_ext(spr_blockguy_part, self.part[2], (self.x + self.movex[1]), self.partyb[1], 2, 2, 0, self.scolor[1], 1)
    draw_sprite_ext(spr_blockguy_part, self.part[1], (self.x + self.movex[0]), self.partyb[0], 2, 2, 0, self.scolor[0], 1)
    self.arrowpush = (self.threebuffer * 4)
    if (self.arrowpush < 0)
        self.arrowpush = 0
    self.ypush = 0
    if (self.threebuffer == 1)
        self.ypush = 15
    draw_set_color(self.arrowcolor)
    if ((self.finishtimer < 8) && (self.selecttotal < (self.maxpart - 2)))
        draw_arrow((((self.x - 50) + (sin((self.floatsin / 6)) * 2)) + self.arrowpush), ((self.selecty + 10) + self.ypush), (((self.x - 10) + (sin((self.floatsin / 6)) * 2)) + self.arrowpush), ((self.selecty + 10) + self.ypush), 16)
    if (button3_p() && ((self.threebuffer < 0) && (self.selecttotal < (self.maxpart - 2))))
    {
        if (self.closest >= 0)
        {
            self.selectpart[self.selecttotal] = self.part[(1 + self.closest)]
            self.select[self.closest] = self.selecttotal
            self.selecttotal += 1
            self.threebuffer = 6
        }
        if (self.selecttotal >= (self.maxpart - 2))
            self.swaptime = 3
    }
    if (self.swaptime == 3)
        self.finishtimer += 1
    if (self.finishtimer >= 13)
    {
        self.swaptime = 5
        self.xspeed = 4
    }
}
if ((self.swaptime == 0) || ((self.swaptime == 1) || (self.swaptime == 6)))
{
    self.hurk = 0
    if (self.state == 3)
    {
        self.hurk = 1
        if (global.monsterhp[self.myself] <= (global.monstermaxhp[self.myself] / 3))
        {
            global.monsterstatus[self.myself] = 1
            if (global.monstercomment[self.myself] == " ")
                global.monstercomment[self.myself] = scr_84_get_lang_string("obj_bloxer_enemy_slash_Draw_0_gml_141_0")
        }
        self.hurttimer -= 1
        if (self.hurttimer < 0)
            self.state = 0
        else
        {
            if (global.monster[self.myself] == 0)
                self.hspeed = 10
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
        }
    }
    if (self.swaptime == 0)
        self.siner += 1
    if (self.swaptime == 1)
        self.swapx += 2
    if (self.swaptime == 6)
    {
        if (self.swapx > 0)
            self.swapx -= 2
        if (self.swapx <= 0)
            self.swaptime = 0
    }
    if ((self.swapx >= 16) && (self.swaptime == 1))
        self.swaptime = 2
    if (self.swaptime == 0)
    {
        if ((self.part[1] == 1) && ((self.part[2] == 2) && (self.part[3] == 3)))
            self.part[1] = 6
    }
    if ((self.swaptime == 1) && (self.part[1] == 6))
        self.part[1] = 1
    self.thissprite = spr_blockguy_part
    if (self.hurk == 1)
        self.thissprite = spr_blockguy_part_hurt
    draw_sprite_ext(self.thissprite, 5, ((((self.x - 24) + (self.ss * 2)) + (self.swapx * 1.5)) + self.shakex), ((self.y + 54) + (self.ssb * 2)), 2, 2, 0, 0x00FFFFFF, 1)
    draw_sprite_ext(self.thissprite, self.part[4], ((self.x - self.ss) + self.shakex), ((self.y + 100) - self.swapx), 2, 2, 0, 0x00FFFFFF, 1)
    if ((self.swaptime == 1) || (self.swaptime == 6))
        draw_sprite_ext(self.thissprite, self.part[0], ((self.x + (self.ss * 2)) + self.shakex), (self.y + self.swapx), 2, 2, 0, 0x00FFFFFF, 1)
    draw_sprite_ext(self.thissprite, self.part[3], (((self.x - 4) + (self.ss * 2)) + self.shakex), (self.y + 78), 2, 2, 0, 0x00FFFFFF, 1)
    draw_sprite_ext(self.thissprite, self.part[2], (((self.x + 4) - (self.ss * 2)) + self.shakex), (self.y + 54), 2, 2, 0, 0x00FFFFFF, 1)
    draw_sprite_ext(self.thissprite, self.part[1], ((self.x + (self.ss * 2)) + self.shakex), (self.y + 28), 2, 2, 0, 0x00FFFFFF, 1)
    if (self.swaptime == 0)
        draw_sprite_ext(self.thissprite, self.part[0], ((self.x + (self.ss * 2)) + self.shakex), (self.y + self.swapx), 2, 2, 0, 0x00FFFFFF, 1)
    if ((self.state == 0) && (self.flash == 1))
    {
        self.fsiner += 1
        d3d_set_fog(1, 16777215, 0, 1)
        draw_sprite_ext(self.thissprite, 5, ((((self.x - 24) + (self.ss * 2)) + (self.swapx * 1.5)) + self.shakex), ((self.y + 54) + (self.ssb * 2)), 2, 2, 0, self.image_blend, (((-cos((self.fsiner / 5))) * 0.4) + 0.6))
        draw_sprite_ext(self.thissprite, self.part[4], ((self.x - self.ss) + self.shakex), ((self.y + 100) - self.swapx), 2, 2, 0, self.image_blend, (((-cos((self.fsiner / 5))) * 0.4) + 0.6))
        if ((self.swaptime == 1) || (self.swaptime == 6))
            draw_sprite_ext(self.thissprite, self.part[0], ((self.x + (self.ss * 2)) + self.shakex), (self.y + self.swapx), 2, 2, 0, self.image_blend, (((-cos((self.fsiner / 5))) * 0.4) + 0.6))
        draw_sprite_ext(self.thissprite, self.part[3], (((self.x - 4) + (self.ss * 2)) + self.shakex), (self.y + 78), 2, 2, 0, self.image_blend, (((-cos((self.fsiner / 5))) * 0.4) + 0.6))
        draw_sprite_ext(self.thissprite, self.part[2], (((self.x + 4) - (self.ss * 2)) + self.shakex), (self.y + 54), 2, 2, 0, self.image_blend, (((-cos((self.fsiner / 5))) * 0.4) + 0.6))
        draw_sprite_ext(self.thissprite, self.part[1], ((self.x + (self.ss * 2)) + self.shakex), (self.y + 28), 2, 2, 0, self.image_blend, (((-cos((self.fsiner / 5))) * 0.4) + 0.6))
        d3d_set_fog(0, 0, 0, 0)
    }
}
if (self.swaptime == 10)
{
    self.introtimer = 0
    self.idealy[0] = 0
    self.idealy[1] = 28
    self.idealy[2] = 54
    self.idealy[3] = 78
    self.idealy[4] = 100
    for (self.i = 0; self.i < 5; self.i += 1)
    {
        self.cury[self.i] = 100
        self.yfactor[self.i] = ((100 - self.idealy[self.i]) / 16)
    }
    self.cury[0] = 78
    self.yfactor[0] = 4.875
    self.swaptime = 11
}
if (self.swaptime == 11)
{
    draw_sprite_ext(spr_blockguy_part, 5, ((self.x - (self.introtimer * 2)) + 6), (self.y + self.cury[2]), 2, 2, 0, 0x00FFFFFF, 1)
    for (self.i = 4; self.i >= 0; self.i -= 1)
    {
        self.cury[self.i] -= self.yfactor[self.i]
        draw_sprite_ext(spr_blockguy_part, self.part[self.i], self.x, (self.y + self.cury[self.i]), 2, 2, 0, 0x00FFFFFF, 1)
    }
    draw_sprite_ext(spr_blockguy_part, self.part[self.headpart], self.x, (self.y + self.cury[self.headpart]), 2, 2, 0, 0x00FFFFFF, 1)
    draw_sprite_ext(spr_blockguy_part, self.part[0], self.x, (self.y + self.cury[0]), 2, 2, 0, 0x00FFFFFF, 1)
    self.introtimer += 1
    if (self.introtimer >= 16)
        self.swaptime = 0
}
if (self.becomeflash == 0)
    self.flash = 0
self.becomeflash = 0
