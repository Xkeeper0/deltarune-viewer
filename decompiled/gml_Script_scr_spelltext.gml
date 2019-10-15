self.spell = self.argument0
self.caster = self.argument1
self.star = global.chartarget[self.argument1]
self.spelltext = " "@24
switch self.spell
{
    case 0:
        break
    
    case 1:
        {
            global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("scr_spelltext_slash_scr_spelltext_gml_14_0"@2219), global.charname[global.char[self.caster]])
        }
        break
    
    case 2:
        {
            global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("scr_spelltext_slash_scr_spelltext_gml_18_0"@2220), global.charname[global.char[self.caster]])
        }
        break
    
    case 3:
        {
            global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("scr_spelltext_slash_scr_spelltext_gml_23_0"@2221), global.charname[global.char[self.caster]])
            scr_retarget_spell()
            if (global.monster[self.star] == 1)
            {
                if (global.monsterstatus[self.star] == 1)
                {
                }
                else
                {
                    global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("scr_spelltext_slash_scr_spelltext_gml_33_0"@2222), global.charname[global.char[self.caster]])
                    if (global.mercymod[self.star] >= 100)
                        global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("scr_spelltext_slash_scr_spelltext_gml_36_0"@2223), global.charname[global.char[self.caster]])
                }
            }
        }
        break
    
    case 4:
        {
            global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("scr_spelltext_slash_scr_spelltext_gml_43_0"@2224), global.charname[global.char[self.caster]])
        }
        break
    
    case 5:
        {
            global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("scr_spelltext_slash_scr_spelltext_gml_47_0"@2225), global.charname[global.char[self.caster]])
        }
        break
    
    case 6:
        {
            global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("scr_spelltext_slash_scr_spelltext_gml_51_0"@2226), global.charname[global.char[self.caster]])
        }
        break
    
    case 100:
        {
            self.cancelattack = 0
            global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("scr_spelltext_slash_scr_spelltext_gml_58_0"@2227), global.charname[global.char[self.caster]], global.monstername[self.star])
            scr_retarget_spell()
            if (global.mercymod[self.star] >= 100)
                global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("scr_spelltext_slash_scr_spelltext_gml_62_0"@2228), global.charname[global.char[self.caster]], global.monstername[self.star])
            else
            {
                global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("scr_spelltext_slash_scr_spelltext_gml_66_0"@2229), global.charname[global.char[self.caster]], global.monstername[self.star])
                if (global.monsterstatus[self.star] == 1)
                {
                    global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("scr_spelltext_slash_scr_spelltext_gml_69_0"@2230), global.charname[global.char[self.caster]], global.monstername[self.star])
                    global.msg[1] = scr_84_get_lang_string("scr_spelltext_slash_scr_spelltext_gml_70_0"@2231)
                }
            }
            if (self.cancelattack == 1)
                global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("scr_spelltext_slash_scr_spelltext_gml_73_0"@2232), global.charname[global.char[self.caster]])
        }
        break
    
    case 201:
        {
            global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("scr_spelltext_slash_scr_spelltext_gml_78_0"@2233), global.charname[global.char[self.caster]])
        }
        break
    
    case 202:
        {
            global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("scr_spelltext_slash_scr_spelltext_gml_82_0"@2234), global.charname[global.char[self.caster]])
        }
        break
    
    case 203:
        {
            global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("scr_spelltext_slash_scr_spelltext_gml_86_0"@2235), global.charname[global.char[self.caster]])
            global.msg[1] = scr_84_get_lang_string("scr_spelltext_slash_scr_spelltext_gml_87_0"@2236)
            self.spec_shard = 0
            self._en = 0
            while(true)
            {
                if (self._en < 3)
                {
                    self.shardtest[self._en] = 0
                    if (global.monster[self._en] == 1)
                    {
                        if (global.monstertype[self._en] == 5)
                        {
                            self.spec_shard = 1
                            self.shardtest[self._en] = 1
                            global.mercymod[self._en] = 200
                        }
                    }
                    self._en = (self._en + 1)
                    continue
                }
                break
            }
            if (self.spec_shard > 0)
            {
                scr_itemshift(global.bmenucoord[4][self.argument1], 0)
                global.msg[1] = ""@2240
                global.msg[2] = scr_84_get_lang_string("scr_spelltext_slash_scr_spelltext_gml_109_0"@2241)
                self._j = 0
                while(true)
                {
                    if (self._j < 3)
                    {
                        if (self.shardtest[self._j] == 1)
                            global.msg[1] = (global.msg[1] + scr_84_get_subst_string(scr_84_get_lang_string("scr_spelltext_slash_scr_spelltext_gml_112_0"@2243), global.monstername[self._j]))
                        self._j = (self._j + 1)
                        continue
                    }
                    break
                }
                global.msg[1] = (global.msg[1] + "/"@357)
            }
        }
        break
    
    case 204:
        {
            global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("scr_spelltext_slash_scr_spelltext_gml_122_0"@2244), global.charname[global.char[self.caster]])
            global.msg[1] = scr_84_get_lang_string("scr_spelltext_slash_scr_spelltext_gml_123_0"@2245)
            self.spec_shard = 0
            self._en = 0
            while(true)
            {
                if (self._en < 3)
                {
                    self.shardtest[self._en] = 0
                    if (global.monster[self._en] == 1)
                    {
                        if (global.monstertype[self._en] == 5)
                        {
                            self.spec_shard = 1
                            self.shardtest[self._en] = 1
                            global.monsterstatus[self._en] = 1
                            global.monstercomment[self._en] = scr_84_get_lang_string("scr_spelltext_slash_scr_spelltext_gml_135_0"@2246)
                        }
                        if (global.monstertype[self._en] == 6)
                        {
                            self.spec_shard = 1
                            self.shardtest[self._en] = 2
                        }
                        if (global.monstertype[self._en] == 7)
                            _temp_local_var_2 = 1
                        else
                            _temp_local_var_2 = (global.monstertype[self._en] == 16)
                        if _temp_local_var_2
                        {
                            self.spec_shard = 1
                            self.shardtest[self._en] = 3
                            with(global.monsterinstance[self._en])
                            {
                                self.battlecancel = 1
                                if (self.manual == 0)
                                {
                                    self.manual = 1
                                    scr_mercyadd(self.myself, 50)
                                }
                            }
                        }
                    }
                    self._en = (self._en + 1)
                    continue
                }
                break
            }
            if (self.spec_shard > 0)
            {
                global.msg[1] = ""@2240
                self._j = 0
                while(true)
                {
                    if (self._j < 3)
                    {
                        if (self.shardtest[self._j] == 1)
                            global.msg[1] = (global.msg[1] + scr_84_get_subst_string(scr_84_get_lang_string("scr_spelltext_slash_scr_spelltext_gml_168_0"@2250), global.monstername[self._j]))
                        if (self.shardtest[self._j] == 2)
                            global.msg[1] = (global.msg[1] + scr_84_get_subst_string(scr_84_get_lang_string("scr_spelltext_slash_scr_spelltext_gml_169_0"@2251), global.monstername[self._j]))
                        if (self.shardtest[self._j] == 3)
                            global.msg[1] = (global.msg[1] + scr_84_get_subst_string(scr_84_get_lang_string("scr_spelltext_slash_scr_spelltext_gml_170_0"@2252), global.monstername[self._j]))
                        self._j = (self._j + 1)
                        continue
                    }
                    break
                }
                global.msg[1] = (global.msg[1] + scr_84_get_lang_string("scr_spelltext_slash_scr_spelltext_gml_172_0"@2253))
            }
        }
        break
    
    case 205:
        {
            global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("scr_spelltext_slash_scr_spelltext_gml_179_0"@2254), global.charname[global.char[self.caster]])
        }
        break
    
    case 206:
        {
            global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("scr_spelltext_slash_scr_spelltext_gml_183_0"@2255), global.charname[global.char[self.caster]])
        }
        break
    
    case 207:
        {
            global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("scr_spelltext_slash_scr_spelltext_gml_187_0"@2256), global.charname[global.char[self.caster]])
        }
        break
    
    case 208:
        {
            global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("scr_spelltext_slash_scr_spelltext_gml_191_0"@2257), global.charname[global.char[self.caster]])
        }
        break
    
    case 209:
        {
            global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("scr_spelltext_slash_scr_spelltext_gml_194_0"@2258), global.charname[global.char[self.caster]])
        }
        break
    
    case 210:
        {
            global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("scr_spelltext_slash_scr_spelltext_gml_197_0"@2259), global.charname[global.char[self.caster]])
        }
        break
    
    case 211:
        {
            global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("scr_spelltext_slash_scr_spelltext_gml_200_0"@2260), global.charname[global.char[self.caster]])
        }
        break
    
    case 212:
        {
            global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("scr_spelltext_slash_scr_spelltext_gml_203_0"@2261), global.charname[global.char[self.caster]])
        }
        break
    
    case 213:
        {
            global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("scr_spelltext_slash_scr_spelltext_gml_206_0"@2262), global.charname[global.char[self.caster]])
        }
        break
    
    case 214:
        {
            global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("scr_spelltext_slash_scr_spelltext_gml_209_0"@2263), global.charname[global.char[self.caster]])
        }
        break
    
    case 215:
        {
            global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("scr_spelltext_slash_scr_spelltext_gml_212_0"@2264), global.charname[global.char[self.caster]])
        }
        break
    
}

