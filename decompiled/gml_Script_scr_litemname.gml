self.i = 0
while(true)
{
    if (self.i < 8)
    {
        self.itemid = global.litem[self.i]
        if (self.itemid == 0)
            global.litemname[self.i] = " "@24
        if (self.itemid == 1)
            global.litemname[self.i] = scr_84_get_lang_string("scr_litemname_slash_scr_litemname_gml_6_0"@110)
        if (self.itemid == 2)
            global.litemname[self.i] = scr_84_get_lang_string("scr_litemname_slash_scr_litemname_gml_7_0"@111)
        if (self.itemid == 3)
            global.litemname[self.i] = scr_84_get_lang_string("scr_litemname_slash_scr_litemname_gml_8_0"@112)
        if (self.itemid == 4)
            global.litemname[self.i] = scr_84_get_lang_string("scr_litemname_slash_scr_litemname_gml_9_0"@113)
        if (self.itemid == 5)
            global.litemname[self.i] = scr_84_get_lang_string("scr_litemname_slash_scr_litemname_gml_10_0"@114)
        if (self.itemid == 6)
            global.litemname[self.i] = scr_84_get_lang_string("scr_litemname_slash_scr_litemname_gml_11_0"@115)
        if (self.itemid == 7)
            global.litemname[self.i] = scr_84_get_lang_string("scr_litemname_slash_scr_litemname_gml_12_0"@116)
        if (self.itemid == 8)
            global.litemname[self.i] = scr_84_get_lang_string("scr_litemname_slash_scr_litemname_gml_13_0"@117)
        self.i = (self.i + 1)
        continue
    }
    break
}
