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
                    self.itemdescb[self.i] = "---"@2273
                }
                break
            
            case 1:
                {
                    self.itemdescb[self.i] = scr_84_get_lang_string("scr_itemdesc_b_slash_scr_itemdesc_b_gml_11_0"@2335)
                }
                break
            
            case 2:
                {
                    self.itemdescb[self.i] = scr_84_get_lang_string("scr_itemdesc_b_slash_scr_itemdesc_b_gml_14_0"@2336)
                }
                break
            
        }
        
        self.i = (self.i + 1)
        continue
    }
    break
}
