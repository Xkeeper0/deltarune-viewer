self.xx = __view_get(e__VW.XView, 0)
self.yy = __view_get(e__VW.YView, 0)
if (global.interact == 5)
{
    self.charcon = 1
    if (global.submenu == 5)
        _temp_local_var_1 = 1
    else
        _temp_local_var_1 = (global.submenu == 22)
    if _temp_local_var_1
    {
        global.charselect = global.submenucoord[global.submenu]
        global.faceaction[0] = 0
        global.faceaction[1] = 0
        global.faceaction[2] = 0
        global.faceaction[global.charselect] = 7
        if left_p()
        {
            if (global.submenucoord[global.submenu] > 0)
                global.submenucoord[global.submenu] = (global.submenucoord[global.submenu] - 1)
            else
                global.submenucoord[global.submenu] = (self.chartotal - 1)
        }
        if right_p()
        {
            if (global.submenucoord[global.submenu] < (self.chartotal - 1))
                global.submenucoord[global.submenu] = (global.submenucoord[global.submenu] + 1)
            else
                global.submenucoord[global.submenu] = 0
        }
        if button1_p()
            _temp_local_var_2 = (self.onebuffer < 0)
        else
            _temp_local_var_2 = 0
        if _temp_local_var_2
        {
            self.onebuffer = 2
            if (global.submenu == 5)
            {
                scr_itemuse(global.item[global.submenucoord[2]])
                if (self.usable == 1)
                    scr_itemshift(global.submenucoord[2], 0)
                scr_itemdesc()
                global.submenu = 2
                global.faceaction[global.charselect] = 0
                global.charselect = -1
            }
            if (global.submenu == 22)
            {
                scr_spell_overworld(global.spell[global.char[global.submenucoord[20]]][global.submenucoord[21]])
                global.tension = (global.tension - global.spellcost[global.char[global.submenucoord[20]]][global.submenucoord[21]])
            }
        }
        self.close = 0
        if button2_p()
            _temp_local_var_3 = (self.twobuffer < 0)
        else
            _temp_local_var_3 = 0
        if _temp_local_var_3
            self.close = 1
        if (global.submenu == 22)
        {
            if (global.spellcost[global.char[global.submenucoord[20]]][global.submenucoord[21]] > global.tension)
                self.close = 1
        }
        if (self.close == 1)
        {
            global.faceaction[global.charselect] = 0
            global.charselect = -1
            self.twobuffer = 2
            if (global.submenu == 5)
                global.submenu = 2
            if (global.submenu == 22)
                global.submenu = 21
        }
    }
    if (global.submenu == 6)
        _temp_local_var_4 = 1
    else
    {
        if (global.submenu == 7)
            _temp_local_var_4 = 1
        else
            _temp_local_var_4 = (global.menuno == 3)
    }
    if _temp_local_var_4
    {
        global.charselect = 3
        global.faceaction[0] = 7
        global.faceaction[1] = 7
        global.faceaction[2] = 7
        if button1_p()
        {
            if (self.onebuffer < 0)
                _temp_local_var_5 = (global.submenu == 6)
            else
                _temp_local_var_5 = 0
        }
        else
            _temp_local_var_5 = 0
        if _temp_local_var_5
        {
            self.onebuffer = 2
            global.faceaction[0] = 0
            global.faceaction[1] = 0
            global.faceaction[2] = 0
            scr_itemuse(global.item[global.submenucoord[2]])
            if (self.usable == 1)
                scr_itemshift(global.submenucoord[2], 0)
            scr_itemdesc()
            global.charselect = -1
            global.submenu = 2
        }
        if button1_p()
        {
            if (self.onebuffer < 0)
                _temp_local_var_6 = (global.submenu == 7)
            else
                _temp_local_var_6 = 0
        }
        else
            _temp_local_var_6 = 0
        if _temp_local_var_6
        {
            self.onebuffer = 2
            global.faceaction[0] = 0
            global.faceaction[1] = 0
            global.faceaction[2] = 0
            self.throwitem = global.item[global.submenucoord[2]]
            scr_itemshift(global.submenucoord[2], 0)
            scr_itemdesc()
            global.charselect = -1
            global.submenu = 3
            if (self.throwitem == 4)
            {
                if (global.char[2] == 3)
                    _temp_local_var_7 = 1
                else
                    _temp_local_var_7 = (global.char[1] == 3)
                if _temp_local_var_7
                {
                    global.interact = 1
                    scr_closemenu()
                    global.fc = 2
                    global.typer = 31
                    global.fe = 9
                    global.msg[0] = scr_84_get_lang_string("obj_darkcontroller_slash_Step_0_gml_129_0"@6995)
                    if (global.flag[207] == 1)
                    {
                        global.fc = 0
                        global.typer = 6
                        global.msg[0] = scr_84_get_lang_string("obj_darkcontroller_slash_Step_0_gml_135_0"@6996)
                        scr_ralface(1, 9)
                        global.msg[2] = scr_84_get_lang_string("obj_darkcontroller_slash_Step_0_gml_137_0"@6997)
                        global.msg[3] = scr_84_get_lang_string("obj_darkcontroller_slash_Step_0_gml_138_0"@6998)
                        global.msg[4] = scr_84_get_lang_string("obj_darkcontroller_slash_Step_0_gml_139_0"@6999)
                        global.flag[207] = 2
                    }
                    if (global.flag[207] == 0)
                    {
                        global.fc = 0
                        global.typer = 6
                        global.msg[0] = scr_84_get_lang_string("obj_darkcontroller_slash_Step_0_gml_147_0"@7000)
                        scr_ralface(1, 0)
                        global.msg[2] = scr_84_get_lang_string("obj_darkcontroller_slash_Step_0_gml_149_0"@7001)
                        global.msg[3] = scr_84_get_lang_string("obj_darkcontroller_slash_Step_0_gml_150_0"@7002)
                        global.msg[4] = scr_84_get_lang_string("obj_darkcontroller_slash_Step_0_gml_151_0"@7003)
                        global.msg[5] = scr_84_get_lang_string("obj_darkcontroller_slash_Step_0_gml_152_0"@7004)
                        scr_noface(6)
                        global.msg[7] = scr_84_get_lang_string("obj_darkcontroller_slash_Step_0_gml_154_0"@7005)
                        scr_itemget(4)
                        global.flag[207] = 1
                    }
                    self.dl = instance_create(0, 0, obj_dialoguer)
                    self.dl.free = 1
                }
            }
        }
        if button1_p()
        {
            if (self.onebuffer < 0)
                _temp_local_var_8 = (global.menuno == 3)
            else
                _temp_local_var_8 = 0
        }
        else
            _temp_local_var_8 = 0
        if _temp_local_var_8
        {
            self.twobuffer = 2
            self.onebuffer = 2
            global.faceaction[0] = 0
            global.faceaction[1] = 0
            global.faceaction[2] = 0
            global.charselect = -1
            global.interact = 6
            scr_talkroom()
            global.menuno = -1
            self.charcon = 0
        }
        if button2_p()
            _temp_local_var_9 = (self.twobuffer < 0)
        else
            _temp_local_var_9 = 0
        if _temp_local_var_9
        {
            self.twobuffer = 2
            global.faceaction[0] = 0
            global.faceaction[1] = 0
            global.faceaction[2] = 0
            if (global.submenu == 6)
                global.submenu = 2
            if (global.submenu == 7)
                global.submenu = 3
            if (global.menuno == 3)
                global.menuno = 0
            global.charselect = -1
        }
    }
    if (global.menuno == 5)
    {
        if (global.submenu == 30)
        {
            self.sndbuffer = 0
            self.m_quit = 0
            if up_p()
            {
                global.submenucoord[30] = (global.submenucoord[30] - 1)
                if (global.submenucoord[30] < 0)
                    global.submenucoord[30] = 0
            }
            if down_p()
            {
                global.submenucoord[30] = (global.submenucoord[30] + 1)
                if (global.submenucoord[30] > 6)
                    global.submenucoord[30] = 6
            }
            if button1_p()
                _temp_local_var_10 = (self.onebuffer < 0)
            else
                _temp_local_var_10 = 0
            if _temp_local_var_10
            {
                self.upbuffer = 2
                self.downbuffer = 2
                self.onebuffer = 2
                self.twobuffer = 2
                self.selectnoise = 1
                if (global.submenucoord[30] == 0)
                    global.submenu = 33
                if (global.submenucoord[30] == 1)
                {
                    global.submenu = 35
                    global.submenucoord[35] = 0
                    self.control_select_con = 0
                    self.control_flash_timer = 0
                }
                if (global.submenucoord[30] == 2)
                {
                    if (global.flag[8] == 0)
                        global.flag[8] = 1
                    else
                        global.flag[8] = 0
                }
                if (global.submenucoord[30] == 3)
                {
                    with(obj_time)
                    {
                        self.fullscreen_toggle = 1
                    }
                }
                if (global.submenucoord[30] == 4)
                {
                    if (global.flag[11] == 0)
                        global.flag[11] = 1
                    else
                        global.flag[11] = 0
                }
                if (global.submenucoord[30] == 5)
                    global.submenu = 34
                if (global.submenucoord[30] == 6)
                    self.m_quit = 1
            }
            if button2_p()
                _temp_local_var_11 = (self.twobuffer < 0)
            else
                _temp_local_var_11 = 0
            if _temp_local_var_11
                self.m_quit = 1
            if (self.m_quit == 1)
            {
                self.onebuffer = 2
                self.twobuffer = 2
                global.menuno = 0
                global.submenu = 0
            }
        }
        if (global.submenu == 31)
            _temp_local_var_12 = 1
        else
        {
            if (global.submenu == 32)
                _temp_local_var_12 = 1
            else
                _temp_local_var_12 = (global.submenu == 33)
        }
        if _temp_local_var_12
        {
            self.se_select = 0
            self.sndbuffer = (self.sndbuffer - 1)
            self.muschange = 0
            self.sndchange = 0
            self.audchange = 0
            if right_h()
            {
                if (global.submenu == 31)
                {
                    self.sndchange = 1
                    if (global.flag[15] < 1)
                        global.flag[15] = (global.flag[15] + 0.05)
                }
                if (global.submenu == 32)
                {
                    self.muschange = 1
                    if (global.flag[16] < 1)
                        global.flag[16] = (global.flag[16] + 0.05)
                }
                if (global.submenu == 33)
                {
                    if (global.flag[17] < 1)
                        global.flag[17] = (global.flag[17] + 0.02)
                    self.audchange = 1
                }
            }
            if left_h()
            {
                if (global.submenu == 31)
                {
                    self.sndchange = 1
                    if (global.flag[15] > 0)
                        global.flag[15] = (global.flag[15] - 0.05)
                }
                if (global.submenu == 32)
                {
                    self.muschange = 1
                    if (global.flag[16] > 0)
                        global.flag[16] = (global.flag[16] - 0.05)
                }
                if (global.submenu == 33)
                {
                    self.audchange = 1
                    if (global.flag[17] >= 0.02)
                        global.flag[17] = (global.flag[17] - 0.02)
                }
            }
            if (self.sndchange == 1)
                _temp_local_var_13 = (self.sndbuffer < 0)
            else
                _temp_local_var_13 = 0
            if _temp_local_var_13
            {
                audio_group_set_gain(1, global.flag[15], 0)
                snd_play(snd_noise)
                self.sndbuffer = 2
            }
            if (self.muschange == 1)
            {
                if snd_is_playing(global.currentsong[1])
                    mus_volume(global.currentsong[1], (self.getmusvol * global.flag[16]), 0)
            }
            if (self.audchange == 1)
                _temp_local_var_14 = (self.sndbuffer < 0)
            else
                _temp_local_var_14 = 0
            if _temp_local_var_14
            {
                snd_play(snd_noise)
                self.sndbuffer = 2
                audio_set_master_gain(0, global.flag[17])
            }
            if button1_p()
                _temp_local_var_15 = (self.onebuffer < 0)
            else
                _temp_local_var_15 = 0
            if _temp_local_var_15
                self.se_select = 1
            if button2_p()
                _temp_local_var_16 = (self.twobuffer < 0)
            else
                _temp_local_var_16 = 0
            if _temp_local_var_16
                self.se_select = 1
            if (self.se_select == 1)
            {
                self.selectnoise = 1
                self.onebuffer = 2
                self.twobuffer = 2
                global.submenu = 30
            }
        }
        if (global.submenu == 34)
        {
            if keyboard_check_pressed(vk_escape)
                game_end()
            if button2_p()
                _temp_local_var_17 = (self.twobuffer < 0)
            else
                _temp_local_var_17 = 0
            if _temp_local_var_17
            {
                self.onebuffer = 2
                self.twobuffer = 2
                global.submenu = 30
            }
        }
        if (global.submenu == 35)
        {
            self.control_select_timer = 0
            self.control_flash_timer = (self.control_flash_timer - 1)
            self.controls_quitmenu = 0
            self.gamepad_exists = obj_time.gamepad_active
            self.gamepad_id = 0
            if (self.control_select_con == 1)
            {
                self.gamepad_accept = -1
                self.new_gamepad_key = -1
                self.key_accept = -1
                self.new_key = -1
                if keyboard_check_pressed(vk_anykey)
                {
                    self.i = '0'
                    while(true)
                    {
                        if (self.i <= 90)
                        {
                            if keyboard_check_pressed(self.i)
                            {
                                self.new_key = self.i
                                self.control_select_con = 2
                            }
                            self.i = (self.i + 1)
                            continue
                        }
                        break
                    }
                    if keyboard_check_pressed(';')
                    {
                        self.new_key = 59
                        self.control_select_con = 2
                    }
                    if keyboard_check_pressed(',')
                    {
                        self.new_key = 44
                        self.control_select_con = 2
                    }
                    if keyboard_check_pressed('.')
                    {
                        self.new_key = 46
                        self.control_select_con = 2
                    }
                    if keyboard_check_pressed('/')
                    {
                        self.new_key = 47
                        self.control_select_con = 2
                    }
                    if keyboard_check_pressed('\')
                    {
                        self.new_key = 92
                        self.control_select_con = 2
                    }
                    if keyboard_check_pressed(']')
                    {
                        self.new_key = 93
                        self.control_select_con = 2
                    }
                    if keyboard_check_pressed('[')
                    {
                        self.new_key = 91
                        self.control_select_con = 2
                    }
                    if keyboard_check_pressed('`')
                    {
                        self.new_key = 96
                        self.control_select_con = 2
                    }
                    if keyboard_check_pressed('-')
                    {
                        self.new_key = 45
                        self.control_select_con = 2
                    }
                    if keyboard_check_pressed('=')
                    {
                        self.new_key = 61
                        self.control_select_con = 2
                    }
                    if keyboard_check_pressed('%')
                    {
                        self.new_key = 37
                        self.control_select_con = 2
                    }
                    if keyboard_check_pressed(''')
                    {
                        self.new_key = 39
                        self.control_select_con = 2
                    }
                    if keyboard_check_pressed('&')
                    {
                        self.new_key = 38
                        self.control_select_con = 2
                    }
                    if keyboard_check_pressed('(')
                    {
                        self.new_key = 40
                        self.control_select_con = 2
                    }
                    if keyboard_check_pressed(vk_return)
                    {
                        self.new_key = 13
                        self.control_select_con = 2
                    }
                    if keyboard_check_pressed(vk_shift)
                    {
                        self.new_key = 16
                        self.control_select_con = 2
                    }
                    if keyboard_check_pressed(vk_control)
                    {
                        self.new_key = 17
                        self.control_select_con = 2
                    }
                    if keyboard_check_pressed(vk_backspace)
                    {
                        self.new_key = 8
                        self.control_select_con = 2
                    }
                    if keyboard_check_pressed(vk_alt)
                    {
                        self.new_key = 18
                        self.control_select_con = 2
                    }
                    if keyboard_check_pressed(vk_escape)
                    {
                        self.new_key = -1
                        self.control_select_con = 0
                    }
                }
                if (self.gamepad_exists == 1)
                    _temp_local_var_18 = (self.control_select_con == 1)
                else
                    _temp_local_var_18 = 0
                if _temp_local_var_18
                {
                    self.gpc = gamepad_button_count(self.gamepad_id)
                    if (self.gpc >= 40)
                        self.gpc = 40
                    self.i = 0
                    while(true)
                    {
                        if (self.i <= self.gpc)
                        {
                            if gamepad_button_check_pressed(self.gamepad_id, self.i)
                            {
                                self.new_gamepad_key = self.i
                                self.control_select_con = 2
                            }
                            self.i = (self.i + 1)
                            continue
                        }
                        break
                    }
                }
            }
            if button1_p()
            {
                if (self.control_select_con == 0)
                    _temp_local_var_19 = (self.onebuffer < 0)
                else
                    _temp_local_var_19 = 0
            }
            else
                _temp_local_var_19 = 0
            if _temp_local_var_19
            {
                self.onebuffer = 2
                if (global.submenucoord[35] < 7)
                {
                    self.control_select_con = 1
                    self.keyboard_lastkey = '￿'
                    self.selectnoise = 1
                }
                if (global.submenucoord[35] == 7)
                {
                    snd_play(snd_levelup)
                    scr_controls_default()
                    self.control_flash_timer = 10
                }
                if (global.submenucoord[35] == 8)
                    self.controls_quitmenu = 1
            }
            if (self.control_select_con == 0)
            {
                if down_p()
                {
                    if (self.controls_quitmenu == 0)
                        _temp_local_var_20 = (self.downbuffer < 0)
                    else
                        _temp_local_var_20 = 0
                }
                else
                    _temp_local_var_20 = 0
                if _temp_local_var_20
                {
                    if (global.submenucoord[35] < 8)
                    {
                        global.submenucoord[35] = (global.submenucoord[35] + 1)
                        self.movenoise = 1
                    }
                }
                if up_p()
                {
                    if (self.controls_quitmenu == 0)
                        _temp_local_var_21 = (self.upbuffer < 0)
                    else
                        _temp_local_var_21 = 0
                }
                else
                    _temp_local_var_21 = 0
                if _temp_local_var_21
                {
                    if (global.submenucoord[35] > 0)
                    {
                        global.submenucoord[35] = (global.submenucoord[35] - 1)
                        self.movenoise = 1
                    }
                }
                if button1_p()
                {
                    if (self.controls_quitmenu == 0)
                        _temp_local_var_22 = (self.onebuffer < 2)
                    else
                        _temp_local_var_22 = 0
                }
                else
                    _temp_local_var_22 = 0
                if _temp_local_var_22
                {
                    self.onebuffer = 2
                    self.twobuffer = 2
                    if (global.submenucoord[35] == 8)
                        self.controls_quitmenu = 1
                }
            }
            if (self.control_select_con == 2)
            {
                if (self.new_key != -1)
                {
                    self.dupe = -1
                    self.i = 0
                    while(true)
                    {
                        if (self.i < 7)
                        {
                            if (global.input_k[self.i] == self.new_key)
                                self.dupe = self.i
                            self.i = (self.i + 1)
                            continue
                        }
                        break
                    }
                    if (self.dupe >= 0)
                        global.input_k[self.dupe] = global.input_k[global.submenucoord[35]]
                    global.input_k[global.submenucoord[35]] = self.new_key
                    self.entercancel = -1
                    self.shiftcancel = -1
                    self.ctrlcancel = -1
                    self.i = 0
                    while(true)
                    {
                        if (self.i < 7)
                        {
                            if (global.input_k[self.i] == 13)
                            {
                                global.input_k[7] = -1
                                self.entercancel = 1
                            }
                            if (global.input_k[self.i] == 16)
                            {
                                global.input_k[8] = -1
                                self.shiftcancel = 1
                            }
                            if (global.input_k[self.i] == 17)
                            {
                                global.input_k[9] = -1
                                self.ctrlcancel = 1
                            }
                            self.i = (self.i + 1)
                            continue
                        }
                        break
                    }
                    if (self.entercancel == -1)
                        global.input_k[7] = 13
                    if (self.shiftcancel == -1)
                        global.input_k[8] = 16
                    if (self.ctrlcancel == -1)
                        global.input_k[9] = 17
                }
                else
                {
                    self.dupe = -1
                    self.i = 0
                    while(true)
                    {
                        if (self.i < 7)
                        {
                            if (global.input_g[self.i] == self.new_gamepad_key)
                                self.dupe = self.i
                            self.i = (self.i + 1)
                            continue
                        }
                        break
                    }
                    if (self.dupe >= 0)
                        global.input_g[self.dupe] = global.input_g[global.submenucoord[35]]
                    global.input_g[global.submenucoord[35]] = self.new_gamepad_key
                }
                self.upbuffer = 2
                self.downbuffer = 2
                self.onebuffer = 2
                self.twobuffer = 2
                self.selectnoise = 1
                self.control_select_con = 0
            }
            if (self.controls_quitmenu == 1)
            {
                self.onebuffer = 2
                self.twobuffer = 2
                ini_open((("config_"@7035 + string(global.filechoice)) + ".ini"@7036))
                self.i = 0
                while(true)
                {
                    if (self.i < 10)
                    {
                        ini_write_real("KEYBOARD_CONTROLS"@7037, string(self.i), global.input_k[self.i])
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
                        ini_write_real("GAMEPAD_CONTROLS"@7038, string(self.i), global.input_g[self.i])
                        self.i = (self.i + 1)
                        continue
                    }
                    break
                }
                ini_close()
                self.controls_quitmenu = 0
                self.control_select_con = 0
                global.submenucoord[35] = 0
                global.submenu = 30
            }
        }
    }
    if (global.menuno == 4)
    {
        if (global.submenu == 21)
        {
            self.charcoord = global.char[global.submenucoord[20]]
            if up_p()
            {
                if (global.submenucoord[21] > 0)
                    global.submenucoord[21] = (global.submenucoord[21] - 1)
            }
            if down_p()
            {
                if (global.submenucoord[21] < 5)
                {
                    if (global.spell[self.charcoord][(global.submenucoord[21] + 1)] != 0)
                        global.submenucoord[21] = (global.submenucoord[21] + 1)
                }
            }
            if button1_p()
                _temp_local_var_23 = (self.onebuffer < 0)
            else
                _temp_local_var_23 = 0
            if _temp_local_var_23
            {
                if (global.spellusable[self.charcoord][global.submenucoord[21]] == 1)
                    _temp_local_var_24 = (global.tension >= global.spellcost[self.charcoord][global.submenucoord[21]])
                else
                    _temp_local_var_24 = 0
                if _temp_local_var_24
                {
                    if (global.spelltarget[self.charcoord][global.submenucoord[21]] == 1)
                    {
                        global.submenu = 22
                        self.onebuffer = 2
                        self.twobuffer = 2
                    }
                }
            }
            if button2_p()
                _temp_local_var_25 = (self.twobuffer < 0)
            else
                _temp_local_var_25 = 0
            if _temp_local_var_25
            {
                self.deschaver = 0
                self.onebuffer = 2
                self.twobuffer = 2
                global.submenucoord[21] = 0
                global.submenu = 20
            }
        }
        if (global.submenu == 20)
        {
            if left_p()
            {
                global.submenucoord[20] = (global.submenucoord[20] - 1)
                if (global.submenucoord[20] < 0)
                    global.submenucoord[20] = (self.chartotal - 1)
                if (self.chartotal >= 2)
                    self.dograndom = ceil(random(100))
            }
            if right_p()
            {
                global.submenucoord[20] = (global.submenucoord[20] + 1)
                if (global.submenucoord[20] > (self.chartotal - 1))
                    global.submenucoord[20] = 0
                if (self.chartotal >= 2)
                    self.dograndom = ceil(random(100))
            }
            if button1_p()
                _temp_local_var_26 = (self.onebuffer < 0)
            else
                _temp_local_var_26 = 0
            if _temp_local_var_26
            {
                self.deschaver = 1
                global.submenu = 21
                self.onebuffer = 2
            }
            if button2_p()
                _temp_local_var_27 = (self.twobuffer < 0)
            else
                _temp_local_var_27 = 0
            if _temp_local_var_27
            {
                self.twobuffer = 2
                global.menuno = 0
                global.submenu = 0
                global.charselect = -1
            }
        }
    }
    if (global.menuno == 1)
    {
        if (global.submenu == 2)
            _temp_local_var_28 = 1
        else
            _temp_local_var_28 = (global.submenu == 3)
        if _temp_local_var_28
        {
            if left_p()
                _temp_local_var_29 = 1
            else
                _temp_local_var_29 = right_p()
            if _temp_local_var_29
            {
                self.sm = global.submenucoord[2]
                if (self.sm == 0)
                    _temp_local_var_30 = 1
                else
                {
                    if (self.sm == 2)
                        _temp_local_var_30 = 1
                    else
                    {
                        if (self.sm == 4)
                            _temp_local_var_30 = 1
                        else
                        {
                            if (self.sm == 6)
                                _temp_local_var_30 = 1
                            else
                            {
                                if (self.sm == 8)
                                    _temp_local_var_30 = 1
                                else
                                    _temp_local_var_30 = (self.sm == 10)
                            }
                        }
                    }
                }
                if _temp_local_var_30
                {
                    if (global.item[(global.submenucoord[2] + 1)] != 0)
                        global.submenucoord[2] = (global.submenucoord[2] + 1)
                }
                if (self.sm == 1)
                    _temp_local_var_31 = 1
                else
                {
                    if (self.sm == 3)
                        _temp_local_var_31 = 1
                    else
                    {
                        if (self.sm == 5)
                            _temp_local_var_31 = 1
                        else
                        {
                            if (self.sm == 7)
                                _temp_local_var_31 = 1
                            else
                            {
                                if (self.sm == 9)
                                    _temp_local_var_31 = 1
                                else
                                    _temp_local_var_31 = (self.sm == 11)
                            }
                        }
                    }
                }
                if _temp_local_var_31
                    global.submenucoord[2] = (global.submenucoord[2] - 1)
            }
            if down_p()
            {
                self.sm = global.submenucoord[2]
                if (self.sm == 0)
                    _temp_local_var_32 = 1
                else
                {
                    if (self.sm == 2)
                        _temp_local_var_32 = 1
                    else
                    {
                        if (self.sm == 4)
                            _temp_local_var_32 = 1
                        else
                        {
                            if (self.sm == 6)
                                _temp_local_var_32 = 1
                            else
                                _temp_local_var_32 = (self.sm == 8)
                        }
                    }
                }
                if _temp_local_var_32
                {
                    if (global.item[(global.submenucoord[2] + 2)] != 0)
                        global.submenucoord[2] = (global.submenucoord[2] + 2)
                }
                if (self.sm == 1)
                    _temp_local_var_33 = 1
                else
                {
                    if (self.sm == 3)
                        _temp_local_var_33 = 1
                    else
                    {
                        if (self.sm == 5)
                            _temp_local_var_33 = 1
                        else
                        {
                            if (self.sm == 7)
                                _temp_local_var_33 = 1
                            else
                                _temp_local_var_33 = (self.sm == 9)
                        }
                    }
                }
                if _temp_local_var_33
                {
                    if (global.item[(global.submenucoord[2] + 2)] != 0)
                        global.submenucoord[2] = (global.submenucoord[2] + 2)
                    else
                    {
                        if (global.item[(global.submenucoord[2] + 1)] != 0)
                            global.submenucoord[2] = (global.submenucoord[2] + 1)
                    }
                }
            }
            if up_p()
            {
                self.sm = global.submenucoord[2]
                if (self.sm == 2)
                    _temp_local_var_34 = 1
                else
                {
                    if (self.sm == 4)
                        _temp_local_var_34 = 1
                    else
                    {
                        if (self.sm == 6)
                            _temp_local_var_34 = 1
                        else
                        {
                            if (self.sm == 8)
                                _temp_local_var_34 = 1
                            else
                                _temp_local_var_34 = (self.sm == 10)
                        }
                    }
                }
                if _temp_local_var_34
                    global.submenucoord[2] = (global.submenucoord[2] - 2)
                if (self.sm == 3)
                    _temp_local_var_35 = 1
                else
                {
                    if (self.sm == 5)
                        _temp_local_var_35 = 1
                    else
                    {
                        if (self.sm == 7)
                            _temp_local_var_35 = 1
                        else
                        {
                            if (self.sm == 9)
                                _temp_local_var_35 = 1
                            else
                                _temp_local_var_35 = (self.sm == 11)
                        }
                    }
                }
                if _temp_local_var_35
                    global.submenucoord[2] = (global.submenucoord[2] - 2)
            }
            if button2_p()
                _temp_local_var_36 = (self.twobuffer < 0)
            else
                _temp_local_var_36 = 0
            if _temp_local_var_36
            {
                self.twobuffer = 2
                self.deschaver = 0
                global.submenu = 1
            }
        }
        if (global.submenu == 4)
        {
            if left_p()
                _temp_local_var_37 = 1
            else
                _temp_local_var_37 = right_p()
            if _temp_local_var_37
            {
                self.sm = global.submenucoord[4]
                if (self.sm == 0)
                    _temp_local_var_38 = 1
                else
                {
                    if (self.sm == 2)
                        _temp_local_var_38 = 1
                    else
                    {
                        if (self.sm == 4)
                            _temp_local_var_38 = 1
                        else
                        {
                            if (self.sm == 6)
                                _temp_local_var_38 = 1
                            else
                            {
                                if (self.sm == 8)
                                    _temp_local_var_38 = 1
                                else
                                    _temp_local_var_38 = (self.sm == 10)
                            }
                        }
                    }
                }
                if _temp_local_var_38
                {
                    if (global.keyitem[(global.submenucoord[4] + 1)] != 0)
                        global.submenucoord[4] = (global.submenucoord[4] + 1)
                }
                if (self.sm == 1)
                    _temp_local_var_39 = 1
                else
                {
                    if (self.sm == 3)
                        _temp_local_var_39 = 1
                    else
                    {
                        if (self.sm == 5)
                            _temp_local_var_39 = 1
                        else
                        {
                            if (self.sm == 7)
                                _temp_local_var_39 = 1
                            else
                            {
                                if (self.sm == 9)
                                    _temp_local_var_39 = 1
                                else
                                    _temp_local_var_39 = (self.sm == 11)
                            }
                        }
                    }
                }
                if _temp_local_var_39
                    global.submenucoord[4] = (global.submenucoord[4] - 1)
            }
            if down_p()
            {
                self.sm = global.submenucoord[4]
                if (self.sm == 0)
                    _temp_local_var_40 = 1
                else
                {
                    if (self.sm == 2)
                        _temp_local_var_40 = 1
                    else
                    {
                        if (self.sm == 4)
                            _temp_local_var_40 = 1
                        else
                        {
                            if (self.sm == 6)
                                _temp_local_var_40 = 1
                            else
                                _temp_local_var_40 = (self.sm == 8)
                        }
                    }
                }
                if _temp_local_var_40
                {
                    if (global.keyitem[(global.submenucoord[4] + 2)] != 0)
                        global.submenucoord[4] = (global.submenucoord[4] + 2)
                }
                if (self.sm == 1)
                    _temp_local_var_41 = 1
                else
                {
                    if (self.sm == 3)
                        _temp_local_var_41 = 1
                    else
                    {
                        if (self.sm == 5)
                            _temp_local_var_41 = 1
                        else
                        {
                            if (self.sm == 7)
                                _temp_local_var_41 = 1
                            else
                                _temp_local_var_41 = (self.sm == 9)
                        }
                    }
                }
                if _temp_local_var_41
                {
                    if (global.keyitem[(global.submenucoord[4] + 2)] != 0)
                        global.submenucoord[4] = (global.submenucoord[4] + 2)
                    else
                    {
                        if (global.keyitem[(global.submenucoord[4] + 1)] != 0)
                            global.submenucoord[4] = (global.submenucoord[4] + 1)
                    }
                }
            }
            if up_p()
            {
                self.sm = global.submenucoord[4]
                if (self.sm == 2)
                    _temp_local_var_42 = 1
                else
                {
                    if (self.sm == 4)
                        _temp_local_var_42 = 1
                    else
                    {
                        if (self.sm == 6)
                            _temp_local_var_42 = 1
                        else
                        {
                            if (self.sm == 8)
                                _temp_local_var_42 = 1
                            else
                                _temp_local_var_42 = (self.sm == 10)
                        }
                    }
                }
                if _temp_local_var_42
                    global.submenucoord[4] = (global.submenucoord[4] - 2)
                if (self.sm == 3)
                    _temp_local_var_43 = 1
                else
                {
                    if (self.sm == 5)
                        _temp_local_var_43 = 1
                    else
                    {
                        if (self.sm == 7)
                            _temp_local_var_43 = 1
                        else
                        {
                            if (self.sm == 9)
                                _temp_local_var_43 = 1
                            else
                                _temp_local_var_43 = (self.sm == 11)
                        }
                    }
                }
                if _temp_local_var_43
                    global.submenucoord[4] = (global.submenucoord[4] - 2)
            }
            if button1_p()
                _temp_local_var_44 = (self.onebuffer < 0)
            else
                _temp_local_var_44 = 0
            if _temp_local_var_44
            {
                self.onebuffer = 2
                self.twobuffer = 1
                if (self.keyitemusable[self.sm] == 1)
                {
                    global.charselect = 3
                    scr_itemuse((global.keyitem[self.sm] + 300))
                }
                else
                    snd_play(snd_cantselect)
            }
            if button2_p()
                _temp_local_var_45 = (self.twobuffer < 0)
            else
                _temp_local_var_45 = 0
            if _temp_local_var_45
            {
                self.twobuffer = 2
                self.deschaver = 0
                global.submenu = 1
            }
        }
        if (global.submenu == 3)
        {
            if button1_p()
                _temp_local_var_46 = (self.onebuffer < 0)
            else
                _temp_local_var_46 = 0
            if _temp_local_var_46
            {
                self.onebuffer = 3
                global.submenu = 7
            }
            if (global.item[global.submenucoord[2]] == 0)
            {
                if (global.submenucoord[2] == 0)
                {
                    global.submenu = 1
                    self.deschaver = 0
                    self.twobuffer = 2
                    self.onebuffer = 2
                }
                if (global.submenucoord[2] > 0)
                    global.submenucoord[2] = (global.submenucoord[2] - 1)
            }
        }
        if (global.submenu == 2)
        {
            if button1_p()
                _temp_local_var_47 = (self.onebuffer < 0)
            else
                _temp_local_var_47 = 0
            if _temp_local_var_47
            {
                self.onebuffer = 3
                scr_iteminfo(global.item[global.submenucoord[2]])
                if (self.itemtarget == 1)
                    global.submenu = 5
                if (self.itemtarget == 2)
                    global.submenu = 6
            }
            if (global.item[global.submenucoord[2]] == 0)
            {
                if (global.submenucoord[2] == 0)
                {
                    global.submenu = 1
                    self.deschaver = 0
                    self.twobuffer = 2
                    self.onebuffer = 2
                }
                if (global.submenucoord[2] > 0)
                    global.submenucoord[2] = (global.submenucoord[2] - 1)
            }
        }
        if (global.submenu == 1)
        {
            if left_p()
            {
                if (global.submenucoord[1] == 0)
                {
                    global.submenucoord[1] = 2
                    self.movenoise = 1
                }
                else
                {
                    global.submenucoord[1] = (global.submenucoord[1] - 1)
                    self.movenoise = 1
                }
            }
            if right_p()
            {
                if (global.submenucoord[1] == 2)
                {
                    global.submenucoord[1] = 0
                    self.movenoise = 1
                }
                else
                {
                    global.submenucoord[1] = (global.submenucoord[1] + 1)
                    self.movenoise = 1
                }
            }
            if button1_p()
            {
                global.submenu = (global.submenucoord[1] + 2)
                if (global.submenu == 4)
                    self.deschaver = 1
                if (global.submenu == 2)
                    _temp_local_var_48 = 1
                else
                    _temp_local_var_48 = (global.submenu == 3)
                if _temp_local_var_48
                {
                    self.deschaver = 1
                    scr_itemdesc()
                    if (global.item[0] == 0)
                    {
                        global.submenu = 1
                        self.deschaver = 0
                    }
                }
            }
            if button2_p()
                _temp_local_var_49 = (self.twobuffer < 0)
            else
                _temp_local_var_49 = 0
            if _temp_local_var_49
            {
                self.twobuffer = 2
                global.menuno = 0
                global.submenu = 0
            }
        }
    }
    if (global.menuno == 2)
    {
        if (global.submenu == 12)
            _temp_local_var_50 = 1
        else
        {
            if (global.submenu == 13)
                _temp_local_var_50 = 1
            else
                _temp_local_var_50 = (global.submenu == 14)
        }
        if _temp_local_var_50
        {
            self._up_pressed = 0
            if up_h()
            {
                if up_p()
                    self._up_pressed = 1
                self.hold_up = (self.hold_up + 1)
                if (self.hold_up >= 8)
                {
                    self._up_pressed = 1
                    self.hold_up = 6
                }
                if (self._up_pressed == 1)
                {
                    if (global.submenucoord[global.submenu] > 0)
                        global.submenucoord[global.submenu] = (global.submenucoord[global.submenu] - 1)
                    if (global.submenu == 12)
                    {
                        if (global.submenucoord[global.submenu] < self.pagemax[0])
                            self.pagemax[0] = (self.pagemax[0] - 1)
                    }
                    if (global.submenu == 13)
                        _temp_local_var_51 = 1
                    else
                        _temp_local_var_51 = (global.submenu == 14)
                    if _temp_local_var_51
                    {
                        if (global.submenucoord[global.submenu] < self.pagemax[1])
                            self.pagemax[1] = (self.pagemax[1] - 1)
                    }
                }
            }
            else
                self.hold_up = 0
            self._down_pressed = 0
            if down_h()
            {
                if (down_p() == 1)
                    self._down_pressed = 1
                self.hold_down = (self.hold_down + 1)
                if (self.hold_down >= 8)
                {
                    self._down_pressed = 1
                    self.hold_down = 6
                }
                if (global.submenucoord[global.submenu] < 11)
                    _temp_local_var_52 = (self._down_pressed == 1)
                else
                    _temp_local_var_52 = 0
                if _temp_local_var_52
                {
                    if (global.submenu == 12)
                        self.nextone = global.weapon[global.submenucoord[(global.submenu + 1)]]
                    if (global.submenu == 13)
                        _temp_local_var_53 = 1
                    else
                        _temp_local_var_53 = (global.submenu == 14)
                    if _temp_local_var_53
                        self.nextone = global.armor[global.submenucoord[(global.submenu + 1)]]
                    global.submenucoord[global.submenu] = (global.submenucoord[global.submenu] + 1)
                    if (global.submenu == 12)
                    {
                        if (global.submenucoord[global.submenu] > (self.pagemax[0] + 5))
                            _temp_local_var_54 = (self.pagemax[0] < 6)
                        else
                            _temp_local_var_54 = 0
                        if _temp_local_var_54
                            self.pagemax[0] = (self.pagemax[0] + 1)
                    }
                    if (global.submenu == 13)
                        _temp_local_var_55 = 1
                    else
                        _temp_local_var_55 = (global.submenu == 14)
                    if _temp_local_var_55
                    {
                        if (global.submenucoord[global.submenu] > (self.pagemax[1] + 5))
                            _temp_local_var_56 = (self.pagemax[1] < 6)
                        else
                            _temp_local_var_56 = 0
                        if _temp_local_var_56
                            self.pagemax[1] = (self.pagemax[1] + 1)
                    }
                }
            }
            else
                self.hold_down = 0
            if button1_p()
                _temp_local_var_57 = (self.onebuffer < 0)
            else
                _temp_local_var_57 = 0
            if _temp_local_var_57
            {
                self.onebuffer = 5
                self.canequip = 0
                self.wwho = global.char[global.submenucoord[10]]
                self.wmsg = " "@24
                if (global.submenu == 12)
                {
                    scr_weaponinfo(global.weapon[global.submenucoord[global.submenu]])
                    if (self.wwho == 2)
                        self.wmsg = self.wmessage2temp
                    if (self.wwho == 3)
                        self.wmsg = self.wmessage3temp
                    if (self.wwho == 1)
                        _temp_local_var_58 = (self.weaponchar1temp == 1)
                    else
                        _temp_local_var_58 = 0
                    if _temp_local_var_58
                        self.canequip = 1
                    if (self.wwho == 2)
                        _temp_local_var_59 = (self.weaponchar2temp == 1)
                    else
                        _temp_local_var_59 = 0
                    if _temp_local_var_59
                        self.canequip = 1
                    if (self.wwho == 3)
                        _temp_local_var_60 = (self.weaponchar3temp == 1)
                    else
                        _temp_local_var_60 = 0
                    if _temp_local_var_60
                        self.canequip = 1
                }
                if (global.submenu == 13)
                    _temp_local_var_61 = 1
                else
                    _temp_local_var_61 = (global.submenu == 14)
                if _temp_local_var_61
                {
                    scr_armorinfo(global.armor[global.submenucoord[global.submenu]])
                    if (self.wwho == 2)
                        self.wmsg = self.amessage2temp
                    if (self.wwho == 3)
                        self.wmsg = self.amessage3temp
                    if (self.wwho == 1)
                        _temp_local_var_62 = (self.armorchar1temp == 1)
                    else
                        _temp_local_var_62 = 0
                    if _temp_local_var_62
                        self.canequip = 1
                    if (self.wwho == 2)
                        _temp_local_var_63 = (self.armorchar2temp == 1)
                    else
                        _temp_local_var_63 = 0
                    if _temp_local_var_63
                        self.canequip = 1
                    if (self.wwho == 3)
                        _temp_local_var_64 = (self.armorchar3temp == 1)
                    else
                        _temp_local_var_64 = 0
                    if _temp_local_var_64
                        self.canequip = 1
                }
                if (self.canequip == 1)
                {
                    self.hold_up = 0
                    self.hold_down = 0
                    snd_play(snd_equip)
                    if (global.submenu == 12)
                    {
                        self.oldequip = global.charweapon[self.wwho]
                        self.newequip = global.weapon[global.submenucoord[global.submenu]]
                        global.charweapon[self.wwho] = self.newequip
                        global.weapon[global.submenucoord[global.submenu]] = self.oldequip
                        scr_weaponinfo_mine()
                        scr_weaponinfo_all()
                        self.twobuffer = 2
                        global.submenu = 11
                    }
                    if (global.submenu == 13)
                        _temp_local_var_65 = 1
                    else
                        _temp_local_var_65 = (global.submenu == 14)
                    if _temp_local_var_65
                    {
                        if (global.submenu == 13)
                            self.oldequip = global.chararmor1[self.wwho]
                        if (global.submenu == 14)
                            self.oldequip = global.chararmor2[self.wwho]
                        self.newequip = global.armor[global.submenucoord[global.submenu]]
                        if (global.submenu == 13)
                            global.chararmor1[self.wwho] = self.newequip
                        if (global.submenu == 14)
                            global.chararmor2[self.wwho] = self.newequip
                        global.armor[global.submenucoord[global.submenu]] = self.oldequip
                        scr_armorinfo_mine()
                        scr_armorinfo_all()
                        self.twobuffer = 2
                        scr_dmenu_armor_selection_match()
                        global.submenu = 11
                    }
                }
                else
                    snd_play(snd_cantselect)
                scr_itemcomment(global.submenucoord[10], self.wmsg)
            }
            if button2_p()
                _temp_local_var_66 = (self.twobuffer < 0)
            else
                _temp_local_var_66 = 0
            if _temp_local_var_66
            {
                self.hold_up = 0
                self.hold_down = 0
                self.twobuffer = 2
                scr_dmenu_armor_selection_match()
                global.submenu = 11
            }
        }
        if (global.submenu == 11)
        {
            if up_p()
            {
                global.submenucoord[11] = (global.submenucoord[11] - 1)
                if (global.submenucoord[11] == -1)
                    global.submenucoord[11] = 2
            }
            if down_p()
            {
                global.submenucoord[11] = (global.submenucoord[11] + 1)
                if (global.submenucoord[11] == 3)
                    global.submenucoord[11] = 0
            }
            if button1_p()
                _temp_local_var_67 = (self.onebuffer < 0)
            else
                _temp_local_var_67 = 0
            if _temp_local_var_67
            {
                self.onebuffer = 2
                global.submenu = (12 + global.submenucoord[11])
                scr_dmenu_armor_selection_match()
            }
            if button2_p()
                _temp_local_var_68 = (self.twobuffer < 0)
            else
                _temp_local_var_68 = 0
            if _temp_local_var_68
            {
                self.deschaver = 0
                self.twobuffer = 2
                global.submenu = 10
            }
        }
        if (global.submenu == 10)
        {
            if left_p()
            {
                global.submenucoord[10] = (global.submenucoord[10] - 1)
                if (global.submenucoord[10] < 0)
                    global.submenucoord[10] = (self.chartotal - 1)
            }
            if right_p()
            {
                global.submenucoord[10] = (global.submenucoord[10] + 1)
                if (global.submenucoord[10] > (self.chartotal - 1))
                    global.submenucoord[10] = 0
            }
            global.charselect = global.submenucoord[10]
            if button1_p()
                _temp_local_var_69 = (self.onebuffer < 0)
            else
                _temp_local_var_69 = 0
            if _temp_local_var_69
            {
                self.deschaver = 1
                global.submenucoord[11] = 0
                global.submenu = 11
                self.onebuffer = 2
            }
            if button2_p()
                _temp_local_var_70 = (self.twobuffer < 0)
            else
                _temp_local_var_70 = 0
            if _temp_local_var_70
            {
                self.twobuffer = 2
                global.menuno = 0
                global.submenu = 0
                global.charselect = -1
            }
        }
    }
    if (global.menuno == 0)
    {
        global.submenu = 0
        if left_p()
        {
            if (global.menucoord[0] == 0)
            {
                global.menucoord[0] = 4
                self.movenoise = 1
            }
            else
            {
                global.menucoord[0] = (global.menucoord[0] - 1)
                if (global.menucoord[0] == 2)
                    global.menucoord[0] = (global.menucoord[0] - 1)
                self.movenoise = 1
            }
        }
        if right_p()
        {
            if (global.menucoord[0] == 4)
            {
                global.menucoord[0] = 0
                self.movenoise = 1
            }
            else
            {
                global.menucoord[0] = (global.menucoord[0] + 1)
                if (global.menucoord[0] == 2)
                    global.menucoord[0] = (global.menucoord[0] + 1)
                self.movenoise = 1
            }
        }
        if button1_p()
            _temp_local_var_71 = (self.onebuffer < 0)
        else
            _temp_local_var_71 = 0
        if _temp_local_var_71
        {
            self.onebuffer = 2
            global.menuno = (global.menucoord[0] + 1)
            if (global.menuno == 1)
            {
                global.submenu = 1
                global.submenucoord[1] = 0
                global.submenucoord[2] = 0
                global.submenucoord[3] = 0
                global.submenucoord[4] = 0
            }
            if (global.menuno == 2)
            {
                scr_weaponinfo_all()
                scr_armorinfo_all()
                scr_weaponinfo_mine()
                scr_armorinfo_mine()
                global.submenucoord[10] = 0
                global.submenucoord[11] = 0
                global.submenucoord[12] = 0
                global.submenucoord[13] = 0
                global.submenucoord[14] = 0
                self.pagemax[0] = 0
                self.pagemax[1] = 0
                global.submenu = 10
                global.charselect = global.submenucoord[10]
            }
            if (global.menuno == 3)
                global.menuno = 0
            if (global.menuno == 4)
            {
                global.submenu = 20
                scr_spellinfo_all()
            }
            if (global.menuno == 5)
            {
                global.submenu = 30
                global.submenucoord[30] = 0
            }
        }
        self.close = 0
        if button2_p()
            _temp_local_var_72 = (self.twobuffer < 0)
        else
            _temp_local_var_72 = 0
        if _temp_local_var_72
            self.close = 1
        if button3_p()
            _temp_local_var_73 = (self.threebuffer < 0)
        else
            _temp_local_var_73 = 0
        if _temp_local_var_73
            self.close = 1
        if (self.close == 1)
        {
            if (global.menuno == 0)
            {
                global.menuno = -1
                global.interact = 0
                self.charcon = 0
                with(obj_mainchara)
                {
                    self.threebuffer = 2
                    self.twobuffer = 2
                }
            }
        }
    }
}
if (global.interact == 6)
{
    if (~ instance_exists(obj_dialoguer))
        global.interact = 0
}
if (self.charcon == 1)
{
    self.drawchar = 1
    self.bpy = 60
    self.tpy = 80
    if (global.interact == 5)
    {
        if (self.tp < (self.tpy - 1))
        {
            if ((self.tpy - self.tp) <= 40)
                self.tp = (self.tp + round(((self.tpy - self.tp) / 2.5)))
            else
                self.tp = (self.tp + 30)
        }
        else
            self.tp = self.tpy
    }
    if (self.bp < (self.bpy - 1))
        _temp_local_var_74 = (self.charcon == 1)
    else
        _temp_local_var_74 = 0
    if _temp_local_var_74
    {
        if ((self.bpy - self.bp) <= 40)
            self.bp = (self.bp + round(((self.bpy - self.bp) / 2.5)))
        else
            self.bp = (self.bp + 30)
    }
    else
        self.bp = self.bpy
}
if (self.charcon == 0)
{
    if (self.tp > 0)
    {
        if (self.tp >= 80)
            self.tp = (self.tp - round((self.tp / 2.5)))
        else
            self.tp = (self.tp - 30)
    }
    else
        self.tp = 0
    if (self.bp > 0)
    {
        if (self.bp >= 40)
            self.bp = (self.bp - round((self.bp / 2.5)))
        else
            self.bp = (self.bp - 30)
    }
    else
        self.bp = 0
    if (self.bp == 0)
        self.drawchar = 0
}
if (self.movenoise == 1)
{
    snd_play(snd_menumove)
    self.movenoise = 0
}
if (self.selectnoise == 1)
{
    snd_play(snd_select)
    self.selectnoise = 0
}
self.onebuffer = (self.onebuffer - 1)
self.twobuffer = (self.twobuffer - 1)
self.threebuffer = (self.threebuffer - 1)
self.upbuffer = (self.upbuffer - 1)
self.downbuffer = (self.downbuffer - 1)
if scr_debug()
{
    if keyboard_check_pressed('S')
        instance_create(0, 0, obj_savemenu)
    if keyboard_check_pressed('L')
        scr_load()
    if keyboard_check_pressed('R')
        game_restart_true()
}
