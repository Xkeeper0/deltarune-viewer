self.actcost = -1
self.acttype = 0
self.actspell = 0
self.actor = 1
self.actname = " "
switch self.argument0
{
    case 0:
        self.actcost = -1
        self.acttype = 0
        self.actspell = 0
        self.actor = 1
        self.actname = " "
        break
    case 1:
        self.actcost = -1
        self.acttype = 0
        self.actspell = 0
        self.actor = 1
        self.actname = scr_84_get_lang_string("scr_actinfo_slash_scr_actinfo_gml_21_0")
        break
    case 2:
        self.actcost = -1
        self.acttype = 1
        self.actspell = 2
        self.actor = 2
        self.actname = scr_84_get_lang_string("scr_actinfo_slash_scr_actinfo_gml_28_0")
        break
}

