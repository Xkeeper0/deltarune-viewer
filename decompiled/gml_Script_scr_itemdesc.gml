self.i = 0
while(true)
{
    if (self.i < 12)
    {
        self.itemid = global.item[self.i]
        switch self.itemid
        {
            case 0:
                {
                    self.itemdesc[self.i] = "---"@2273
                }
                break
            
            case 1:
                {
                    self.itemdesc[self.i] = scr_84_get_lang_string("scr_itemdesc_slash_scr_itemdesc_gml_11_0"@2320)
                }
                break
            
            case 2:
                {
                    self.itemdesc[self.i] = scr_84_get_lang_string("scr_itemdesc_slash_scr_itemdesc_gml_14_0"@2321)
                }
                break
            
            case 3:
                {
                    self.itemdesc[self.i] = scr_84_get_lang_string("scr_itemdesc_slash_scr_itemdesc_gml_17_0"@2322)
                }
                break
            
            case 4:
                {
                    self.itemdesc[self.i] = scr_84_get_lang_string("scr_itemdesc_slash_scr_itemdesc_gml_20_0"@2323)
                }
                break
            
            case 5:
                {
                    self.itemdesc[self.i] = scr_84_get_lang_string("scr_itemdesc_slash_scr_itemdesc_gml_23_0"@2324)
                }
                break
            
            case 6:
                {
                    self.itemdesc[self.i] = scr_84_get_lang_string("scr_itemdesc_slash_scr_itemdesc_gml_26_0"@2325)
                }
                break
            
            case 7:
                {
                    self.itemdesc[self.i] = scr_84_get_lang_string("scr_itemdesc_slash_scr_itemdesc_gml_29_0"@2326)
                }
                break
            
            case 8:
                {
                    self.itemdesc[self.i] = scr_84_get_lang_string("scr_itemdesc_slash_scr_itemdesc_gml_32_0"@2327)
                }
                break
            
            case 9:
                {
                    self.itemdesc[self.i] = scr_84_get_lang_string("scr_itemdesc_slash_scr_itemdesc_gml_35_0"@2328)
                }
                break
            
            case 10:
                {
                    self.itemdesc[self.i] = scr_84_get_lang_string("scr_itemdesc_slash_scr_itemdesc_gml_38_0"@2329)
                }
                break
            
            case 11:
                {
                    self.itemdesc[self.i] = scr_84_get_lang_string("scr_itemdesc_slash_scr_itemdesc_gml_41_0"@2330)
                }
                break
            
            case 12:
                {
                    self.itemdesc[self.i] = scr_84_get_lang_string("scr_itemdesc_slash_scr_itemdesc_gml_44_0"@2331)
                }
                break
            
            case 13:
                {
                    self.itemdesc[self.i] = scr_84_get_lang_string("scr_itemdesc_slash_scr_itemdesc_gml_47_0"@2332)
                }
                break
            
            case 14:
                {
                    self.itemdesc[self.i] = scr_84_get_lang_string("scr_itemdesc_slash_scr_itemdesc_gml_50_0"@2333)
                }
                break
            
            case 15:
                {
                    self.itemdesc[self.i] = scr_84_get_lang_string("scr_itemdesc_slash_scr_itemdesc_gml_53_0"@2334)
                }
                break
            
        }
        
        self.i = (self.i + 1)
        continue
    }
    break
}
