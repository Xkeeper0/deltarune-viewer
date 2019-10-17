for (self.i = 0; self.i < 12; self.i += 1)
{
    self.itemid = global.item[self.i]
    switch self.itemid
    {
        case 0:
            self.itemdescb[self.i] = "---"
            break
        case 1:
            self.itemdescb[self.i] = scr_84_get_lang_string("scr_itemdesc_b_slash_scr_itemdesc_b_gml_11_0")
            break
        case 2:
            self.itemdescb[self.i] = scr_84_get_lang_string("scr_itemdesc_b_slash_scr_itemdesc_b_gml_14_0")
            break
    }
    
}
