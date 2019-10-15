if (self.MENU_NO == 1)
    _temp_local_var_1 = 1
else
{
    if (self.MENU_NO == 4)
        _temp_local_var_1 = 1
    else
    {
        if (self.MENU_NO == 6)
            _temp_local_var_1 = 1
        else
            _temp_local_var_1 = (self.MENU_NO == 7)
    }
}
if _temp_local_var_1
{
    if left_p()
    {
        if (self.MENUCOORD[self.MENU_NO] == 1)
        {
            self.MENUCOORD[self.MENU_NO] = 0
            self.MOVENOISE = 1
        }
    }
    if right_p()
    {
        if (self.MENUCOORD[self.MENU_NO] == 0)
        {
            self.MENUCOORD[self.MENU_NO] = 1
            self.MOVENOISE = 1
        }
    }
    if button1_p()
        _temp_local_var_2 = (self.ONEBUFFER < 0)
    else
        _temp_local_var_2 = 0
    if _temp_local_var_2
    {
        self.ONEBUFFER = 2
        self.TWOBUFFER = 2
        self.SELNOISE = 1
        if (self.MENUCOORD[self.MENU_NO] == 0)
        {
            if (self.MENU_NO == 1)
            {
                if (self.FILE[self.MENUCOORD[0]] == 1)
                {
                    global.filechoice = self.MENUCOORD[0]
                    scr_windowcaption(scr_84_get_lang_string("DEVICE_MENU_slash_Step_0_gml_35_0"@9758))
                    snd_free_all()
                    self.f = instance_create(0, 0, obj_persistentfadein)
                    self.f.image_xscale = 1000
                    self.f.image_yscale = 1000
                    if file_exists((("config_"@7035 + string(global.filechoice)) + ".ini"@7036))
                    {
                        ini_open((("config_"@7035 + string(global.filechoice)) + ".ini"@7036))
                        self.i = 0
                        while(true)
                        {
                            if (self.i < 10)
                            {
                                self.readval = ini_read_real("KEYBOARD_CONTROLS"@7037, string(self.i), -1)
                                if (self.readval != -1)
                                    global.input_k[self.i] = self.readval
                                self.i = (self.i + 1)
                                continue
                            }
                            break
                        }
                        self.i = 0
                        while(true)
                        {
                            if (self.i < 10)
                            {
                                self.readval = ini_read_real("GAMEPAD_CONTROLS"@7038, string(self.i), -1)
                                if (self.readval != -1)
                                    global.input_g[self.i] = self.readval
                                self.i = (self.i + 1)
                                continue
                            }
                            break
                        }
                        ini_close()
                    }
                    scr_load()
                }
                if (self.FILE[self.MENUCOORD[0]] == 0)
                {
                    global.filechoice = self.MENUCOORD[0]
                    snd_free_all()
                    room_goto(PLACE_CONTACT)
                }
            }
            if (self.MENU_NO == 4)
            {
                if (self.TYPE == 0)
                {
                    self.TEMPCOMMENT = scr_84_get_lang_string("DEVICE_MENU_slash_Step_0_gml_74_0"@9760)
                    if (self.NAME[0] == self.NAME[1])
                        _temp_local_var_3 = (self.NAME[1] == self.NAME[2])
                    else
                        _temp_local_var_3 = 0
                    if _temp_local_var_3
                    {
                        if (self.TIME[0] == self.TIME[1])
                            _temp_local_var_4 = (self.TIME[1] == self.TIME[2])
                        else
                            _temp_local_var_4 = 0
                        if _temp_local_var_4
                        {
                            if (self.PLACE[0] == self.PLACE[1])
                                _temp_local_var_5 = (self.PLACE[1] == self.PLACE[2])
                            else
                                _temp_local_var_5 = 0
                            if _temp_local_var_5
                                self.TEMPCOMMENT = scr_84_get_lang_string("DEVICE_MENU_slash_Step_0_gml_77_0"@9762)
                        }
                    }
                }
                event_user(5)
                if (self.TYPE == 0)
                {
                    if (self.NAME[0] == self.NAME[1])
                        _temp_local_var_6 = (self.NAME[1] == self.NAME[2])
                    else
                        _temp_local_var_6 = 0
                    if _temp_local_var_6
                    {
                        if (self.TIME[0] == self.TIME[1])
                            _temp_local_var_7 = (self.TIME[1] == self.TIME[2])
                        else
                            _temp_local_var_7 = 0
                        if _temp_local_var_7
                        {
                            if (self.PLACE[0] == self.PLACE[1])
                            {
                                if (self.PLACE[1] == self.PLACE[2])
                                    _temp_local_var_8 = (self.TEMPCOMMENT != scr_84_get_lang_string("DEVICE_MENU_slash_Step_0_gml_86_0"@9763))
                                else
                                    _temp_local_var_8 = 0
                            }
                            else
                                _temp_local_var_8 = 0
                            if _temp_local_var_8
                                self.TEMPCOMMENT = scr_84_get_lang_string("DEVICE_MENU_slash_Step_0_gml_86_1"@9764)
                        }
                    }
                }
                if (self.TYPE == 1)
                    self.TEMPCOMMENT = scr_84_get_lang_string("DEVICE_MENU_slash_Step_0_gml_91_0"@9765)
                self.MESSAGETIMER = 90
                self.SELNOISE = 0
                self.DEATHNOISE = 1
                self.MENU_NO = 0
            }
            if (self.MENU_NO == 7)
            {
                self.FILE[self.MENUCOORD[5]] = 0
                self.NAME[self.MENUCOORD[5]] = scr_84_get_lang_string("DEVICE_MENU_slash_Step_0_gml_105_0"@9766)
                self.TIME[self.MENUCOORD[5]] = 0
                self.PLACE[self.MENUCOORD[5]] = "------------"@3497
                self.LEVEL[self.MENUCOORD[5]] = 0
                self.TIME_STRING[self.MENUCOORD[5]] = "--:--"@3500
                file_delete(("filech1_"@2713 + string(self.MENUCOORD[5])))
                self.iniwrite = ini_open("dr.ini"@2744)
                ini_write_string(("G"@2534 + string(self.MENUCOORD[5])), "Name"@2747, "[EMPTY]"@9768)
                ini_write_real(("G"@2534 + string(self.MENUCOORD[5])), "Level"@2749, 0)
                ini_write_real(("G"@2534 + string(self.MENUCOORD[5])), "Love"@2751, 0)
                ini_write_real(("G"@2534 + string(self.MENUCOORD[5])), "Time"@2752, 0)
                ini_write_real(("G"@2534 + string(self.MENUCOORD[5])), "Room"@2753, 0)
                ini_close()
                if file_exists((("config_"@7035 + string(self.MENUCOORD[5])) + ".ini"@7036))
                    file_delete((("config_"@7035 + string(self.MENUCOORD[5])) + ".ini"@7036))
                self.TEMPCOMMENT = scr_84_get_lang_string("DEVICE_MENU_slash_Step_0_gml_126_0"@9769)
                if (self.TYPE == 1)
                    self.TEMPCOMMENT = scr_84_get_lang_string("DEVICE_MENU_slash_Step_0_gml_127_0"@9770)
                self.MESSAGETIMER = 90
                self.SELNOISE = 0
                self.DEATHNOISE = 1
                self.MENU_NO = 0
            }
            if (self.MENU_NO == 6)
            {
                self.THREAT = (self.THREAT + 1)
                self.MENU_NO = 7
                self.MENUCOORD[7] = 0
            }
        }
        if (self.MENUCOORD[self.MENU_NO] == 1)
        {
            if (self.MENU_NO == 4)
                _temp_local_var_9 = (self.TYPE == 0)
            else
                _temp_local_var_9 = 0
            if _temp_local_var_9
            {
                self.TEMPCOMMENT = scr_84_get_lang_string("DEVICE_MENU_slash_Step_0_gml_149_0"@9771)
                self.MESSAGETIMER = 90
            }
            if (self.MENU_NO == 6)
                _temp_local_var_10 = 1
            else
                _temp_local_var_10 = (self.MENU_NO == 7)
            if _temp_local_var_10
            {
                if (self.TYPE == 0)
                {
                    self.TEMPCOMMENT = scr_84_get_lang_string("DEVICE_MENU_slash_Step_0_gml_156_0"@9772)
                    if (self.THREAT >= 10)
                    {
                        self.TEMPCOMMENT = scr_84_get_lang_string("DEVICE_MENU_slash_Step_0_gml_159_0"@9773)
                        self.THREAT = 0
                    }
                    self.MESSAGETIMER = 90
                }
            }
            self.MENU_NO = 0
        }
    }
    if button2_p()
        _temp_local_var_11 = (self.TWOBUFFER < 0)
    else
        _temp_local_var_11 = 0
    if _temp_local_var_11
    {
        self.ONEBUFFER = 1
        self.TWOBUFFER = 1
        self.BACKNOISE = 1
        if (self.MENU_NO == 1)
            self.MENU_NO = 0
        if (self.MENU_NO == 4)
            self.MENU_NO = 2
        if (self.MENU_NO == 6)
            self.MENU_NO = 5
        if (self.MENU_NO == 7)
            self.MENU_NO = 5
    }
}
if (self.MENU_NO == 2)
    _temp_local_var_12 = 1
else
{
    if (self.MENU_NO == 3)
        _temp_local_var_12 = 1
    else
        _temp_local_var_12 = (self.MENU_NO == 5)
}
if _temp_local_var_12
{
    if down_p()
    {
        if (self.MENUCOORD[self.MENU_NO] < 3)
        {
            self.MENUCOORD[self.MENU_NO] = (self.MENUCOORD[self.MENU_NO] + 1)
            self.MOVENOISE = 1
        }
    }
    if up_p()
    {
        if (self.MENUCOORD[self.MENU_NO] > 0)
        {
            self.MENUCOORD[self.MENU_NO] = (self.MENUCOORD[self.MENU_NO] - 1)
            self.MOVENOISE = 1
        }
    }
    if button1_p()
        _temp_local_var_13 = (self.ONEBUFFER < 0)
    else
        _temp_local_var_13 = 0
    if _temp_local_var_13
    {
        if (self.MENUCOORD[self.MENU_NO] < 3)
        {
            if (self.MENU_NO == 3)
            {
                if (self.MENUCOORD[2] != self.MENUCOORD[3])
                {
                    if (self.FILE[self.MENUCOORD[self.MENU_NO]] == 1)
                    {
                        self.TWOBUFFER = 2
                        self.ONEBUFFER = 2
                        self.SELNOISE = 1
                        self.MENUCOORD[4] = 0
                        self.MENU_NO = 4
                    }
                    else
                    {
                        self.TEMPCOMMENT = scr_84_get_lang_string("DEVICE_MENU_slash_Step_0_gml_225_0"@9774)
                        self.MESSAGETIMER = 90
                        if (self.TYPE == 1)
                            self.TEMPCOMMENT = scr_84_get_lang_string("DEVICE_MENU_slash_Step_0_gml_227_0"@9775)
                        self.DEATHNOISE = 1
                        self.MENU_NO = 0
                        self.ONEBUFFER = 2
                        self.TWOBUFFER = 2
                        event_user(5)
                    }
                }
                else
                {
                    self.TEMPCOMMENT = scr_84_get_lang_string("DEVICE_MENU_slash_Step_0_gml_238_0"@9776)
                    if (self.TYPE == 1)
                        self.TEMPCOMMENT = scr_84_get_lang_string("DEVICE_MENU_slash_Step_0_gml_239_0"@9777)
                    self.MESSAGETIMER = 90
                    self.TWOBUFFER = 2
                    self.ONEBUFFER = 2
                    self.BACKNOISE = 1
                }
            }
            if (self.MENU_NO == 2)
            {
                if (self.FILE[self.MENUCOORD[self.MENU_NO]] == 1)
                {
                    self.TWOBUFFER = 2
                    self.ONEBUFFER = 2
                    self.SELNOISE = 1
                    self.MENUCOORD[3] = 0
                    self.MENU_NO = 3
                }
                else
                {
                    self.TEMPCOMMENT = scr_84_get_lang_string("DEVICE_MENU_slash_Step_0_gml_261_0"@9778)
                    if (self.FILE[0] == 0)
                    {
                        if (self.FILE[1] == 0)
                            _temp_local_var_26 = (self.FILE[2] == 0)
                        else
                            _temp_local_var_26 = 0
                    }
                    else
                        _temp_local_var_26 = 0
                    if _temp_local_var_26
                        self.TEMPCOMMENT = scr_84_get_lang_string("DEVICE_MENU_slash_Step_0_gml_264_0"@9779)
                    if (self.TYPE == 1)
                        self.TEMPCOMMENT = scr_84_get_lang_string("DEVICE_MENU_slash_Step_0_gml_266_0"@9780)
                    self.MESSAGETIMER = 90
                    self.BACKNOISE = 1
                    self.TWOBUFFER = 2
                    self.ONEBUFFER = 2
                }
            }
            if (self.MENU_NO == 5)
            {
                if (self.FILE[self.MENUCOORD[self.MENU_NO]] == 1)
                {
                    self.TWOBUFFER = 2
                    self.ONEBUFFER = 2
                    self.SELNOISE = 1
                    self.MENUCOORD[6] = 0
                    self.MENU_NO = 6
                }
                else
                {
                    self.TEMPCOMMENT = scr_84_get_lang_string("DEVICE_MENU_slash_Step_0_gml_289_0"@9781)
                    if (self.FILE[0] == 0)
                    {
                        if (self.FILE[1] == 0)
                            _temp_local_var_24 = (self.FILE[2] == 0)
                        else
                            _temp_local_var_24 = 0
                    }
                    else
                        _temp_local_var_24 = 0
                    if _temp_local_var_24
                        self.TEMPCOMMENT = scr_84_get_lang_string("DEVICE_MENU_slash_Step_0_gml_292_0"@9782)
                    if (self.TYPE == 1)
                        self.TEMPCOMMENT = scr_84_get_lang_string("DEVICE_MENU_slash_Step_0_gml_294_0"@9783)
                    self.MESSAGETIMER = 90
                    self.TWOBUFFER = 2
                    self.ONEBUFFER = 2
                    self.BACKNOISE = 1
                }
            }
        }
        if (self.MENUCOORD[self.MENU_NO] == 3)
        {
            self.TWOBUFFER = 2
            self.ONEBUFFER = 2
            self.SELNOISE = 1
            self.MENU_NO = 0
        }
    }
    if button2_p()
        _temp_local_var_14 = (self.TWOBUFFER < 0)
    else
        _temp_local_var_14 = 0
    if _temp_local_var_14
    {
        self.TWOBUFFER = 2
        self.ONEBUFFER = 2
        self.BACKNOISE = 1
        if (self.MENU_NO == 2)
            _temp_local_var_15 = 1
        else
            _temp_local_var_15 = (self.MENU_NO == 5)
        if _temp_local_var_15
            self.MENU_NO = 0
        if (self.MENU_NO == 3)
            self.MENU_NO = 2
    }
}
if (self.MENU_NO == 0)
{
    if down_p()
    {
        if (self.MENUCOORD[0] < 3)
        {
            self.MENUCOORD[0] = (self.MENUCOORD[0] + 1)
            self.MOVENOISE = 1
        }
    }
    if up_p()
    {
        if (self.MENUCOORD[0] > 0)
        {
            self.MENUCOORD[0] = (self.MENUCOORD[0] - 1)
            if (self.MENUCOORD[0] == 3)
                self.MENUCOORD[0] = 2
            self.MOVENOISE = 1
        }
    }
    if right_p()
    {
        if (self.MENUCOORD[0] >= 3)
            _temp_local_var_16 = (self.MENUCOORD[0] <= 5)
        else
            _temp_local_var_16 = 0
        if _temp_local_var_16
        {
            self.MOVENOISE = 1
            self.MENUCOORD[0] = (self.MENUCOORD[0] + 1)
            if (self.MENUCOORD[0] > 5)
                self.MENUCOORD[0] = 3
        }
    }
    if left_p()
    {
        if (self.MENUCOORD[0] >= 3)
            _temp_local_var_17 = (self.MENUCOORD[0] <= 5)
        else
            _temp_local_var_17 = 0
        if _temp_local_var_17
        {
            self.MOVENOISE = 1
            self.MENUCOORD[0] = (self.MENUCOORD[0] - 1)
            if (self.MENUCOORD[0] < 3)
                self.MENUCOORD[0] = 5
        }
    }
    if button1_p()
        _temp_local_var_18 = (self.ONEBUFFER < 0)
    else
        _temp_local_var_18 = 0
    if _temp_local_var_18
    {
        self.MESSAGETIMER = -1
        if (self.MENUCOORD[0] <= 2)
        {
            self.MENUCOORD[1] = 0
            self.ONEBUFFER = 1
            self.TWOBUFFER = 1
            self.MENU_NO = 1
            self.SELNOISE = 1
        }
        if (self.MENUCOORD[0] == 3)
        {
            self.MENUCOORD[2] = 0
            self.ONEBUFFER = 1
            self.TWOBUFFER = 1
            self.MENU_NO = 2
            self.SELNOISE = 1
        }
        if (self.MENUCOORD[0] == 4)
        {
            self.MENUCOORD[5] = 0
            self.ONEBUFFER = 1
            self.TWOBUFFER = 1
            self.MENU_NO = 5
            self.SELNOISE = 1
        }
        if (self.MENUCOORD[0] == 5)
        {
            scr_change_language()
            scr_84_load_ini()
            self.ONEBUFFER = 2
            self.TWOBUFFER = 2
            self.SELNOISE = 1
        }
    }
}
if (self.OBMADE == 1)
{
    self.OB_DEPTH = (self.OB_DEPTH + 1)
    self.obacktimer = (self.obacktimer + self.OBM)
    if (self.obacktimer >= 20)
    {
        self.DV = instance_create(0, 0, DEVICE_OBACK_4)
        self.DV.depth = (5 + self.OB_DEPTH)
        self.DV.OBSPEED = (0.01 * self.OBM)
        if (self.OB_DEPTH >= 60000)
            self.OB_DEPTH = 0
        self.obacktimer = 0
    }
}
if (self.MOVENOISE == 1)
{
    snd_play(snd_menumove)
    self.MOVENOISE = 0
}
if (self.SELNOISE == 1)
{
    snd_play(snd_select)
    self.SELNOISE = 0
}
if (self.BACKNOISE == 1)
{
    snd_play(snd_swing)
    self.BACKNOISE = 0
}
if (self.DEATHNOISE == 1)
{
    snd_play(AUDIO_APPEARANCE)
    self.DEATHNOISE = 0
}
self.ONEBUFFER = (self.ONEBUFFER - 1)
self.TWOBUFFER = (self.TWOBUFFER - 1)
