if (self.con < 400)
{
    if ((self.con == 1) && ((__view_get(0, 0) >= (self.xx - 13)) && ((__view_get(0, 0) <= (self.xx + 20)) && (global.interact == 0))))
    {
        __view_set(0, 0, (self.xx - 10))
        global.interact = 1
        self.con = 40
        global.msc = 135
        scr_text(global.msc)
        global.fe = 3
        global.typer = 31
        global.fc = 2
        instance_create(0, 0, obj_dialoguer)
    }
    if ((self.con == 20) && (d_ex() == 0))
    {
        global.encounterno = 3
        global.specialbattle = 3
        global.flag[9] = 1
        global.batmusic[0] = snd_init("battle.ogg")
        instance_create(0, 0, obj_encounterbasic)
        self.con = 21
        self.alarm[4] = 10
    }
    if (self.con == 22)
    {
        if instance_exists(obj_battlecontroller)
        {
            with (self.dummy)
                self.visible = 0
            self.con = 23
        }
    }
    if (self.con == 23)
    {
        if instance_exists(obj_endbattle)
        {
            self.con = 23.5
            self.alarm[4] = 20
        }
    }
    if ((self.con >= 24) && (self.con <= 28))
        global.interact = 1
    if (self.con == 24.5)
    {
        self.con = 24
        self.alarm[4] = 4
    }
    if (self.con == 25)
    {
        self.con = 26
        self.alarm[4] = 4
    }
    if (self.con == 27)
    {
        global.fc = 2
        global.fe = 0
        global.typer = 31
        global.msg[0] = scr_84_get_lang_string("obj_tutorialbattleevent_slash_Step_0_gml_87_0")
        global.msg[1] = scr_84_get_lang_string("obj_tutorialbattleevent_slash_Step_0_gml_88_0")
        global.msg[2] = scr_84_get_lang_string("obj_tutorialbattleevent_slash_Step_0_gml_89_0")
        global.msg[3] = ((scr_84_get_lang_string("obj_tutorialbattleevent_slash_Step_0_gml_90_0") + scr_get_input_name(6)) + scr_84_get_lang_string("obj_tutorialbattleevent_slash_Step_0_gml_90_1"))
        scr_noface(4)
        global.msg[5] = scr_84_get_lang_string("obj_tutorialbattleevent_slash_Step_0_gml_92_0")
        if (global.flag[205] >= 4)
        {
            global.msg[0] = scr_84_get_lang_string("obj_tutorialbattleevent_slash_Step_0_gml_95_0")
            global.msg[1] = scr_84_get_lang_string("obj_tutorialbattleevent_slash_Step_0_gml_96_0")
        }
        instance_create(0, 0, obj_dialoguer)
        scr_itemget(4)
        self.con = 28
    }
    if ((self.con == 28) && (d_ex() == 0))
    {
        global.interact = 0
        if (global.plot < 31)
            global.plot = 31
        self.con = 29
        instance_destroy()
    }
    if ((self.con == 40) && (d_ex() == 0))
    {
        scr_itemget(4)
        self.con = 41
        if (global.plot < 31)
            global.plot = 31
        global.interact = 0
        instance_destroy()
    }
}
