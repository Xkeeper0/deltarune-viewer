with (obj_darkcontroller)
    self.charcon = 0
global.msc = 0
global.typer = 5
if (global.darkzone == 1)
    global.typer = 6
global.fc = 0
global.fe = 0
global.interact = 1
self.image_index = 1
global.msg[0] = scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_14_0")
if (global.flag[self.itemflag] == 1)
{
    global.msg[0] = scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_18_0")
    if (self.room == room_field_maze)
        global.msg[0] = scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_19_0")
    if ((self.room == room_forest_dancers1) || (self.room == room_cc_4f))
    {
        if (scr_havechar(3) && (self.extratext == 1))
        {
            global.msg[0] = scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_24_0")
            scr_ralface(1, 8)
            global.msg[2] = scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_26_0")
        }
        if (scr_havechar(2) && (scr_havechar(3) && (self.extratext == 1)))
        {
            global.msg[0] = scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_31_0")
            scr_ralface(1, 8)
            global.msg[2] = scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_33_0")
            scr_susface(3, 7)
            global.msg[4] = scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_35_0")
        }
    }
    if (self.room == room_forest_area3A)
        global.msg[0] = scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_40_0")
}
else
{
    snd_play(snd_locker)
    self.itemname = scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_48_0")
    self.itemtypename = scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_49_0")
    if (self.itemtype == "armor")
    {
        scr_armorinfo(self.t_itemid)
        self.itemname = self.armornametemp
        self.itemtypename = scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_54_0")
        scr_armorget(self.t_itemid)
    }
    if (self.itemtype == "weapon")
    {
        scr_weaponinfo(self.t_itemid)
        self.itemname = self.weaponnametemp
        self.itemtypename = scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_61_0")
        scr_weaponget(self.t_itemid)
    }
    if (self.itemtype == "item")
    {
        scr_iteminfo(self.t_itemid)
        self.itemname = self.itemnameb
        self.itemtypename = scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_68_0")
        scr_itemget(self.t_itemid)
    }
    if (self.itemtype == "key")
    {
        scr_keyiteminfo(self.t_itemid)
        self.itemname = self.tempkeyitemname
        self.itemtypename = scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_75_0")
        scr_keyitemget(self.t_itemid)
    }
    if (self.itemtype == "gold")
    {
        self.noroom = 0
        global.gold += self.t_itemid
        self.itemtypename = scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_82_0")
        self.itemname = (string(self.t_itemid) + scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_83_0"))
    }
    global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_87_0"), self.itemname)
    if (self.itemtype == "gold")
        global.msg[0] += "%"
    if (self.noroom == 0)
    {
        global.msg[1] = scr_84_get_subst_string(scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_99_0"), self.itemname, self.itemtypename)
        if (instance_exists(obj_hathyfightevent) && (global.plot <= 40))
        {
            global.msg[1] = scr_84_get_subst_string(scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_103_0"), self.itemname, self.itemtypename)
            scr_ralface(2, 0)
            global.msg[3] = scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_105_0")
            global.msg[4] = scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_106_0")
            global.msg[5] = scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_107_0")
            with (obj_hathyfightevent)
                self.equipcon = 1
        }
        global.flag[self.itemflag] = 1
    }
    else
    {
        global.msg[1] = scr_84_get_subst_string(scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_115_0"), self.itemtypename)
        self.close = 1
    }
}
self.myinteract = 3
self.mydialoguer = instance_create(0, 0, obj_dialoguer)
self.talked += 1
