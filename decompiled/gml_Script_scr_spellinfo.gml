self.cost = -1
self.spelltarget = 1
self.spellname = " "@24
self.spellnameb = " "@24
self.spelldescb = " "@24
self.spelldesc = " "@24
self.spellanim = 0
self.spellusable = 0
self.spelltext = " "@24
switch self.argument0
{
    case 0:
        {
            self.spellname = " "@24
            self.spellnameb = " "@24
            self.spelltarget = 0
            self.cost = -1
            self.spelldescb = scr_84_get_lang_string("scr_spellinfo_slash_scr_spellinfo_gml_18_0"@2173)
        }
        break
    
    case 1:
        {
            self.spellname = scr_84_get_lang_string("scr_spellinfo_slash_scr_spellinfo_gml_21_0"@2174)
            self.spellnameb = scr_84_get_lang_string("scr_spellinfo_slash_scr_spellinfo_gml_22_0"@2175)
            self.spelldescb = scr_84_get_lang_string("scr_spellinfo_slash_scr_spellinfo_gml_23_0"@2176)
            self.spelldesc = scr_84_get_lang_string("scr_spellinfo_slash_scr_spellinfo_gml_24_0"@2177)
            self.spelltarget = 2
            self.cost = 125
            self.spellusable = 0
        }
        break
    
    case 2:
        {
            self.spellname = scr_84_get_lang_string("scr_spellinfo_slash_scr_spellinfo_gml_31_0"@2178)
            self.spellnameb = scr_84_get_lang_string("scr_spellinfo_slash_scr_spellinfo_gml_32_0"@2179)
            self.spelldescb = scr_84_get_lang_string("scr_spellinfo_slash_scr_spellinfo_gml_33_0"@2180)
            self.spelldesc = scr_84_get_lang_string("scr_spellinfo_slash_scr_spellinfo_gml_34_0"@2181)
            self.spelltarget = 1
            self.cost = 80
            self.usable = 0
            self.spellusable = 1
        }
        break
    
    case 3:
        {
            self.spellname = scr_84_get_lang_string("scr_spellinfo_slash_scr_spellinfo_gml_42_0"@2182)
            self.spellnameb = scr_84_get_lang_string("scr_spellinfo_slash_scr_spellinfo_gml_43_0"@2183)
            self.spelldescb = scr_84_get_lang_string("scr_spellinfo_slash_scr_spellinfo_gml_44_0"@2184)
            self.spelldesc = scr_84_get_lang_string("scr_spellinfo_slash_scr_spellinfo_gml_45_0"@2185)
            self.spelltarget = 2
            self.cost = 40
            self.usable = 0
            self.spellusable = 0
        }
        break
    
    case 4:
        {
            self.spellname = scr_84_get_lang_string("scr_spellinfo_slash_scr_spellinfo_gml_52_0"@2186)
            self.spellnameb = scr_84_get_lang_string("scr_spellinfo_slash_scr_spellinfo_gml_53_0"@2187)
            self.spelldescb = scr_84_get_lang_string("scr_spellinfo_slash_scr_spellinfo_gml_54_0"@2188)
            self.spelldesc = scr_84_get_lang_string("scr_spellinfo_slash_scr_spellinfo_gml_55_0"@2189)
            self.spelltarget = 2
            self.cost = 125
            if (global.charweapon[2] == 7)
                self.cost = 100
            self.spellusable = 0
        }
        break
    
    case 5:
        {
            self.spellname = scr_84_get_lang_string("scr_spellinfo_slash_scr_spellinfo_gml_64_0"@2190)
            self.spellnameb = scr_84_get_lang_string("scr_spellinfo_slash_scr_spellinfo_gml_65_0"@2191)
            self.spelldescb = scr_84_get_lang_string("scr_spellinfo_slash_scr_spellinfo_gml_66_0"@2192)
            self.spelldesc = " "@24
            self.spelltarget = 2
            self.cost = 0
            self.spellusable = 0
        }
        break
    
    case 6:
        {
            self.spellname = scr_84_get_lang_string("scr_spellinfo_slash_scr_spellinfo_gml_75_0"@2193)
            self.spellnameb = scr_84_get_lang_string("scr_spellinfo_slash_scr_spellinfo_gml_76_0"@2194)
            self.spelldescb = scr_84_get_lang_string("scr_spellinfo_slash_scr_spellinfo_gml_77_0"@2195)
            self.spelldesc = " "@24
            self.spelltarget = 0
            self.cost = 0
            self.spellusable = 0
        }
        break
    
    case 7:
        {
            self.spellname = scr_84_get_lang_string("scr_spellinfo_slash_scr_spellinfo_gml_86_0"@2196)
            self.spellnameb = scr_84_get_lang_string("scr_spellinfo_slash_scr_spellinfo_gml_87_0"@2197)
            self.spelldescb = scr_84_get_lang_string("scr_spellinfo_slash_scr_spellinfo_gml_88_0"@2198)
            self.spelldesc = scr_84_get_lang_string("scr_spellinfo_slash_scr_spellinfo_gml_89_0"@2199)
            self.spelltarget = 0
            self.cost = 0
            self.spellusable = 0
        }
        break
    
}

