if (global.interact == 5)
{
    self.currentmenu = global.menuno
    if (global.menuno < 6)
        self.currentspot = global.menucoord[global.menuno]
    if button1_p()
    {
        if (global.menuno == 5)
        {
            if (global.menucoord[5] == 0)
            {
                global.menuno = 9
                script_execute(scr_litemuseb, global.menucoord[1], global.litem[global.menucoord[1]])
            }
            if (global.menucoord[5] == 1)
            {
                global.menuno = 9
                script_execute(scr_litemdesc, global.litem[global.menucoord[1]])
                script_execute(scr_writetext, 0, "x", 0, 0)
            }
            if (global.menucoord[5] == 2)
            {
                self.dontthrow = 0
                global.menuno = 9
                if (global.litem[global.menucoord[1]] == 5)
                    self.dontthrow = 1
                if (self.dontthrow == 0)
                {
                    self.i = round(random(30))
                    if (self.i == 0)
                        global.msg[0] = ((scr_84_get_lang_string("obj_overworldc_slash_Step_0_gml_32_0") + global.litemname[global.menucoord[1]]) + ".")
                    if (self.i == 1)
                        global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("obj_overworldc_slash_Step_0_gml_33_0"), global.litemname[global.menucoord[1]])
                    if (self.i == 2)
                        global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("obj_overworldc_slash_Step_0_gml_35_0"), global.litemname[global.menucoord[1]])
                    if (self.i == 3)
                        global.msg[0] = ((scr_84_get_lang_string("obj_overworldc_slash_Step_0_gml_36_0") + global.litemname[global.menucoord[1]]) + ".")
                    if (self.i > 3)
                        global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("obj_overworldc_slash_Step_0_gml_37_0"), global.litemname[global.menucoord[1]])
                    global.msg[0] += scr_84_get_lang_string("obj_overworldc_slash_Step_0_gml_38_0")
                    if (global.litem[global.menucoord[1]] == 8)
                    {
                        global.msg[0] = scr_84_get_lang_string("obj_overworldc_slash_Step_0_gml_41_0")
                        if (global.flag[263] == 0)
                            global.flag[263] = 1
                    }
                    script_execute(scr_writetext, 0, "x", 0, 0)
                    script_execute(scr_litemshift, global.menucoord[1], 0)
                }
                if (self.dontthrow == 1)
                {
                    global.msc = 10
                    scr_text(global.msc)
                    script_execute(scr_writetext, 10, "x", 0, 0)
                }
            }
        }
        if (global.menuno == 3)
        {
            global.menuno = 9
            script_execute(scr_litemuseb, global.menucoord[3], global.phone[global.menucoord[3]])
        }
        if (global.menuno == 1)
        {
            global.menuno = 5
            global.menucoord[5] = 0
        }
        if (global.menuno == 0)
            global.menuno += (global.menucoord[0] + 1)
        if (global.menuno == 3)
        {
            script_execute(scr_phonename)
            global.menucoord[3] = 0
        }
        if (global.menuno == 1)
        {
            if (global.litem[0] != 0)
            {
                global.menucoord[1] = 0
                script_execute(scr_litemname)
            }
            else
                global.menuno = 0
        }
    }
    if up_p()
    {
        if (global.menuno == 0)
        {
            if (global.menucoord[0] != 0)
                global.menucoord[0] -= 1
        }
        if (global.menuno == 1)
        {
            if (global.menucoord[1] != 0)
                global.menucoord[1] -= 1
        }
        if (global.menuno == 3)
        {
            if (global.menucoord[3] != 0)
                global.menucoord[3] -= 1
        }
    }
    if down_p()
    {
        if (global.menuno == 0)
        {
            if (global.menucoord[0] != 2)
                global.menucoord[0] += 1
        }
        if (global.menuno == 1)
        {
            if (global.menucoord[1] != 7)
            {
                if (global.litem[(global.menucoord[1] + 1)] != 0)
                    global.menucoord[1] += 1
            }
        }
        if (global.menuno == 3)
        {
            if (global.menucoord[3] != 7)
            {
                if (global.phone[(global.menucoord[3] + 1)] != 0)
                    global.menucoord[3] += 1
            }
        }
    }
    if (button2_p() && (self.buffer >= 0))
    {
        if (global.menuno == 0)
        {
            global.menuno = -1
            global.interact = 0
        }
        else if (global.menuno <= 3)
            global.menuno = 0
        if (global.menuno == 5)
            global.menuno = 1
    }
    if right_p()
    {
        if (global.menuno == 5)
        {
            if (global.menucoord[5] != 2)
                global.menucoord[5] += 1
        }
    }
    if left_p()
    {
        if (global.menuno == 5)
        {
            if (global.menucoord[5] != 0)
                global.menucoord[5] -= 1
        }
    }
    if button3_p()
    {
        if (global.menuno == 0)
        {
            global.menuno = -1
            global.interact = 0
        }
    }
    if ((self.currentmenu < global.menuno) && (global.menuno != 9))
        self.selnoise = 1
    else if ((global.menuno >= 0) && (global.menuno < 6))
    {
        if (self.currentspot != global.menucoord[global.menuno])
            self.movenoise = 1
    }
}
if ((global.menuno == 9) && (instance_exists(obj_dialoguer) == 0))
{
    global.menuno = -1
    global.interact = 0
}
if (self.selnoise == 1)
{
    snd_play(snd_select)
    self.selnoise = 0
}
if (self.movenoise == 1)
{
    snd_play(snd_menumove)
    self.movenoise = 0
}
if scr_debug()
{
    if keyboard_check_pressed(ord("S"))
        instance_create(0, 0, obj_savemenu)
    if keyboard_check_pressed(ord("F"))
        self.room_speed = 58
    if keyboard_check_pressed(ord("L"))
        scr_load()
    if keyboard_check_pressed(ord("R"))
        game_restart_true()
}
