self.maxdelaytimer += 1
if (self.spelluse == 1)
{
    if (scr_monsterpop() > 0)
    {
        for (self.xyz = 0; self.xyz < 3; self.xyz += 1)
        {
            if (self.maxdelaytimer == self.spelldelay[self.xyz])
            {
                if (self.charitem[self.xyz] == 1)
                {
                    with (global.charinstance[self.xyz])
                        self.state = 4
                }
                if (self.charspell[self.xyz] == 1)
                {
                    with (global.charinstance[self.xyz])
                        self.state = 2
                }
            }
        }
    }
}
if (self.maxdelaytimer >= self.maxdelay)
    self.active = 1
if (self.active == 1)
{
    for (self.i = 0; self.i < 3; self.i += 1)
    {
        draw_set_color(self.bcolor)
        if ((self.i == 1) || (self.i == 2))
            draw_rectangle(self.x, (self.y + (38 * self.i)), (self.x + 300), ((self.y + (38 * self.i)) + 2), 0)
        if ((global.char[self.i] != 0) && ((global.charauto[global.char[self.i]] == 0) && (self.havechar[self.i] == 1)))
        {
            self.j = global.char[self.i]
            self.fullbox = 0
            if (self.j == 1)
            {
                draw_set_color(0x00FF0000)
                if (self.pressbuffer[1] > 0)
                    draw_set_color(merge_color(0x00FF0000, 0x00FFFFFF, (self.pressbuffer[1] / 5)))
            }
            if (self.j == 2)
            {
                draw_set_color(0x00800080)
                if (self.pressbuffer[2] > 0)
                    draw_set_color(merge_color(0x00800080, 0x00FFFFFF, (self.pressbuffer[2] / 5)))
            }
            if (self.j == 3)
            {
                draw_set_color(0x00008000)
                if (self.pressbuffer[3] > 0)
                    draw_set_color(merge_color(0x00008000, 0x00FFFFFF, (self.pressbuffer[3] / 5)))
            }
            draw_rectangle((self.x + 78), (self.y + (38 * self.i)), ((self.x + 80) + (15 * self.boltspeed)), ((self.y + (38 * self.i)) + 36), 1)
            draw_rectangle((self.x + 79), ((self.y + (38 * self.i)) + 1), (((self.x + 80) + (15 * self.boltspeed)) - 1), ((self.y + (38 * self.i)) + 35), 1)
            draw_sprite(spr_pressfront, (self.j - 1), self.x, (self.y + (38 * self.i)))
            if (global.flag[13] == 0)
                draw_sprite(spr_pressfront_b, 0, self.x, (self.y + (38 * self.i)))
            if (global.flag[13] == 1)
                draw_sprite(spr_pressfront_b, self.i, self.x, (self.y + (38 * self.i)))
            draw_sprite(spr_pressspot, (self.j - 1), (self.x + 80), (self.y + (38 * self.i)))
        }
    }
    self.boltcount[0] = 0
    self.boltcount[1] = 0
    self.boltcount[2] = 0
    if (self.method == 1)
    {
        for (self.i = 0; self.i < self.bolttotal; self.i += 1)
        {
            self.offset = self.boltchar[self.i]
            if ((self.boltframe[self.i] - self.boltx) < -5)
                self.boltalive[self.i] = 0
            self.boltalpha = 1
            if ((self.boltframe[self.i] - self.boltx) < 0)
                self.boltalpha = (1 + ((self.boltframe[self.i] - self.boltx) / 3))
            else if ((self.imagetimer == 0) && (self.boltalive[self.i] == 1))
            {
                self.img = instance_create((((self.x + 80) + (self.boltframe[self.i] * self.boltspeed)) - (self.boltx * self.boltspeed)), (self.y + (38 * self.offset)), obj_afterimage)
                with (self.img)
                {
                    self.sprite_index = spr_attackspot
                    self.image_alpha = 0.4
                }
            }
            if (self.boltalive[self.i] == 1)
            {
                draw_sprite_ext(spr_attackspot, 0, (((self.x + 80) + (self.boltframe[self.i] * self.boltspeed)) - (self.boltx * self.boltspeed)), (self.y + (38 * self.offset)), 1, 1, 0, 0x00FFFFFF, self.boltalpha)
                self.boltcount[self.boltchar[self.i]] += 1
            }
        }
        for (self.i = 0; self.i < 3; self.i += 1)
        {
            if ((self.boltcount[self.i] == 0) && ((self.havechar[self.i] == 1) && (self.attacked[self.i] == 0)))
            {
                self.attacked[self.i] = 1
                self.target = self.i
                event_user(1)
            }
        }
    }
    if (scr_monsterpop() > 0)
    {
        if (global.flag[13] == 1)
        {
            if (button1_p() && (self.havechar[0] == 1))
                scr_boltcheck(0)
            if (button2_p() && (self.havechar[1] == 1))
                scr_boltcheck(1)
            if (button3_p() && (self.havechar[2] == 1))
                scr_boltcheck(2)
        }
        else if button1_p()
            scr_boltcheck_onebutton(0)
    }
    else
    {
        self.fakefade = 1
        if (self.posttimer < (self.timermax - 35))
            self.posttimer = (self.timermax - 34)
    }
    self.imagetimer += 1
    self.boltx += 1
    self.pressbuffer[0] -= 1
    self.pressbuffer[1] -= 1
    self.pressbuffer[2] -= 1
    if (self.imagetimer > 1)
        self.imagetimer = 0
    self.goahead = 0
    if ((self.attacked[0] == 1) || (self.havechar[0] == 0))
    {
        if ((self.attacked[1] == 1) || (self.havechar[1] == 0))
        {
            if ((self.attacked[2] == 1) || (self.havechar[2] == 0))
                self.goahead = 1
        }
    }
    if (scr_monsterpop() == 0)
        self.goahead = 1
    if (self.goahead == 1)
    {
        self.posttimer += 1
        if ((self.posttimer > (self.timermax - 35)) && ((self.haveauto == 1) && ((self.autoed == 0) && (scr_monsterpop() > 0))))
        {
            global.charinstance[self.sus].points = 160
            if (global.automiss[global.chartarget[self.sus]] == 1)
                global.charinstance[self.sus].points = 0
            with (global.charinstance[self.sus])
            {
                self.state = 1
                self.attacktimer = 0
                self.is_auto_susie = 1
            }
            self.posttimer -= 25
            self.autoed = 1
        }
        if (self.posttimer > self.timermax)
        {
            self.fade = 1
            with (obj_heroparent)
            {
                if (self.state == 1)
                    self.state = 0
                self.attacked = 0
                self.itemed = 0
            }
            self.techwon = 0
            if (scr_monsterpop() == 0)
                self.techwon = 1
            if (self.techwon == 0)
            {
                global.mnfight = 1
                global.myfight = -1
            }
            else
                scr_wincombat()
        }
    }
    if ((self.fade == 1) || (self.fakefade == 1))
    {
        self.fadeamt += 0.08
        draw_set_color(0x00000000)
        draw_set_alpha(self.fadeamt)
        draw_rectangle((self.x - 1), (self.y - 1), (self.x + 640), (self.y + 300), 0)
        draw_set_alpha(1)
        if (self.fade == 1)
        {
            if (self.fadeamt > 1)
                instance_destroy()
        }
    }
}
