self.button1 = 0
self.button2 = 0
self.button3 = 0
if (button1_p() == 1)
    self.button1 = 1
if (button2_h() == 1)
    self.button2 = 1
if (global.flag[10] == 1)
    _temp_local_var_1 = 1
else
    _temp_local_var_1 = scr_debug()
if _temp_local_var_1
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
if (self.dialoguer == 1)
    _temp_local_var_2 = (self.formatted == 0)
else
    _temp_local_var_2 = 0
if _temp_local_var_2
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
        if (global.lang == "ja"@1566)
            self.writingx = (self.writingx - 8)
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
    self.textalignment = ""@2240
    self.i = 0
    while(true)
    {
        if (self.i < (self.length + 1))
        {
            self.skip = 0
            self.thischar = string_char_at(self.mystring, self.i)
            if (self.thischar == "/"@357)
                _temp_local_var_3 = 1
            else
                _temp_local_var_3 = (self.thischar == "%"@3588)
            if _temp_local_var_3
            {
                if (self.charpos > -1)
                    self.charpos = (self.charpos - 1)
            }
            if (self.thischar == "^"@1541)
            {
                if (self.charpos > -1)
                    self.charpos = (self.charpos - 2)
            }
            if (self.thischar == "\"@1547)
            {
                if (self.charpos > -1)
                    self.charpos = (self.charpos - 3)
                self.nextchar = string_char_at(self.mystring, (self.i + 1))
                self.nextchar2 = string_char_at(self.mystring, (self.i + 2))
                if (self.dialoguer == 1)
                {
                    if (self.nextchar == "E"@2532)
                    {
                        if (self.nextchar2 == "0"@2521)
                            global.fe = 0
                        if (self.nextchar2 == "1"@2522)
                            global.fe = 1
                        if (self.nextchar2 == "2"@2523)
                            global.fe = 2
                        if (self.nextchar2 == "3"@1174)
                            global.fe = 3
                        if (self.nextchar2 == "4"@1175)
                            global.fe = 4
                        if (self.nextchar2 == "5"@2524)
                            global.fe = 5
                        if (self.nextchar2 == "6"@2525)
                            global.fe = 6
                        if (self.nextchar2 == "7"@2526)
                            global.fe = 7
                        if (self.nextchar2 == "8"@2527)
                            global.fe = 8
                        if (self.nextchar2 == "9"@2528)
                            global.fe = 9
                        if (self.nextchar2 == "A"@366)
                            global.fe = 10
                        if (self.nextchar2 == "B"@2529)
                            global.fe = 11
                        if (self.nextchar2 == "C"@2530)
                            global.fe = 12
                        if (self.nextchar2 == "D"@2531)
                            global.fe = 13
                        if (self.nextchar2 == "E"@2532)
                            global.fe = 14
                    }
                    if (self.nextchar == "F"@2533)
                    {
                        if (self.nextchar2 == "0"@2521)
                            global.fc = 0
                        if (self.nextchar2 == "S"@2546)
                            global.fc = 1
                        if (self.nextchar2 == "R"@2545)
                            global.fc = 2
                        if (self.nextchar2 == "N"@2541)
                            global.fc = 3
                        if (self.nextchar2 == "T"@2547)
                            global.fc = 4
                        if (self.nextchar2 == "L"@2539)
                            global.fc = 5
                        if (self.nextchar2 == "A"@366)
                            global.fc = 10
                        if (self.nextchar2 == "a"@3601)
                            global.fc = 11
                        if (self.nextchar2 == "B"@2529)
                            global.fc = 12
                        if (self.nextchar2 == "r"@1740)
                            global.fc = 15
                        if (self.nextchar2 == "u"@3602)
                            global.fc = 18
                        if (self.nextchar2 == "K"@2538)
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
                            if (global.lang == "ja"@1566)
                                self.writingx = (self.writingx - 8)
                        }
                    }
                }
                if (self.nextchar == "a"@3601)
                    self.textalignment = self.nextchar2
            }
            if (self.thischar == "&"@1540)
            {
                if (self.charpos > self.stringmax)
                    self.stringmax = self.charpos
                self.remspace = -1
                self.charpos = 0
                self.linecount = (self.linecount + 1)
                self.skip = 1
                self.nextchar = string_char_at(self.mystring, (self.i + 1))
                if (self.aster == 1)
                {
                    if (self.autoaster == 1)
                        _temp_local_var_4 = (self.nextchar != "*"@1549)
                    else
                        _temp_local_var_4 = 0
                }
                else
                    _temp_local_var_4 = 0
                if _temp_local_var_4
                {
                    self.charpos = 2
                    self.length = (self.length + 2)
                    self.mystring = string_insert(scr_84_get_lang_string("obj_writer_slash_Draw_0_gml_147_0"@3603), self.mystring, (self.i + 1))
                    self.i = (self.i + 2)
                }
            }
            if (self.skip == 0)
            {
                if (self.thischar == " "@24)
                {
                    self.remspace = self.i
                    self.remchar = self.charpos
                }
                if (self.thischar == "*"@1549)
                    self.aster = 1
                if (self.charpos >= self.charline)
                {
                    if (self.remspace > 2)
                    {
                        self.mystring = string_delete(self.mystring, self.remspace, 1)
                        self.mystring = string_insert("&"@1540, self.mystring, self.remspace)
                        self.i = (self.remspace + 1)
                        if (self.remchar > self.stringmax)
                            self.stringmax = self.remchar
                        self.remspace = -1
                        self.charpos = 1
                        self.linecount = (self.linecount + 1)
                        scr_asterskip()
                    }
                    else
                    {
                        if (self.charpos > self.stringmax)
                            self.stringmax = self.charpos
                        self.mystring = string_insert("&"@1540, self.mystring, self.i)
                        self.length = (self.length + 1)
                        self.charpos = 1
                        self.remspace = -1
                        self.linecount = (self.linecount + 1)
                        self.i = (self.i + 1)
                        scr_asterskip()
                    }
                }
                else
                    self.charpos = (self.charpos + 1)
            }
            self.i = (self.i + 1)
            continue
        }
        break
    }
    if (self.charpos > self.stringmax)
        self.stringmax = self.charpos
    self.formatted = 1
    if (self.textalignment == "c"@1810)
    {
        local.xxx = __view_get(e__VW.XView, 0)
        self.writingx = ((local.xxx + 320) - ((self.stringmax * self.hspace) / 2))
    }
}
self.accept = 0
self.wx = self.writingx
self.wy = self.writingy
self.colorchange = 0
draw_set_font(self.myfont)
draw_set_color(self.mycolor)
if (self.halt == 0)
{
    if (self.button2 == 1)
    {
        if (self.pos < self.length)
            _temp_local_var_7 = (self.skippable == 1)
        else
            _temp_local_var_7 = 0
    }
    else
        _temp_local_var_7 = 0
}
else
    _temp_local_var_7 = 0
if _temp_local_var_7
    self.skipme = 1
if (self.skipme == 1)
{
    self.pos = (string_length(self.mystring) + 1)
    self.alarm[0] = -1
    self.alarm[1] = -1
}
self.n = 1
while(true)
{
    if (self.n < self.pos)
    {
        self.accept = 1
        self.mychar = string_char_at(self.mystring, self.n)
        if (self.mychar == "&"@1540)
        {
            self.accept = 0
            self.wx = self.writingx
            if (self.wxskip == 1)
                self.wx = (self.writingx + 58)
            self.wy = (self.wy + self.vspace)
        }
        if (self.mychar == "|"@1548)
        {
            self.accept = 0
            self.wx = (self.wx + self.hspace)
        }
        if (self.mychar == "^"@1541)
        {
            self.accept = 0
            self.n = (self.n + 1)
        }
        if (self.mychar == "/"@357)
        {
            self.halt = 1
            if (string_char_at(self.mystring, (self.n + 1)) == "%"@3588)
                self.halt = 2
            self.accept = 0
        }
        if (self.mychar == "%"@3588)
        {
            self.accept = 0
            if (string_char_at(self.mystring, (self.n - 1)) == "/"@357)
                self.halt = 2
            if (string_char_at(self.mystring, (self.n + 1)) == "%"@3588)
                instance_destroy()
            else
            {
                if (self.halt != 2)
                    scr_nextmsg()
            }
        }
        if (self.mychar == "\"@1547)
        {
            self.nextchar = string_char_at(self.mystring, (self.n + 1))
            self.nextchar2 = string_char_at(self.mystring, (self.n + 2))
            if (self.nextchar == "E"@2532)
            {
                if (self.nextchar2 == "0"@2521)
                    global.fe = 0
                if (self.nextchar2 == "1"@2522)
                    global.fe = 1
                if (self.nextchar2 == "2"@2523)
                    global.fe = 2
                if (self.nextchar2 == "3"@1174)
                    global.fe = 3
                if (self.nextchar2 == "4"@1175)
                    global.fe = 4
                if (self.nextchar2 == "5"@2524)
                    global.fe = 5
                if (self.nextchar2 == "6"@2525)
                    global.fe = 6
                if (self.nextchar2 == "7"@2526)
                    global.fe = 7
                if (self.nextchar2 == "8"@2527)
                    global.fe = 8
                if (self.nextchar2 == "9"@2528)
                    global.fe = 9
                if (self.nextchar2 == "A"@366)
                    global.fe = 10
                if (self.nextchar2 == "B"@2529)
                    global.fe = 11
                if (self.nextchar2 == "C"@2530)
                    global.fe = 12
                if (self.nextchar2 == "D"@2531)
                    global.fe = 13
                if (self.nextchar2 == "E"@2532)
                    global.fe = 14
            }
            if (self.nextchar == "F"@2533)
            {
                if (self.nextchar2 == "0"@2521)
                    global.fc = 0
                if (self.nextchar2 == "S"@2546)
                    global.fc = 1
                if (self.nextchar2 == "R"@2545)
                    global.fc = 2
                if (self.nextchar2 == "N"@2541)
                    global.fc = 3
                if (self.nextchar2 == "T"@2547)
                    global.fc = 4
                if (self.nextchar2 == "L"@2539)
                    global.fc = 5
                if (self.nextchar2 == "A"@366)
                    global.fc = 10
                if (self.nextchar2 == "a"@3601)
                    global.fc = 11
                if (self.nextchar2 == "B"@2529)
                    global.fc = 12
                if (self.nextchar2 == "r"@1740)
                    global.fc = 15
                if (self.nextchar2 == "u"@3602)
                    global.fc = 18
                if (self.nextchar2 == "K"@2538)
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
            if (self.nextchar == "f"@141)
                _temp_local_var_8 = (self.faced == 0)
            else
                _temp_local_var_8 = 0
            if _temp_local_var_8
            {
                self.fam = 0
                self.fam = real(self.nextchar2)
                self.faced = 1
                self.smallface = instance_create(global.smxx[self.fam], global.smyy[self.fam], obj_smallface)
                if instance_exists(self.smallface)
                {
                    self.smallface.x = (self.smallface.x + self.x)
                    self.smallface.y = (self.smallface.y + self.y)
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
            if (self.nextchar == "T"@2547)
            {
                if (self.nextchar2 == "0"@2521)
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
                if (self.nextchar2 == "1"@2522)
                {
                    global.typer = 2
                    scr_texttype()
                }
                if (self.nextchar2 == "A"@366)
                {
                    global.typer = 18
                    scr_texttype()
                }
                if (self.nextchar2 == "a"@3601)
                {
                    global.typer = 20
                    scr_texttype()
                }
                if (self.nextchar2 == "N"@2541)
                {
                    global.typer = 12
                    scr_texttype()
                }
                if (self.nextchar2 == "n"@3609)
                {
                    global.typer = 23
                    scr_texttype()
                }
                if (self.nextchar2 == "B"@2529)
                {
                    global.typer = 13
                    scr_texttype()
                }
                if (self.nextchar2 == "S"@2546)
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
                if (self.nextchar2 == "R"@2545)
                {
                    global.typer = 31
                    if (global.fighting == 1)
                        global.typer = 45
                    if (global.flag[30] == 1)
                        global.typer = 6
                    scr_texttype()
                }
                if (self.nextchar2 == "L"@2539)
                {
                    global.typer = 32
                    if (global.fighting == 1)
                        global.typer = 46
                    scr_texttype()
                }
                if (self.nextchar2 == "X"@2551)
                {
                    global.typer = 40
                    scr_texttype()
                }
                if (self.nextchar2 == "r"@1740)
                {
                    global.typer = 55
                    scr_texttype()
                }
                if (self.nextchar2 == "T"@2547)
                {
                    global.typer = 7
                    scr_texttype()
                }
                if (self.nextchar2 == "J"@2537)
                {
                    global.typer = 35
                    scr_texttype()
                }
                if (self.nextchar2 == "K"@2538)
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
            if (self.nextchar == "s"@1733)
            {
                if (self.nextchar2 == "0"@2521)
                    self.skippable = 0
                if (self.nextchar2 == "1"@2522)
                    self.skippable = 1
            }
            if (self.nextchar == "c"@1810)
            {
                self.colorchange = 1
                if (self.nextchar2 == "R"@2545)
                    self.xcolor = 0x0000FF
                if (self.nextchar2 == "B"@2529)
                    self.xcolor = 0xFF0000
                if (self.nextchar2 == "Y"@2552)
                    self.xcolor = 0x00FFFF
                if (self.nextchar2 == "G"@2534)
                    self.xcolor = 0x00FF00
                if (self.nextchar2 == "W"@2550)
                    self.xcolor = 0xFFFFFF
                if (self.nextchar2 == "X"@2551)
                    self.xcolor = 0x000000
                if (self.nextchar2 == "0"@2521)
                    self.xcolor = self.mycolor
            }
            if (self.nextchar == "C"@2530)
            {
                if (self.nextchar2 == "1"@2522)
                {
                    if (instance_exists(obj_choicer_old) == 0)
                        self.choicer = instance_create(0, 0, obj_choicer_old)
                    self.halt = 5
                }
                if (self.nextchar2 == "2"@2523)
                    _temp_local_var_9 = 1
                else
                {
                    if (self.nextchar2 == "3"@1174)
                        _temp_local_var_9 = 1
                    else
                        _temp_local_var_9 = (self.nextchar2 == "4"@1175)
                }
                if _temp_local_var_9
                {
                    if (instance_exists(obj_choicer_neo) == 0)
                    {
                        self.choicer = instance_create(0, 0, obj_choicer_neo)
                        self.choicer.choicetotal = (real(self.nextchar2) - 1)
                    }
                    self.halt = 5
                }
            }
            if (self.nextchar == "M"@2540)
            {
                if (self.nextchar2 == "0"@2521)
                    global.flag[20] = 0
                if (self.nextchar2 == "1"@2522)
                    global.flag[20] = 1
                if (self.nextchar2 == "2"@2523)
                    global.flag[20] = 2
                if (self.nextchar2 == "3"@1174)
                    global.flag[20] = 3
                if (self.nextchar2 == "4"@1175)
                    global.flag[20] = 4
                if (self.nextchar2 == "5"@2524)
                    global.flag[20] = 5
                if (self.nextchar2 == "6"@2525)
                    global.flag[20] = 6
                if (self.nextchar2 == "7"@2526)
                    global.flag[20] = 7
                if (self.nextchar2 == "8"@2527)
                    global.flag[20] = 8
                if (self.nextchar2 == "9"@2528)
                    global.flag[20] = 9
            }
            if (self.nextchar == "S"@2546)
            {
                if (self.sound_played == 0)
                {
                    self.i = 0
                    while(true)
                    {
                        if (self.i < 10)
                        {
                            if (self.nextchar2 == string(self.i))
                                _temp_local_var_10 = (self.sound_played == 0)
                            else
                                _temp_local_var_10 = 0
                            if _temp_local_var_10
                            {
                                snd_play(global.writersnd[self.i])
                                self.sound_played = 1
                            }
                            self.i = (self.i + 1)
                            continue
                        }
                        break
                    }
                }
            }
            if (self.nextchar == "I"@2536)
            {
                self.i = 0
                while(true)
                {
                    if (self.i < 10)
                    {
                        if (self.nextchar2 == string(self.i))
                            draw_sprite(global.writerimg[self.i], 0, self.wx, (self.wy + 4))
                        self.i = (self.i + 1)
                        continue
                    }
                    break
                }
            }
            self.accept = 0
            self.n = (self.n + 2)
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
                    if (draw_get_color() != 16777215)
                        _temp_local_var_12 = (draw_get_color() != 0)
                    else
                        _temp_local_var_12 = 0
                    if _temp_local_var_12
                    {
                        draw_text_color(((self.wx + random(self.shake)) + 1), ((self.wy + random(self.shake)) + 1), string_hash_to_newline(self.mychar), self.xcolor, self.xcolor, self.xcolor, self.xcolor, 0.3)
                        draw_text_color((self.wx + random(self.shake)), (self.wy + random(self.shake)), string_hash_to_newline(self.mychar), 0xFFFFFF, 0xFFFFFF, self.xcolor, self.xcolor, 1)
                    }
                    else
                    {
                        draw_text_color(((self.wx + random(self.shake)) + 1), ((self.wy + random(self.shake)) + 1), string_hash_to_newline(self.mychar), 0x404040, 0x404040, 0x800000, 0x800000, 1)
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
                    draw_set_color(0xFFFFFF)
                    draw_set_alpha(1)
                    draw_text((self.wx + sin((self.siner / 4))), (self.wy + cos((self.siner / 4))), string_hash_to_newline(self.mychar))
                    draw_set_alpha(0.5)
                    draw_text((self.wx + sin((self.siner / 5))), (self.wy + cos((self.siner / 5))), string_hash_to_newline(self.mychar))
                    draw_text((self.wx + sin((self.siner / 7))), (self.wy + cos((self.siner / 7))), string_hash_to_newline(self.mychar))
                    draw_text((self.wx + sin((self.siner / 9))), (self.wy + cos((self.siner / 9))), string_hash_to_newline(self.mychar))
                    self.i = 0
                    while(true)
                    {
                        if (self.i < 7)
                        {
                            self.ddir = (315 + random(15))
                            if (self.n == 1)
                            {
                                self.specx[self.i] = (self.specx[self.i] + lengthdir_x(2, self.ddir))
                                self.specy[self.i] = (self.specy[self.i] + lengthdir_y(2, self.ddir))
                                if (self.specx[self.i] >= 40)
                                {
                                    self.specx[self.i] = 0
                                    self.specy[self.i] = 0
                                }
                            }
                            draw_set_alpha((((40 - self.specx[self.i]) / 40) * 0.7))
                            draw_text((self.wx + self.specx[self.i]), (self.wy + self.specy[self.i]), string_hash_to_newline(self.mychar))
                            self.i = (self.i + 1)
                            continue
                        }
                        break
                    }
                    draw_set_alpha(1)
                }
            }
            self.wx = (self.wx + self.hspace)
            if (global.lang == "ja"@1566)
            {
                if (ord(self.mychar) < 256)
                    _temp_local_var_13 = 1
                else
                {
                    if (ord(self.mychar) >= 65377)
                        _temp_local_var_13 = (ord(self.mychar) <= 65439)
                    else
                        _temp_local_var_13 = 0
                }
                if _temp_local_var_13
                    self.wx = (self.wx - (self.hspace / 2))
            }
        }
        self.n = (self.n + 1)
        continue
    }
    break
}
if (self.halt != 0)
{
    if (self.button1 == 1)
        _temp_local_var_19 = (self.siner > 0)
    else
        _temp_local_var_19 = 0
}
else
    _temp_local_var_19 = 0
if _temp_local_var_19
{
    if (self.halt == 1)
    {
        scr_nextmsg()
        if (self.faced == 1)
        {
            with(self.smallface)
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
            with(self.smallface)
            {
                instance_destroy()
            }
            self.faced = 0
        }
        if (self.facer == 1)
        {
            with(obj_face)
            {
                instance_destroy()
            }
        }
        instance_destroy()
    }
}
self.skipme = 0
self.siner = (self.siner + 1)
