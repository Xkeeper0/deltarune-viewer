with(obj_darkcontroller)
{
    self.charcon = 0
}
global.msc = 0
global.typer = 5
if (global.darkzone == 1)
    global.typer = 6
global.fc = 0
global.fe = 0
global.interact = 1
self.image_index = 1
global.msg[0] = scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_14_0"@6372)
if (global.flag[self.itemflag] == 1)
{
    global.msg[0] = scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_18_0"@6373)
    if (self.room == room_field_maze)
        global.msg[0] = scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_19_0"@6374)
    if (self.room == room_forest_dancers1)
        _temp_local_var_1 = 1
    else
        _temp_local_var_1 = (self.room == room_cc_4f)
    if _temp_local_var_1
    {
        if scr_havechar(3)
            _temp_local_var_2 = (self.extratext == 1)
        else
            _temp_local_var_2 = 0
        if _temp_local_var_2
        {
            global.msg[0] = scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_24_0"@6375)
            scr_ralface(1, 8)
            global.msg[2] = scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_26_0"@6376)
        }
        if scr_havechar(2)
        {
            if scr_havechar(3)
                _temp_local_var_3 = (self.extratext == 1)
            else
                _temp_local_var_3 = 0
        }
        else
            _temp_local_var_3 = 0
        if _temp_local_var_3
        {
            global.msg[0] = scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_31_0"@6377)
            scr_ralface(1, 8)
            global.msg[2] = scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_33_0"@6378)
            scr_susface(3, 7)
            global.msg[4] = scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_35_0"@6379)
        }
    }
    if (self.room == room_forest_area3A)
        global.msg[0] = scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_40_0"@6380)
}
else
{
    snd_play(snd_locker)
    self.itemname = scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_48_0"@6381)
    self.itemtypename = scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_49_0"@6382)
    if (self.itemtype == "armor"@167)
    {
        scr_armorinfo(self.t_itemid)
        self.itemname = self.armornametemp
        self.itemtypename = scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_54_0"@6384)
        scr_armorget(self.t_itemid)
    }
    if (self.itemtype == "weapon"@166)
    {
        scr_weaponinfo(self.t_itemid)
        self.itemname = self.weaponnametemp
        self.itemtypename = scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_61_0"@6385)
        scr_weaponget(self.t_itemid)
    }
    if (self.itemtype == "item"@103)
    {
        scr_iteminfo(self.t_itemid)
        self.itemname = self.itemnameb
        self.itemtypename = scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_68_0"@6386)
        scr_itemget(self.t_itemid)
    }
    if (self.itemtype == "key"@6371)
    {
        scr_keyiteminfo(self.t_itemid)
        self.itemname = self.tempkeyitemname
        self.itemtypename = scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_75_0"@6387)
        scr_keyitemget(self.t_itemid)
    }
    if (self.itemtype == "gold"@641)
    {
        self.noroom = 0
        global.gold = (global.gold + self.t_itemid)
        self.itemtypename = scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_82_0"@6388)
        self.itemname = (string(self.t_itemid) + scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_83_0"@6389))
    }
    global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_87_0"@6390), self.itemname)
    if (self.itemtype == "gold"@641)
        global.msg[0] = (global.msg[0] + "%"@3588)
    if (self.noroom == 0)
    {
        global.msg[1] = scr_84_get_subst_string(scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_99_0"@6391), self.itemname, self.itemtypename)
        if instance_exists(obj_hathyfightevent)
            _temp_local_var_7 = (global.plot <= 40)
        else
            _temp_local_var_7 = 0
        if _temp_local_var_7
        {
            global.msg[1] = scr_84_get_subst_string(scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_103_0"@6392), self.itemname, self.itemtypename)
            scr_ralface(2, 0)
            global.msg[3] = scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_105_0"@6393)
            global.msg[4] = scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_106_0"@6394)
            global.msg[5] = scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_107_0"@6395)
            with(obj_hathyfightevent)
            {
                self.equipcon = 1
            }
        }
        global.flag[self.itemflag] = 1
    }
    else
    {
        global.msg[1] = scr_84_get_subst_string(scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_115_0"@6396), self.itemtypename)
        self.close = 1
    }
}
self.myinteract = 3
self.mydialoguer = instance_create(0, 0, obj_dialoguer)
self.talked = (self.talked + 1)
