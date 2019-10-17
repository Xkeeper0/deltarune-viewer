self.cost = -1
self.spelltarget = 1
self.spellname = " "
self.spellnameb = " "
self.spelldescb = " "
self.spelldesc = " "
self.spellanim = 0
self.spellusable = 0
self.spelltext = " "
switch self.argument0
{
    case 0:
        self.spellname = " "
        self.spellnameb = " "
        self.spelltarget = 0
        self.cost = -1
        self.spelldescb = scr_84_get_lang_string("scr_spellinfo_slash_scr_spellinfo_gml_18_0")
        break
    case 1:
        self.spellname = scr_84_get_lang_string("scr_spellinfo_slash_scr_spellinfo_gml_21_0")
        self.spellnameb = scr_84_get_lang_string("scr_spellinfo_slash_scr_spellinfo_gml_22_0")
        self.spelldescb = scr_84_get_lang_string("scr_spellinfo_slash_scr_spellinfo_gml_23_0")
        self.spelldesc = scr_84_get_lang_string("scr_spellinfo_slash_scr_spellinfo_gml_24_0")
        self.spelltarget = 2
        self.cost = 125
        self.spellusable = 0
        break
    case 2:
        self.spellname = scr_84_get_lang_string("scr_spellinfo_slash_scr_spellinfo_gml_31_0")
        self.spellnameb = scr_84_get_lang_string("scr_spellinfo_slash_scr_spellinfo_gml_32_0")
        self.spelldescb = scr_84_get_lang_string("scr_spellinfo_slash_scr_spellinfo_gml_33_0")
        self.spelldesc = scr_84_get_lang_string("scr_spellinfo_slash_scr_spellinfo_gml_34_0")
        self.spelltarget = 1
        self.cost = 80
        self.usable = 0
        self.spellusable = 1
        break
    case 3:
        self.spellname = scr_84_get_lang_string("scr_spellinfo_slash_scr_spellinfo_gml_42_0")
        self.spellnameb = scr_84_get_lang_string("scr_spellinfo_slash_scr_spellinfo_gml_43_0")
        self.spelldescb = scr_84_get_lang_string("scr_spellinfo_slash_scr_spellinfo_gml_44_0")
        self.spelldesc = scr_84_get_lang_string("scr_spellinfo_slash_scr_spellinfo_gml_45_0")
        self.spelltarget = 2
        self.cost = 40
        self.usable = 0
        self.spellusable = 0
        break
    case 4:
        self.spellname = scr_84_get_lang_string("scr_spellinfo_slash_scr_spellinfo_gml_52_0")
        self.spellnameb = scr_84_get_lang_string("scr_spellinfo_slash_scr_spellinfo_gml_53_0")
        self.spelldescb = scr_84_get_lang_string("scr_spellinfo_slash_scr_spellinfo_gml_54_0")
        self.spelldesc = scr_84_get_lang_string("scr_spellinfo_slash_scr_spellinfo_gml_55_0")
        self.spelltarget = 2
        self.cost = 125
        if (global.charweapon[2] == 7)
            self.cost = 100
        self.spellusable = 0
        break
    case 5:
        self.spellname = scr_84_get_lang_string("scr_spellinfo_slash_scr_spellinfo_gml_64_0")
        self.spellnameb = scr_84_get_lang_string("scr_spellinfo_slash_scr_spellinfo_gml_65_0")
        self.spelldescb = scr_84_get_lang_string("scr_spellinfo_slash_scr_spellinfo_gml_66_0")
        self.spelldesc = " "
        self.spelltarget = 2
        self.cost = 0
        self.spellusable = 0
        break
    case 6:
        self.spellname = scr_84_get_lang_string("scr_spellinfo_slash_scr_spellinfo_gml_75_0")
        self.spellnameb = scr_84_get_lang_string("scr_spellinfo_slash_scr_spellinfo_gml_76_0")
        self.spelldescb = scr_84_get_lang_string("scr_spellinfo_slash_scr_spellinfo_gml_77_0")
        self.spelldesc = " "
        self.spelltarget = 0
        self.cost = 0
        self.spellusable = 0
        break
    case 7:
        self.spellname = scr_84_get_lang_string("scr_spellinfo_slash_scr_spellinfo_gml_86_0")
        self.spellnameb = scr_84_get_lang_string("scr_spellinfo_slash_scr_spellinfo_gml_87_0")
        self.spelldescb = scr_84_get_lang_string("scr_spellinfo_slash_scr_spellinfo_gml_88_0")
        self.spelldesc = scr_84_get_lang_string("scr_spellinfo_slash_scr_spellinfo_gml_89_0")
        self.spelltarget = 0
        self.cost = 0
        self.spellusable = 0
        break
}

