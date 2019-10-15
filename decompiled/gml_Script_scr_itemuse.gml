self.w = self.argument0
self.usable = 0
if (global.charselect < 3)
    self._gc = global.char[global.charselect]
self.suspos = -1
self.ralpos = -1
self.i = 0
while(true)
{
    if (self.i < 3)
    {
        if (global.char[self.i] == 2)
            self.suspos = self.i
        if (global.char[self.i] == 3)
            self.ralpos = self.i
        self.i = (self.i + 1)
        continue
    }
    break
}
switch self.argument0
{
    case 0:
        {
            self.itemnameb = " "@24
            self.itemdescb = "---"@2273
        }
        break
    
    case 1:
        {
            scr_healitem(global.charselect, 40)
            self.usable = 1
            if (self._gc == 2)
                scr_itemcomment(global.charselect, scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_28_0"@2356))
            if (self._gc == 3)
            {
                if scr_havechar(2)
                    scr_itemcomment(self.suspos, scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_33_0"@2358))
                scr_itemcomment(global.charselect, scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_35_0"@2359))
            }
        }
        break
    
    case 2:
        {
            self.reviveamt = ceil((global.maxhp[global.char[global.charselect]] / 2))
            scr_healitem(global.charselect, self.reviveamt)
            self.usable = 1
            if (self._gc == 2)
            {
                scr_itemcomment(self.suspos, scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_47_0"@2360))
                scr_itemcomment(self.ralpos, scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_48_0"@2361))
            }
            if (self._gc == 3)
            {
                if scr_havechar(2)
                    scr_itemcomment(self.suspos, scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_53_0"@2362))
                scr_itemcomment(self.ralpos, scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_54_0"@2363))
            }
        }
        break
    
    case 4:
        {
            global.interact = 6
            with(obj_darkcontroller)
            {
                self.charcon = 0
            }
            global.menuno = -1
            self.charcon = 0
            global.fc = 0
            global.fe = 0
            global.typer = 6
            global.msg[0] = scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_71_0"@2367)
            instance_create(0, 0, obj_dialoguer)
        }
        break
    
    case 5:
        {
            scr_healitem(global.charselect, 20)
            self.usable = 1
        }
        break
    
    case 6:
        {
            scr_healitem_all(160)
            if (self.suspos >= 0)
                scr_itemcomment(self.suspos, scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_83_0"@2369))
            if (self.ralpos >= 0)
                scr_itemcomment(self.ralpos, scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_84_0"@2370))
            self.usable = 1
        }
        break
    
    case 7:
        {
            scr_healitem_all(80)
            if (self.suspos >= 0)
                scr_itemcomment(self.suspos, scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_90_0"@2371))
            if (self.ralpos >= 0)
                scr_itemcomment(self.ralpos, scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_91_0"@2372))
            self.usable = 1
        }
        break
    
    case 8:
        {
            scr_healitem(global.charselect, 70)
            self.usable = 1
            if (global.char[global.charselect] == 2)
                scr_itemcomment(global.charselect, scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_101_0"@2373))
            if (global.char[global.charselect] == 3)
                scr_itemcomment(global.charselect, scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_105_0"@2374))
        }
        break
    
    case 9:
        {
            scr_healitem(global.charselect, 4)
            self.usable = 1
            if (global.char[global.charselect] == 2)
                scr_itemcomment(global.charselect, scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_115_0"@2375))
            if (global.char[global.charselect] == 3)
                scr_itemcomment(global.charselect, scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_119_0"@2376))
        }
        break
    
    case 10:
        {
            scr_healitem(global.charselect, 4)
            self.usable = 1
            if (global.char[global.charselect] == 2)
                scr_itemcomment(global.charselect, scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_129_0"@2377))
            if (global.char[global.charselect] == 3)
                scr_itemcomment(global.charselect, scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_133_0"@2378))
        }
        break
    
    case 11:
        {
            scr_healitem_all(30)
            if (self.suspos >= 0)
                scr_itemcomment(self.suspos, scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_139_0"@2379))
            if (self.ralpos >= 0)
                scr_itemcomment(self.ralpos, scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_140_0"@2380))
            self.usable = 1
        }
        break
    
    case 12:
        {
            self.usable = 1
            if (global.char[global.charselect] == 1)
                scr_healitem(global.charselect, 20)
            if (global.char[global.charselect] == 2)
            {
                scr_healitem(global.charselect, 80)
                scr_itemcomment(global.charselect, scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_154_0"@2381))
            }
            if (global.char[global.charselect] == 3)
            {
                scr_healitem(global.charselect, 50)
                scr_itemcomment(global.charselect, scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_159_0"@2382))
            }
        }
        break
    
    case 13:
        {
            self.usable = 1
            if (global.char[global.charselect] == 1)
                scr_healitem(global.charselect, 80)
            if (global.char[global.charselect] == 2)
            {
                scr_healitem(global.charselect, 20)
                scr_itemcomment(global.charselect, scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_173_0"@2383))
            }
            if (global.char[global.charselect] == 3)
            {
                scr_healitem(global.charselect, 50)
                scr_itemcomment(global.charselect, scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_178_0"@2384))
            }
        }
        break
    
    case 14:
        {
            self.usable = 1
            scr_healitem(global.charselect, 500)
            if (global.char[global.charselect] == 2)
                scr_itemcomment(global.charselect, scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_188_0"@2385))
            if (global.char[global.charselect] == 3)
                scr_itemcomment(global.charselect, scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_192_0"@2386))
        }
        break
    
    case 15:
        {
            scr_healitem(global.charselect, 50)
            self.usable = 1
            if (global.char[global.charselect] == 2)
                scr_itemcomment(global.charselect, scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_202_0"@2387))
            if (global.char[global.charselect] == 3)
                scr_itemcomment(global.charselect, scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_206_0"@2388))
        }
        break
    
    case 300:
        break
    
    case 301:
        {
            with(obj_darkcontroller)
            {
                self.charcon = 0
            }
            global.menuno = -1
            self.charcon = 0
            global.fc = 0
            global.fe = 0
            global.typer = 6
            snd_play(snd_phone)
            global.msg[0] = scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_222_0"@2389)
            instance_create(0, 0, obj_dialoguer)
            instance_create(0, 0, obj_darkphone_event)
            global.interact = 1
        }
        break
    
    case 302:
        {
            global.interact = 6
            with(obj_darkcontroller)
            {
                self.charcon = 0
            }
            global.menuno = -1
            self.charcon = 0
            snd_play(snd_egg)
            global.fc = 0
            global.fe = 0
            global.typer = 6
            global.msg[0] = scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_237_0"@2390)
            instance_create(0, 0, obj_dialoguer)
        }
        break
    
}

