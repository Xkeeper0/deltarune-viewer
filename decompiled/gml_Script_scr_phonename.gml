for (self.i = 0; self.i < 8; self.i += 1)
    global.phonename[self.i] = " "
for (self.i = 0; self.i < 8; self.i += 1)
{
    self.itemid = global.phone[self.i]
    switch self.itemid
    {
        case 201:
            global.phonename[self.i] = scr_84_get_lang_string("scr_phonename_slash_scr_phonename_gml_17_0")
            break
        case 202:
            global.phonename[self.i] = scr_84_get_lang_string("scr_phonename_slash_scr_phonename_gml_20_0")
            if (global.flag[274] >= 2)
                global.phonename[self.i] = scr_84_get_lang_string("scr_phonename_slash_scr_phonename_gml_21_0")
            break
    }
    
}
