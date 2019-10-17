self.button1 = 0
self.button2 = 0
self.button3 = 0
if (button1_p() == 1)
    self.button1 = 1
if (button2_h() == 1)
    self.button2 = 1
if ((global.flag[10] == 1) || scr_debug())
{
    if (button3_h() == 1)
    {
        if (self.automash_timer == 0)
            self.automash_timer = 1
        else
            self.automash_timer = 0
        if (self.automash_timer == 0)
            self.button1 = 1
        if (self.automash_timer == 1)
            self.button2 = 1
    }
}
if ((self.dialoguer == 1) && (self.formatted == 0))
{
    if (global.fc == 0)
    {
        self.charline = self.originalcharline
        self.writingx = self.x
    }
    else
    {
        self.charline = 26
        self.writingx = (self.x + (58 * self.f))
        if (global.lang == "ja")
            self.writingx -= 8
    }
}
if (self.formatted == 0)
{
    self.length = string_length(self.mystring)
    self.charpos = -1
    self.remspace = -1
    self.remchar = -1
    self.linecount = 0
    self.stringmax = 0
    self.aster = 0
    self.textalignment = ""
    for (self.i = 0; self.i < (self.length + 1); self.i += 1)
    {
        self.skip = 0
        self.thischar = string_char_at(self.mystring, self.i)
        if ((self.thischar == "/") || (self.thischar == "%"))
        {
            if (self.charpos > -1)
                self.charpos -= 1
        }
        if (self.thischar == "^")
        {
            if (self.charpos > -1)
                self.charpos -= 2
        }
        if (self.thischar == "\\")
        {
            if (self.charpos > -1)
                self.charpos -= 3
            self.nextchar = string_char_at(self.mystring, (self.i + 1))
            self.nextchar2 = string_char_at(self.mystring, (self.i + 2))
            if (self.dialoguer == 1)
            {
                if (self.nextchar == "E")
                {
                    if (self.nextchar2 == "0")
                        global.fe = 0
                    if (self.nextchar2 == "1")
                        global.fe = 1
                    if (self.nextchar2 == "2")
                        global.fe = 2
                    if (self.nextchar2 == "3")
                        global.fe = 3
                    if (self.nextchar2 == "4")
                        global.fe = 4
                    if (self.nextchar2 == "5")
                        global.fe = 5
                    if (self.nextchar2 == "6")
                        global.fe = 6
                    if (self.nextchar2 == "7")
                        global.fe = 7
                    if (self.nextchar2 == "8")
                        global.fe = 8
                    if (self.nextchar2 == "9")
                        global.fe = 9
                    if (self.nextchar2 == "A")
                        global.fe = 10
                    if (self.nextchar2 == "B")
                        global.fe = 11
                    if (self.nextchar2 == "C")
                        global.fe = 12
                    if (self.nextchar2 == "D")
                        global.fe = 13
                    if (self.nextchar2 == "E")
                        global.fe = 14
                }
                if (self.nextchar == "F")
                {
                    if (self.nextchar2 == "0")
                        global.fc = 0
                    if (self.nextchar2 == "S")
                        global.fc = 1
                    if (self.nextchar2 == "R")
                        global.fc = 2
                    if (self.nextchar2 == "N")
                        global.fc = 3
                    if (self.nextchar2 == "T")
                        global.fc = 4
                    if (self.nextchar2 == "L")
                        global.fc = 5
                    if (self.nextchar2 == "A")
                        global.fc = 10
                    if (self.nextchar2 == "a")
                        global.fc = 11
                    if (self.nextchar2 == "B")
                        global.fc = 12
                    if (self.nextchar2 == "r")
                        global.fc = 15
                    if (self.nextchar2 == "u")
                        global.fc = 18
                    if (self.nextchar2 == "K")
                        global.fc = 20
                    if (global.fc == 0)
                    {
                        self.charline = self.originalcharline
                        self.writingx = self.x
                    }
                    else
                    {
                        self.charline = 26
                        self.writingx = (self.x + (58 * self.f))
                        if (global.lang == "ja")
                            self.writingx -= 8
                    }
                }
            }
            if (self.nextchar == "a")
                self.textalignment = self.nextchar2
        }
        if (self.thischar == "&")
        {
            if (self.charpos > self.stringmax)
                self.stringmax = self.charpos
            self.remspace = -1
            self.charpos = 0
            self.linecount += 1
            self.skip = 1
            self.nextchar = string_char_at(self.mystring, (self.i + 1))
            if ((self.aster == 1) && ((self.autoaster == 1) && (self.nextchar != "*")))
            {
                self.charpos = 2
                self.length += 2
                self.mystring = string_insert(scr_84_get_lang_string("obj_writer_slash_Draw_0_gml_147_0"), self.mystring, (self.i + 1))
                self.i += 2
            }
        }
        if (self.skip == 0)
        {
            if (self.thischar == " ")
            {
                self.remspace = self.i
                self.remchar = self.charpos
            }
            if (self.thischar == "*")
                self.aster = 1
            if (self.charpos >= self.charline)
            {
                if (self.remspace > 2)
                {
                    self.mystring = string_delete(self.mystring, self.remspace, 1)
                    self.mystring = string_insert("&", self.mystring, self.remspace)
                    self.i = (self.remspace + 1)
                    if (self.remchar > self.stringmax)
                        self.stringmax = self.remchar
                    self.remspace = -1
                    self.charpos = 1
                    self.linecount += 1
                    scr_asterskip()
                }
                else
                {
                    if (self.charpos > self.stringmax)
                        self.stringmax = self.charpos
                    self.mystring = string_insert("&", self.mystring, self.i)
                    self.length += 1
                    self.charpos = 1
                    self.remspace = -1
                    self.linecount += 1
                    self.i += 1
                    scr_asterskip()
                }
            }
            else
                self.charpos += 1
        }
    }
    if (self.charpos > self.stringmax)
        self.stringmax = self.charpos
    self.formatted = 1
    if (self.textalignment == "c")
    {
        var xxx = __view_get(0, 0)
        self.writingx = ((xxx + 320) - ((self.stringmax * self.hspace) / 2))
    }
}
self.accept = 0
self.wx = self.writingx
self.wy = self.writingy
self.colorchange = 0
draw_set_font(self.myfont)
draw_set_color(self.mycolor)
if ((self.halt == 0) && ((self.button2 == 1) && ((self.pos < self.length) && (self.skippable == 1))))
    self.skipme = 1
if (self.skipme == 1)
{
    self.pos = (string_length(self.mystring) + 1)
    self.alarm[0] = -1
    self.alarm[1] = -1
}
for (self.n = 1; self.n < self.pos; self.n += 1)
{
    self.accept = 1
    self.mychar = string_char_at(self.mystring, self.n)
    if (self.mychar == "&")
    {
        self.accept = 0
        self.wx = self.writingx
        if (self.wxskip == 1)
            self.wx = (self.writingx + 58)
        self.wy += self.vspace
    }
    if (self.mychar == "|")
    {
        self.accept = 0
        self.wx += self.hspace
    }
    if (self.mychar == "^")
    {
        self.accept = 0
        self.n += 1
    }
    if (self.mychar == "/")
    {
        self.halt = 1
        if (string_char_at(self.mystring, (self.n + 1)) == "%")
            self.halt = 2
        self.accept = 0
    }
    if (self.mychar == "%")
    {
        self.accept = 0
        if (string_char_at(self.mystring, (self.n - 1)) == "/")
            self.halt = 2
        if (string_char_at(self.mystring, (self.n + 1)) == "%")
            instance_destroy()
        else if (self.halt != 2)
            scr_nextmsg()
    }
    if (self.mychar == "\\")
    {
        self.nextchar = string_char_at(self.mystring, (self.n + 1))
        self.nextchar2 = string_char_at(self.mystring, (self.n + 2))
        if (self.nextchar == "E")
        {
            if (self.nextchar2 == "0")
                global.fe = 0
            if (self.nextchar2 == "1")
                global.fe = 1
            if (self.nextchar2 == "2")
                global.fe = 2
            if (self.nextchar2 == "3")
                global.fe = 3
            if (self.nextchar2 == "4")
                global.fe = 4
            if (self.nextchar2 == "5")
                global.fe = 5
            if (self.nextchar2 == "6")
                global.fe = 6
            if (self.nextchar2 == "7")
                global.fe = 7
            if (self.nextchar2 == "8")
                global.fe = 8
            if (self.nextchar2 == "9")
                global.fe = 9
            if (self.nextchar2 == "A")
                global.fe = 10
            if (self.nextchar2 == "B")
                global.fe = 11
            if (self.nextchar2 == "C")
                global.fe = 12
            if (self.nextchar2 == "D")
                global.fe = 13
            if (self.nextchar2 == "E")
                global.fe = 14
        }
        if (self.nextchar == "F")
        {
            if (self.nextchar2 == "0")
                global.fc = 0
            if (self.nextchar2 == "S")
                global.fc = 1
            if (self.nextchar2 == "R")
                global.fc = 2
            if (self.nextchar2 == "N")
                global.fc = 3
            if (self.nextchar2 == "T")
                global.fc = 4
            if (self.nextchar2 == "L")
                global.fc = 5
            if (self.nextchar2 == "A")
                global.fc = 10
            if (self.nextchar2 == "a")
                global.fc = 11
            if (self.nextchar2 == "B")
                global.fc = 12
            if (self.nextchar2 == "r")
                global.fc = 15
            if (self.nextchar2 == "u")
                global.fc = 18
            if (self.nextchar2 == "K")
                global.fc = 20
            if (self.dialoguer == 1)
            {
                if (global.fc == 0)
                {
                    self.charline = self.originalcharline
                    self.wx = self.x
                }
                else
                {
                    self.charline = 26
                    self.wx = (self.x + (58 * self.f))
                }
            }
        }
        if ((self.nextchar == "f") && (self.faced == 0))
        {
            self.fam = 0
            self.fam = real(self.nextchar2)
            self.faced = 1
            self.smallface = instance_create(global.smxx[self.fam], global.smyy[self.fam], obj_smallface)
            if instance_exists(self.smallface)
            {
                self.smallface.x += self.x
                self.smallface.y += self.y
                self.smallface.speed = global.smspeed[self.fam]
                self.smallface.direction = global.smdir[self.fam]
                self.smallface.type = global.smtype[self.fam]
                self.smallface.sprite_index = global.smsprite[self.fam]
                self.smallface.alarm[0] = global.smalarm[self.fam]
                self.smallface.mystring = global.smstring[self.fam]
                self.smallface.mycolor = global.smcolor[self.fam]
                self.smallface.writergod = self.id
            }
        }
        if (self.nextchar == "T")
        {
            if (self.nextchar2 == "0")
            {
                global.typer = 5
                if (global.darkzone == 1)
                {
                    global.typer = 6
                    if (global.fighting == 1)
                        global.typer = 4
                }
                scr_texttype()
            }
            if (self.nextchar2 == "1")
            {
                global.typer = 2
                scr_texttype()
            }
            if (self.nextchar2 == "A")
            {
                global.typer = 18
                scr_texttype()
            }
            if (self.nextchar2 == "a")
            {
                global.typer = 20
                scr_texttype()
            }
            if (self.nextchar2 == "N")
            {
                global.typer = 12
                scr_texttype()
            }
            if (self.nextchar2 == "n")
            {
                global.typer = 23
                scr_texttype()
            }
            if (self.nextchar2 == "B")
            {
                global.typer = 13
                scr_texttype()
            }
            if (self.nextchar2 == "S")
            {
                global.typer = 10
                if (global.darkzone == 1)
                {
                    global.typer = 30
                    if (global.fighting == 1)
                        global.typer = 47
                }
                scr_texttype()
            }
            if (self.nextchar2 == "R")
            {
                global.typer = 31
                if (global.fighting == 1)
                    global.typer = 45
                if (global.flag[30] == 1)
                    global.typer = 6
                scr_texttype()
            }
            if (self.nextchar2 == "L")
            {
                global.typer = 32
                if (global.fighting == 1)
                    global.typer = 46
                scr_texttype()
            }
            if (self.nextchar2 == "X")
            {
                global.typer = 40
                scr_texttype()
            }
            if (self.nextchar2 == "r")
            {
                global.typer = 55
                scr_texttype()
            }
            if (self.nextchar2 == "T")
            {
                global.typer = 7
                scr_texttype()
            }
            if (self.nextchar2 == "J")
            {
                global.typer = 35
                scr_texttype()
            }
            if (self.nextchar2 == "K")
            {
                global.typer = 33
                if (global.plot < 235)
                    global.typer = 36
                if (global.fighting == 1)
                    global.typer = 48
                scr_texttype()
            }
            if (self.dialoguer == 1)
            {
                if (global.fc == 0)
                {
                    self.charline = self.originalcharline
                    self.wx = self.x
                }
                else
                    self.wxskip = 1
            }
        }
        if (self.nextchar == "s")
        {
            if (self.nextchar2 == "0")
                self.skippable = 0
            if (self.nextchar2 == "1")
                self.skippable = 1
        }
        if (self.nextchar == "c")
        {
            self.colorchange = 1
            if (self.nextchar2 == "R")
                self.xcolor = 0x000000FF
            if (self.nextchar2 == "B")
                self.xcolor = 0x00FF0000
            if (self.nextchar2 == "Y")
                self.xcolor = 0x0000FFFF
            if (self.nextchar2 == "G")
                self.xcolor = 0x0000FF00
            if (self.nextchar2 == "W")
                self.xcolor = 0x00FFFFFF
            if (self.nextchar2 == "X")
                self.xcolor = 0x00000000
            if (self.nextchar2 == "0")
                self.xcolor = self.mycolor
        }
        if (self.nextchar == "C")
        {
            if (self.nextchar2 == "1")
            {
                if (instance_exists(obj_choicer_old) == 0)
                    self.choicer = instance_create(0, 0, obj_choicer_old)
                self.halt = 5
            }
            if ((self.nextchar2 == "2") || ((self.nextchar2 == "3") || (self.nextchar2 == "4")))
            {
                if (instance_exists(obj_choicer_neo) == 0)
                {
                    self.choicer = instance_create(0, 0, obj_choicer_neo)
                    self.choicer.choicetotal = (real(self.nextchar2) - 1)
                }
                self.halt = 5
            }
        }
        if (self.nextchar == "M")
        {
            if (self.nextchar2 == "0")
                global.flag[20] = 0
            if (self.nextchar2 == "1")
                global.flag[20] = 1
            if (self.nextchar2 == "2")
                global.flag[20] = 2
            if (self.nextchar2 == "3")
                global.flag[20] = 3
            if (self.nextchar2 == "4")
                global.flag[20] = 4
            if (self.nextchar2 == "5")
                global.flag[20] = 5
            if (self.nextchar2 == "6")
                global.flag[20] = 6
            if (self.nextchar2 == "7")
                global.flag[20] = 7
            if (self.nextchar2 == "8")
                global.flag[20] = 8
            if (self.nextchar2 == "9")
                global.flag[20] = 9
        }
        if (self.nextchar == "S")
        {
            if (self.sound_played == 0)
            {
                for (self.i = 0; self.i < 10; self.i += 1)
                {
                    if ((self.nextchar2 == string(self.i)) && (self.sound_played == 0))
                    {
                        snd_play(global.writersnd[self.i])
                        self.sound_played = 1
                    }
                }
            }
        }
        if (self.nextchar == "I")
        {
            for (self.i = 0; self.i < 10; self.i += 1)
            {
                if (self.nextchar2 == string(self.i))
                    draw_sprite(global.writerimg[self.i], 0, self.wx, (self.wy + 4))
            }
        }
        self.accept = 0
        self.n += 2
    }
    if (self.accept == 1)
    {
        if (self.colorchange == 1)
            draw_set_color(self.xcolor)
        if (self.special == 0)
            draw_text_transformed((self.wx + random(self.shake)), (self.wy + random(self.shake)), string_hash_to_newline(self.mychar), self.textscale, self.textscale, 0)
        if (self.special >= 1)
        {
            if (self.special == 1)
            {
                if ((draw_get_color() != 16777215) && (draw_get_color() != 0))
                {
                    draw_text_color(((self.wx + random(self.shake)) + 1), ((self.wy + random(self.shake)) + 1), string_hash_to_newline(self.mychar), self.xcolor, self.xcolor, self.xcolor, self.xcolor, 0.3)
                    draw_text_color((self.wx + random(self.shake)), (self.wy + random(self.shake)), string_hash_to_newline(self.mychar), 0x00FFFFFF, 0x00FFFFFF, self.xcolor, self.xcolor, 1)
                }
                else
                {
                    draw_text_color(((self.wx + random(self.shake)) + 1), ((self.wy + random(self.shake)) + 1), string_hash_to_newline(self.mychar), 0x00404040, 0x00404040, 0x00800000, 0x00800000, 1)
                    draw_text((self.wx + random(self.shake)), (self.wy + random(self.shake)), string_hash_to_newline(self.mychar))
                }
            }
            if (self.special == 2)
            {
                draw_set_alpha((1 * self.specfade))
                draw_text(self.wx, self.wy, string_hash_to_newline(self.mychar))
                draw_set_alpha(((0.3 + (sin((self.siner / 14)) * 0.1)) * self.specfade))
                draw_text((self.wx + 1), self.wy, string_hash_to_newline(self.mychar))
                draw_text((self.wx - 1), self.wy, string_hash_to_newline(self.mychar))
                draw_text(self.wx, (self.wy + 1), string_hash_to_newline(self.mychar))
                draw_text(self.wx, (self.wy - 1), string_hash_to_newline(self.mychar))
                draw_set_alpha(((0.08 + (sin((self.siner / 14)) * 0.04)) * self.specfade))
                draw_text((self.wx + 1), (self.wy + 1), string_hash_to_newline(self.mychar))
                draw_text((self.wx - 1), (self.wy - 1), string_hash_to_newline(self.mychar))
                draw_text((self.wx - 1), (self.wy + 1), string_hash_to_newline(self.mychar))
                draw_text((self.wx + 1), (self.wy - 1), string_hash_to_newline(self.mychar))
                draw_set_alpha(1)
            }
            if (self.special == 3)
            {
                draw_set_color(0x00FFFFFF)
                draw_set_alpha(1)
                draw_text((self.wx + sin((self.siner / 4))), (self.wy + cos((self.siner / 4))), string_hash_to_newline(self.mychar))
                draw_set_alpha(0.5)
                draw_text((self.wx + sin((self.siner / 5))), (self.wy + cos((self.siner / 5))), string_hash_to_newline(self.mychar))
                draw_text((self.wx + sin((self.siner / 7))), (self.wy + cos((self.siner / 7))), string_hash_to_newline(self.mychar))
                draw_text((self.wx + sin((self.siner / 9))), (self.wy + cos((self.siner / 9))), string_hash_to_newline(self.mychar))
                for (self.i = 0; self.i < 7; self.i += 1)
                {
                    self.ddir = (315 + random(15))
                    if (self.n == 1)
                    {
                        self.specx[self.i] += lengthdir_x(2, self.ddir)
                        self.specy[self.i] += lengthdir_y(2, self.ddir)
                        if (self.specx[self.i] >= 40)
                        {
                            self.specx[self.i] = 0
                            self.specy[self.i] = 0
                        }
                    }
                    draw_set_alpha((((40 - self.specx[self.i]) / 40) * 0.7))
                    draw_text((self.wx + self.specx[self.i]), (self.wy + self.specy[self.i]), string_hash_to_newline(self.mychar))
                }
                draw_set_alpha(1)
            }
        }
        self.wx += self.hspace
        if (global.lang == "ja")
        {
            if ((ord(self.mychar) < 256) || ((ord(self.mychar) >= 65377) && (ord(self.mychar) <= 65439)))
                self.wx -= (self.hspace / 2)
        }
    }
}
if ((self.halt != 0) && ((self.button1 == 1) && (self.siner > 0)))
{
    if (self.halt == 1)
    {
        scr_nextmsg()
        if (self.faced == 1)
        {
            with (self.smallface)
            {
                if (self.getrid == 0)
                    self.getrid = 1
            }
            self.faced = 0
        }
    }
    if (self.halt == 2)
    {
        if (self.faced == 1)
        {
            with (self.smallface)
                instance_destroy()
            self.faced = 0
        }
        if (self.facer == 1)
        {
            with (obj_face)
                instance_destroy()
        }
        instance_destroy()
    }
}
self.skipme = 0
self.siner += 1
