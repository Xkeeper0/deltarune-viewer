self.i = 0
while(true)
{
    if (self.i < 8)
    {
        global.phonename[self.i] = " "@24
        self.i = (self.i + 1)
        continue
    }
    break
}
self.i = 0
while(true)
{
    if (self.i < 8)
    {
        self.itemid = global.phone[self.i]
        switch self.itemid
        {
            case 201:
                {
                    global.phonename[self.i] = scr_84_get_lang_string("scr_phonename_slash_scr_phonename_gml_17_0"@28)
                }
                break
            
            case 202:
                {
                    global.phonename[self.i] = scr_84_get_lang_string("scr_phonename_slash_scr_phonename_gml_20_0"@30)
                    if (global.flag[274] >= 2)
                        global.phonename[self.i] = scr_84_get_lang_string("scr_phonename_slash_scr_phonename_gml_21_0"@32)
                }
                break
            
        }
        
        self.i = (self.i + 1)
        continue
    }
    break
}
