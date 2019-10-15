switch self.argument1
{
    case 0:
        {
            global.msg[0] = scr_84_get_lang_string("scr_litemuseb_slash_scr_litemuseb_gml_6_0"@43)
        }
        break
    
    case 1:
        {
            global.msg[0] = scr_84_get_lang_string("scr_litemuseb_slash_scr_litemuseb_gml_9_0"@44)
            snd_play(snd_swallow)
            scr_writetext(0, "x"@37, 0, 0)
            script_execute(scr_litemshift, self.argument0, 0)
        }
        break
    
    case 2:
        {
            global.msg[0] = scr_84_get_lang_string("scr_litemuseb_slash_scr_litemuseb_gml_18_0"@48)
            scr_lweaponeq(self.argument0, self.argument1)
            snd_play(snd_item)
            scr_writetext(0, "x"@37, 0, 0)
        }
        break
    
    case 3:
        {
            global.msg[0] = scr_84_get_lang_string("scr_litemuseb_slash_scr_litemuseb_gml_26_0"@50)
            script_execute(scr_lrecoitem, 1)
            script_execute(scr_litemshift, self.argument0, 0)
        }
        break
    
    case 4:
        {
            global.msg[0] = scr_84_get_lang_string("scr_litemuseb_slash_scr_litemuseb_gml_34_0"@51)
            scr_writetext(0, "x"@37, 0, 0)
        }
        break
    
    case 5:
        {
            global.msg[0] = scr_84_get_lang_string("scr_litemuseb_slash_scr_litemuseb_gml_42_0"@52)
            scr_writetext(0, "x"@37, 0, 0)
        }
        break
    
    case 6:
        {
            global.msg[0] = scr_84_get_lang_string("scr_litemuseb_slash_scr_litemuseb_gml_48_0"@53)
            scr_lweaponeq(self.argument0, self.argument1)
            snd_play(snd_item)
            scr_writetext(0, "x"@37, 0, 0)
        }
        break
    
    case 7:
        {
            global.msg[0] = scr_84_get_lang_string("scr_litemuseb_slash_scr_litemuseb_gml_56_0"@54)
            scr_lweaponeq(self.argument0, self.argument1)
            snd_play(snd_item)
            scr_writetext(0, "x"@37, 0, 0)
        }
        break
    
    case 8:
        {
            global.msg[0] = scr_84_get_lang_string("scr_litemuseb_slash_scr_litemuseb_gml_63_0"@55)
            snd_play(snd_egg)
            scr_writetext(0, "x"@37, 0, 0)
        }
        break
    
    case 201:
        {
            self.tempsaid = 0
            snd_play(snd_phone)
            global.msg[0] = scr_84_get_lang_string("scr_litemuseb_slash_scr_litemuseb_gml_72_0"@57)
            global.msg[1] = scr_84_get_lang_string("scr_litemuseb_slash_scr_litemuseb_gml_73_0"@58)
            if (self.room == room_krisroom)
                _temp_local_var_2 = 1
            else
            {
                if (self.room == room_krishallway)
                    _temp_local_var_2 = 1
                else
                    _temp_local_var_2 = (self.room == room_torbathroom)
            }
            if _temp_local_var_2
            {
                self.tempsaid = 1
                global.flag[268] = 1
                scr_torface(1, 0)
                global.msg[2] = scr_84_get_lang_string("scr_litemuseb_slash_scr_litemuseb_gml_82_0"@61)
                global.msg[3] = scr_84_get_lang_string("scr_litemuseb_slash_scr_litemuseb_gml_83_0"@62)
                global.msg[4] = scr_84_get_lang_string("scr_litemuseb_slash_scr_litemuseb_gml_84_0"@63)
                scr_noface(5)
                global.msg[6] = scr_84_get_lang_string("scr_litemuseb_slash_scr_litemuseb_gml_86_0"@65)
            }
            if (self.room == room_torhouse)
            {
                self.tempsaid = 1
                global.msg[0] = scr_84_get_lang_string("scr_litemuseb_slash_scr_litemuseb_gml_92_0"@66)
                global.msg[1] = scr_84_get_lang_string("scr_litemuseb_slash_scr_litemuseb_gml_93_0"@67)
                global.msg[2] = scr_84_get_lang_string("scr_litemuseb_slash_scr_litemuseb_gml_94_0"@68)
            }
            if (self.tempsaid == 0)
                _temp_local_var_3 = (global.plot >= 250)
            else
                _temp_local_var_3 = 0
            if _temp_local_var_3
            {
                if (global.flag[272] == 0)
                {
                    global.msc = 365
                    scr_text(global.msc)
                }
                if (global.flag[272] == 1)
                {
                    global.msg[0] = scr_84_get_lang_string("scr_litemuseb_slash_scr_litemuseb_gml_109_0"@71)
                    scr_torface(1, 1)
                    global.msg[2] = scr_84_get_lang_string("scr_litemuseb_slash_scr_litemuseb_gml_111_0"@72)
                    global.msg[3] = scr_84_get_lang_string("scr_litemuseb_slash_scr_litemuseb_gml_112_0"@73)
                    global.msg[4] = scr_84_get_lang_string("scr_litemuseb_slash_scr_litemuseb_gml_113_0"@74)
                    global.msg[5] = scr_84_get_lang_string("scr_litemuseb_slash_scr_litemuseb_gml_114_0"@75)
                    scr_noface(6)
                    global.msg[7] = scr_84_get_lang_string("scr_litemuseb_slash_scr_litemuseb_gml_116_0"@76)
                }
                if (global.flag[272] >= 2)
                {
                    global.msg[0] = scr_84_get_lang_string("scr_litemuseb_slash_scr_litemuseb_gml_121_0"@77)
                    scr_torface(1, 1)
                    global.msg[2] = scr_84_get_lang_string("scr_litemuseb_slash_scr_litemuseb_gml_123_0"@78)
                    global.msg[3] = scr_84_get_lang_string("scr_litemuseb_slash_scr_litemuseb_gml_124_0"@79)
                    global.msg[4] = scr_84_get_lang_string("scr_litemuseb_slash_scr_litemuseb_gml_125_0"@80)
                    scr_noface(5)
                    global.msg[6] = scr_84_get_lang_string("scr_litemuseb_slash_scr_litemuseb_gml_127_0"@81)
                }
                global.flag[272] = (global.flag[272] + 1)
            }
            scr_writetext(0, "x"@37, 0, 0)
        }
        break
    
    case 202:
        {
            global.msc = 375
            scr_text(global.msc)
            global.typer = 5
            global.fc = 0
            instance_create(0, 0, obj_dialoguer)
        }
        break
    
}

