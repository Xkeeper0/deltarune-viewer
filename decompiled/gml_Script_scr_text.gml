switch self.argument0
{
    case 0:
        break
    
    case 10:
        {
            global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_7_0"@154)
            global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_8_0"@156)
            global.choicemsg[2] = " "@24
            global.choicemsg[3] = " "@24
            global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_11_0"@157)
            global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_12_0"@158)
            global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_13_0"@159)
        }
        break
    
    case 11:
        {
            if (global.choice == 0)
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_19_0"@161)
            else
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_23_0"@162)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_24_0"@163)
                global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_25_0"@164)
                script_execute(scr_litemshift, global.menucoord[1], 0)
                self.i = 0
                while(true)
                {
                    if (self.i < 12)
                    {
                        global.item[self.i] = 0
                        global.weapon[self.i] = 0
                        global.armor[self.i] = 0
                        self.i = (self.i + 1)
                        continue
                    }
                    break
                }
            }
        }
        break
    
    case 100:
        {
            global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_38_0"@168)
            global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_39_0"@169)
            global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_40_0"@170)
            global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_41_0"@171)
            global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_42_0"@172)
            global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_43_0"@173)
            global.msg[6] = " "@24
        }
        break
    
    case 101:
        {
            if (global.choice == 1)
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_50_0"@174)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_51_0"@175)
                with(obj_classscene)
                {
                    self.con = 20
                }
            }
            if (global.choice == 0)
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_56_0"@177)
        }
        break
    
    case 102:
        {
            global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_61_0"@178)
            global.msg[1] = " "@24
        }
        break
    
    case 103:
        {
            if (global.choice == 1)
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_68_0"@179)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_69_0"@180)
                with(obj_classscene)
                {
                    self.con = 20
                }
            }
            if (global.choice == 0)
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_74_0"@181)
        }
        break
    
    case 104:
        {
            global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_79_0"@182)
            global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_80_0"@183)
            global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_81_0"@184)
            global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_82_0"@185)
            global.msg[4] = " "@24
        }
        break
    
    case 105:
        {
            global.msg[0] = " %%"@186
        }
        break
    
    case 110:
        {
            global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_91_0"@187)
            global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_92_0"@188)
            global.choicemsg[2] = " "@24
            global.choicemsg[3] = " "@24
            if (global.flag[100] == 0)
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_97_0"@189)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_98_0"@190)
                global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_99_0"@191)
            }
            else
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_103_0"@192)
        }
        break
    
    case 111:
        {
            if (global.choice == 0)
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_111_0"@193)
                global.flag[100] = 1
                scr_itemget(3)
                with(obj_readable_room1)
                {
                    with(self.shine)
                    {
                        instance_destroy()
                    }
                }
            }
            else
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_118_0"@197)
        }
        break
    
    case 120:
        {
            global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_124_0"@198)
            global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_125_0"@199)
            global.choicemsg[2] = " "@24
            global.choicemsg[3] = " "@24
            global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_128_0"@200)
            global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_129_0"@201)
            global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_130_0"@202)
            global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_131_0"@203)
            global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_132_0"@204)
            global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_133_0"@205)
            global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_134_0"@206)
            global.msg[7] = " "@24
        }
        break
    
    case 121:
        {
            global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_139_0"@207)
            global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_140_0"@208)
            global.choicemsg[2] = " "@24
            global.choicemsg[3] = " "@24
            if (global.choice == 0)
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_145_0"@209)
            else
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_149_0"@210)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_150_0"@211)
                global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_151_0"@212)
                global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_152_0"@213)
                global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_153_0"@214)
                global.msg[5] = " "@24
            }
        }
        break
    
    case 122:
        {
            if (global.choice == 0)
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_162_0"@215)
            else
            {
                global.flag[203] = 1
                with(obj_darkcastle_event)
                {
                    self.con = 30
                }
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_168_0"@216)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_169_0"@217)
                scr_susface(2, 0)
                global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_171_0"@219)
                global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_172_0"@220)
                scr_ralface(5, 0)
                global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_174_0"@222)
                scr_susface(7, 0)
                global.msg[8] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_176_0"@223)
                global.msg[9] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_177_0"@224)
                scr_ralface(10, 0)
                global.msg[11] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_179_0"@225)
                global.msg[12] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_180_0"@226)
                scr_susface(13, 1)
                global.msg[14] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_182_0"@227)
                global.msg[15] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_183_0"@228)
                global.msg[16] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_184_0"@229)
                global.msg[17] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_185_0"@230)
                global.msg[18] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_186_0"@231)
                scr_ralface(19, 1)
                global.msg[20] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_188_0"@232)
            }
        }
        break
    
    case 125:
        {
            global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_193_0"@233)
            global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_194_0"@234)
            global.choicemsg[2] = " "@24
            global.choicemsg[3] = " "@24
            global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_197_0"@235)
            global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_198_0"@236)
            global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_199_0"@237)
            global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_200_0"@238)
            global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_201_0"@239)
            global.msg[5] = " "@24
        }
        break
    
    case 126:
        {
            if (global.choice == 0)
            {
                global.fe = 7
                global.flag[204] = 1
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_210_0"@241)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_211_0"@242)
                global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_212_0"@243)
                global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_213_0"@244)
                global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_214_0"@245)
            }
            else
            {
                global.flag[204] = 2
                global.fe = 8
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_221_0"@246)
            }
        }
        break
    
    case 130:
        {
            global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_226_0"@247)
            global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_227_0"@248)
            global.choicemsg[2] = " "@24
            global.choicemsg[3] = " "@24
            self.input_name = scr_get_input_name(5)
            global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("scr_text_slash_scr_text_gml_231_0"@251), self.input_name)
            global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_232_0"@252)
            global.msg[2] = " "@24
        }
        break
    
    case 131:
        {
            if (global.choice == 0)
            {
                global.fe = 3
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_241_0"@253)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_242_0"@254)
                global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_243_0"@255)
            }
            else
            {
                global.fe = 0
                self.input_name = scr_get_input_name(5)
                global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("scr_text_slash_scr_text_gml_249_0"@256), self.input_name)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_250_0"@257)
                global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_251_0"@258)
            }
        }
        break
    
    case 132:
        {
            global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_257_0"@259)
            global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_258_0"@260)
            global.choicemsg[2] = " "@24
            global.choicemsg[3] = " "@24
            global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_261_0"@261)
            global.msg[1] = ((scr_84_get_lang_string("scr_text_slash_scr_text_gml_262_0"@262) + scr_get_input_name(5)) + scr_84_get_lang_string("scr_text_slash_scr_text_gml_262_1"@263))
            global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_263_0"@264)
            global.msg[3] = " "@24
        }
        break
    
    case 133:
        {
            if (global.choice == 0)
            {
                global.fe = 3
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_272_0"@265)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_273_0"@266)
                global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_274_0"@267)
            }
            else
            {
                global.fe = 0
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_279_0"@268)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_280_0"@269)
                global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_281_0"@270)
            }
        }
        break
    
    case 135:
        {
            global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_288_0"@271)
            global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_289_0"@272)
            global.choicemsg[2] = " "@24
            global.choicemsg[3] = " "@24
            global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_292_0"@273)
            global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_293_0"@274)
            global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_294_0"@275)
            global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_295_0"@276)
            global.msg[4] = " "@24
        }
        break
    
    case 136:
        {
            if (global.choice == 0)
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_302_0"@277)
                with(obj_tutorialbattleevent)
                {
                    self.con = 20
                }
            }
            else
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_307_0"@278)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_308_0"@279)
                global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_309_0"@280)
                global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_310_0"@281)
                global.msg[4] = ((scr_84_get_lang_string("scr_text_slash_scr_text_gml_311_0"@282) + scr_get_input_name(6)) + scr_84_get_lang_string("scr_text_slash_scr_text_gml_311_1"@283))
                scr_noface(5)
                global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_313_0"@284)
            }
        }
        break
    
    case 140:
        {
            global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_318_0"@285)
            global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_319_0"@286)
            global.choicemsg[2] = " "@24
            global.choicemsg[3] = " "@24
            global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_322_0"@287)
            global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_323_0"@288)
            global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_324_0"@289)
            global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_325_0"@290)
            global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_326_0"@291)
            global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_327_0"@292)
            global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_328_0"@293)
            global.msg[7] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_329_0"@294)
            global.msg[8] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_330_0"@295)
            global.msg[9] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_331_0"@296)
            global.msg[10] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_332_0"@297)
            global.msg[11] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_333_0"@298)
            global.msg[12] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_334_0"@299)
            global.msg[13] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_335_0"@300)
            global.msg[14] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_336_0"@301)
            global.msg[15] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_337_0"@302)
            global.msg[16] = " "@24
        }
        break
    
    case 141:
        {
            global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_342_0"@303)
            global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_343_0"@304)
            if (global.choice == 1)
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_347_0"@305)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_348_0"@306)
                global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_349_0"@307)
                global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_350_0"@308)
            }
        }
        break
    
    case 145:
        {
            global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_357_0"@309)
            global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_358_0"@310)
            global.choicemsg[2] = " "@24
            global.choicemsg[3] = " "@24
            if (global.flag[101] == 0)
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_363_0"@311)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_364_0"@312)
                global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_365_0"@313)
            }
            if (global.flag[101] == 1)
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_369_0"@314)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_370_0"@315)
                global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_371_0"@316)
            }
            if (global.flag[101] >= 2)
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_376_0"@317)
        }
        break
    
    case 146:
        {
            if (global.choice == 0)
            {
                scr_itemget(1)
                if (self.noroom == 0)
                {
                    global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_387_0"@318)
                    global.flag[101] = (global.flag[101] + 1)
                }
                else
                    global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_392_0"@319)
            }
            else
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_398_0"@320)
        }
        break
    
    case 147:
        {
            global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_403_0"@321)
            global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_404_0"@322)
            global.choicemsg[2] = " "@24
            global.choicemsg[3] = " "@24
            if (global.flag[102] == 0)
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_409_0"@323)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_410_0"@324)
                global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_411_0"@325)
            }
            if (global.flag[102] == 1)
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_415_0"@326)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_416_0"@327)
                global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_417_0"@328)
            }
            if (global.flag[102] >= 2)
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_422_0"@329)
        }
        break
    
    case 148:
        {
            if (global.choice == 0)
            {
                scr_itemget(1)
                if (self.noroom == 0)
                {
                    global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_433_0"@330)
                    global.flag[102] = (global.flag[102] + 1)
                }
                else
                    global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_438_0"@331)
            }
            else
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_444_0"@332)
        }
        break
    
    case 149:
        {
            global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_449_0"@333)
            global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_450_0"@334)
            global.choicemsg[2] = " "@24
            global.choicemsg[3] = " "@24
            if (global.flag[103] == 0)
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_455_0"@335)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_456_0"@336)
                global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_457_0"@337)
            }
            else
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_461_0"@338)
        }
        break
    
    case 150:
        {
            if (global.choice == 0)
            {
                scr_keyitemget(3)
                if (self.noroom == 0)
                {
                    global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_472_0"@340)
                    global.flag[103] = 1
                }
                else
                    global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_477_0"@341)
            }
            else
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_483_0"@342)
        }
        break
    
    case 175:
        {
            global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_491_0"@343)
            global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_492_0"@344)
            global.choicemsg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_493_0"@345)
            global.choicemsg[3] = " "@24
            global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_495_0"@346)
            global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_496_0"@347)
            global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_497_0"@348)
            global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_498_0"@349)
            global.msg[4] = " "@24
        }
        break
    
    case 176:
        {
            if (global.choice == 0)
            {
                global.fc = 0
                global.typer = 6
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_507_0"@350)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_508_0"@351)
                scr_lanface(2, 2)
                global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_510_0"@353)
                global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_511_0"@354)
                global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_512_0"@355)
                scr_susface(6, 2)
                global.msg[7] = (scr_84_get_lang_string("scr_text_slash_scr_text_gml_514_0"@356) + "/"@357)
                scr_lanface(8, 7)
                global.msg[9] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_516_0"@358)
                global.msg[10] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_517_0"@359)
                scr_ralface(11, 1)
                global.msg[12] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_519_0"@360)
                scr_susface(13, 2)
                global.msg[14] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_521_0"@361)
                scr_lanface(15, 2)
                global.msg[16] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_523_0"@362)
                global.msg[17] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_524_0"@363)
                global.msg[18] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_525_0"@364)
                global.msg[19] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_526_0"@365)
                scr_ralface(20, "A"@366)
                global.msg[21] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_528_0"@367)
                scr_lanface(22, 2)
                global.msg[23] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_530_0"@368)
                global.msg[24] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_531_0"@369)
                global.flag[214] = 1
            }
            if (global.choice == 1)
            {
                global.fc = 0
                global.typer = 6
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_539_0"@370)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_540_0"@371)
                global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_541_0"@372)
                scr_lanface(3, 3)
                global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_543_0"@373)
                scr_ralface(5, "A"@366)
                global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_545_0"@374)
                scr_susface(7, 1)
                global.msg[8] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_547_0"@375)
                scr_lanface(9, 3)
                global.msg[10] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_549_0"@376)
                global.msg[11] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_550_0"@377)
                global.msg[12] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_551_0"@378)
                global.msg[13] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_552_0"@379)
                global.msg[14] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_553_0"@380)
                global.msg[15] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_554_0"@381)
                global.flag[214] = 2
            }
            if (global.choice == 2)
            {
                global.fc = 0
                global.typer = 6
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_562_0"@382)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_563_0"@383)
                scr_lanface(2, 7)
                global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_565_0"@384)
                scr_ralface(4, 8)
                global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_567_0"@385)
                global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_568_0"@386)
                global.msg[7] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_569_0"@387)
                scr_susface(8, 0)
                global.msg[9] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_571_0"@388)
                global.msg[10] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_572_0"@389)
                global.msg[11] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_573_0"@390)
                global.msg[12] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_574_0"@391)
                global.msg[13] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_575_0"@392)
                scr_ralface(14, 1)
                global.msg[15] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_577_0"@393)
                scr_susface(16, 2)
                global.msg[17] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_579_0"@394)
                global.msg[18] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_580_0"@395)
                global.msg[19] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_581_0"@396)
                global.msg[20] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_582_0"@397)
                scr_lanface(21, 1)
                global.msg[22] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_584_0"@398)
                global.msg[23] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_585_0"@399)
                global.msg[24] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_586_0"@400)
                global.flag[214] = 3
            }
        }
        break
    
    case 180:
        {
            global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_595_0"@401)
            global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_596_0"@402)
            global.choicemsg[2] = " "@24
            global.choicemsg[3] = " "@24
            global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_599_0"@403)
            global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_600_0"@404)
            global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_601_0"@405)
            global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_602_0"@406)
            global.msg[4] = " "@24
        }
        break
    
    case 181:
        {
            global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_607_0"@407)
            global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_608_0"@408)
            global.choicemsg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_609_0"@409)
            global.choicemsg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_610_0"@410)
            global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_611_0"@411)
            global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_612_0"@412)
            global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_613_0"@413)
            if (global.flag[255] < 2)
            {
                global.flag[255] = 2
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_618_0"@414)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_619_0"@415)
                global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_620_0"@416)
                global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_621_0"@417)
                global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_624_0"@418)
                global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_625_0"@419)
                if (global.choice == 1)
                {
                    global.fe = 1
                    global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_629_0"@420)
                    global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_630_0"@421)
                    global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_631_0"@422)
                    global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_632_0"@423)
                    global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_633_0"@424)
                    global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_634_0"@425)
                }
                global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_636_0"@426)
            }
        }
        break
    
    case 182:
        {
            global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_641_0"@427)
            if (global.choice == 0)
            {
                global.fe = 0
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_645_0"@428)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_646_0"@429)
                global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_647_0"@430)
                global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_648_0"@431)
                global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_649_0"@432)
                global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_650_0"@433)
                global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_651_0"@434)
                global.msg[7] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_652_0"@435)
                global.msg[8] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_653_0"@436)
                global.msg[9] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_654_0"@437)
                global.msg[10] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_655_0"@438)
            }
            if (global.choice == 1)
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_659_0"@439)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_660_0"@440)
                global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_661_0"@441)
                global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_662_0"@442)
                global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_663_0"@443)
                global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_664_0"@444)
                global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_665_0"@445)
                global.msg[7] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_666_0"@446)
                global.msg[8] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_667_0"@447)
                global.msg[9] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_668_0"@448)
                global.msg[10] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_669_0"@449)
            }
            if (global.choice == 2)
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_673_0"@450)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_674_0"@451)
                global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_675_0"@452)
                global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_676_0"@453)
                global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_677_0"@454)
            }
            if (global.choice == 3)
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_682_0"@455)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_683_0"@456)
            }
        }
        break
    
    case 185:
        {
            global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_689_0"@457)
            global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_690_0"@458)
            global.choicemsg[2] = " "@24
            global.choicemsg[3] = " "@24
            global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_693_0"@459)
            global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_694_0"@460)
            global.msg[2] = " "@24
        }
        break
    
    case 186:
        {
            global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_699_0"@461)
            global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_700_0"@462)
            global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_701_0"@463)
            global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_702_0"@464)
            global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_703_0"@465)
            global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_704_0"@466)
            global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_705_0"@467)
            global.msg[7] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_706_0"@468)
            global.msg[8] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_707_0"@469)
            global.msg[9] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_708_0"@470)
            if (global.choice < 1)
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_709_0"@471)
        }
        break
    
    case 190:
        {
            global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_713_0"@472)
            global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_714_0"@473)
            global.choicemsg[2] = " "@24
            global.choicemsg[3] = " "@24
            global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_717_0"@474)
            global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_718_0"@475)
            global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_719_0"@476)
            global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_720_0"@477)
            global.msg[4] = " "@24
        }
        break
    
    case 191:
        {
            if (global.choice == 0)
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_727_0"@478)
            if (global.choice == 1)
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_733_0"@479)
        }
        break
    
    case 192:
        {
            global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_738_0"@480)
            global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_739_0"@481)
            global.choicemsg[2] = " "@24
            global.choicemsg[3] = " "@24
            global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_743_0"@482)
            global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_744_0"@483)
            global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_745_0"@484)
            global.msg[3] = " "@24
            if (global.flag[257] == 1)
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_749_0"@485)
        }
        break
    
    case 193:
        {
            if (global.choice == 0)
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_756_0"@486)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_757_0"@487)
                global.flag[257] = 1
            }
            if (global.choice == 1)
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_763_0"@488)
        }
        break
    
    case 195:
        {
            global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_769_0"@489)
            global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_770_0"@490)
            global.choicemsg[2] = " "@24
            global.choicemsg[3] = " "@24
            global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_774_0"@491)
            global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_775_0"@492)
            global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_776_0"@493)
            global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_777_0"@494)
            global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_778_0"@495)
            global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_779_0"@496)
            global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_780_0"@497)
            global.msg[7] = " "@24
        }
        break
    
    case 196:
        {
            global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_786_0"@498)
            global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_787_0"@499)
            global.choicemsg[2] = " "@24
            global.choicemsg[3] = " "@24
            if (global.choice == 0)
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_794_0"@500)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_795_0"@501)
                global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_796_0"@502)
                global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_797_0"@503)
                global.msg[4] = " "@24
            }
            if (global.choice == 1)
            {
                global.flag[258] = 3
                global.flag[20] = 1
                global.msg[0] = "%%%"@504
            }
        }
        break
    
    case 197:
        {
            global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_809_0"@505)
            global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_810_0"@506)
            global.choicemsg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_811_0"@507)
            global.choicemsg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_812_0"@508)
            if (global.choice == 0)
            {
                global.flag[259] = 1
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_817_0"@509)
            }
            if (global.choice == 1)
            {
                global.flag[259] = 2
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_822_0"@510)
            }
            global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_825_0"@511)
            global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_826_0"@512)
            global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_827_0"@513)
            self.nn = scr_84_get_lang_string("scr_text_slash_scr_text_gml_828_0"@514)
            if (global.flag[259] == 2)
                self.nn = scr_84_get_lang_string("scr_text_slash_scr_text_gml_829_0"@516)
            global.msg[4] = scr_84_get_subst_string(scr_84_get_lang_string("scr_text_slash_scr_text_gml_830_0"@517), self.nn)
            global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_831_0"@518)
            global.msg[6] = " "@24
        }
        break
    
    case 198:
        {
            if (global.choice == 0)
            {
                global.flag[258] = 2
                global.flag[260] = 1
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_840_0"@519)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_841_0"@520)
                global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_842_0"@521)
            }
            if (global.choice == 1)
            {
                global.flag[258] = 2
                global.flag[260] = 2
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_848_0"@522)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_849_0"@523)
                global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_850_0"@524)
            }
            if (global.choice == 2)
            {
                global.flag[258] = 2
                global.flag[260] = 3
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_857_0"@525)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_858_0"@526)
                global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_859_0"@527)
            }
            if (global.choice == 3)
            {
                global.flag[258] = 3
                global.flag[260] = 4
                global.flag[20] = 1
                global.msg[0] = "%%%"@504
            }
            global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_869_0"@528)
            global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_870_0"@529)
            global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_871_0"@530)
            if (global.flag[259] == 2)
                global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_872_0"@531)
            global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_873_0"@532)
            global.msg[7] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_874_0"@533)
            global.msg[8] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_875_0"@534)
        }
        break
    
    case 210:
        {
            global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_879_0"@535)
            global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_880_0"@536)
            global.choicemsg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_881_0"@537)
            global.choicemsg[3] = " "@24
            if (self.read == 0)
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_885_0"@539)
                scr_asgface(1, 0)
                global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_887_0"@541)
                global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_888_0"@542)
                global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_889_0"@543)
            }
            else
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_894_0"@544)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_895_0"@545)
            }
        }
        break
    
    case 211:
        {
            global.fc = 0
            global.typer = 5
            global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_902_0"@546)
            if (global.choice == 0)
            {
                if (global.flag[263] == 2)
                    global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_907_0"@547)
                if (global.flag[263] == 1)
                {
                    global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_912_0"@548)
                    global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_913_0"@549)
                    global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_914_0"@550)
                }
                if (global.flag[263] == 0)
                {
                    global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_919_0"@551)
                    global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_920_0"@552)
                    global.flag[263] = 1
                    if scr_litemcheck(8)
                    {
                        global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_924_0"@553)
                        global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_925_0"@554)
                        global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_926_0"@555)
                        self.i = 0
                        while(true)
                        {
                            if (self.i < 8)
                            {
                                if (global.litem[self.i] == 8)
                                    scr_litemshift(self.i, 0)
                                self.i = (self.i + 1)
                                continue
                            }
                            break
                        }
                        global.flag[263] = 2
                    }
                }
            }
            if (global.choice == 1)
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_943_0"@557)
            if (global.choice == 2)
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_947_0"@558)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_948_0"@559)
                global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_949_0"@560)
                global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_950_0"@561)
            }
        }
        break
    
    case 215:
        {
            global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_955_0"@562)
            global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_956_0"@563)
            global.choicemsg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_957_0"@564)
            global.choicemsg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_958_0"@565)
            global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_961_0"@566)
            global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_962_0"@567)
            global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_963_0"@568)
            global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_964_0"@569)
            global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_965_0"@570)
            global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_966_0"@571)
            global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_967_0"@572)
            if (global.flag[265] > 0)
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_970_0"@573)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_971_0"@574)
            }
            global.flag[265] = 1
        }
        break
    
    case 216:
        {
            if (global.choice == 0)
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_979_0"@575)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_980_0"@576)
                global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_981_0"@577)
                global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_982_0"@578)
                global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_983_0"@579)
                global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_984_0"@580)
                global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_985_0"@581)
            }
            if (global.choice == 1)
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_989_0"@582)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_990_0"@583)
                global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_991_0"@584)
                global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_992_0"@585)
                global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_993_0"@586)
                global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_994_0"@587)
                global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_995_0"@588)
                global.msg[7] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_996_0"@589)
            }
            if (global.choice == 2)
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1000_0"@590)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1001_0"@591)
                global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1002_0"@592)
                global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1003_0"@593)
                global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1004_0"@594)
                global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1005_0"@595)
                global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1006_0"@596)
            }
            if (global.choice == 3)
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1010_0"@597)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1011_0"@598)
                global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1012_0"@599)
            }
        }
        break
    
    case 220:
        {
            global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1017_0"@600)
            global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1018_0"@601)
            global.choicemsg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1019_0"@602)
            global.choicemsg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1020_0"@603)
            global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1021_0"@604)
            global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1022_0"@605)
            global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1023_0"@606)
        }
        break
    
    case 221:
        {
            if (global.choice == 0)
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1029_0"@607)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1030_0"@608)
                global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1031_0"@609)
                global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1032_0"@610)
                global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1033_0"@611)
                global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1034_0"@612)
            }
            if (global.choice == 1)
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1039_0"@613)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1040_0"@614)
                global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1041_0"@615)
                global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1042_0"@616)
                global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1043_0"@617)
                global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1044_0"@618)
                global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1045_0"@619)
                global.msg[7] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1046_0"@620)
                global.msg[8] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1047_0"@621)
            }
            if (global.choice == 2)
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1052_0"@622)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1053_0"@623)
                global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1054_0"@624)
                global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1055_0"@625)
                global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1056_0"@626)
                global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1057_0"@627)
                global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1058_0"@628)
                global.msg[7] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1059_0"@629)
            }
            if (global.choice == 3)
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1063_0"@630)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1064_0"@631)
            }
        }
        break
    
    case 225:
        {
            global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1069_0"@632)
            global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1070_0"@633)
            global.choicemsg[2] = " "@24
            global.choicemsg[3] = " "@24
            global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1073_0"@634)
            global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1074_0"@635)
            global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1075_0"@636)
            global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1076_0"@637)
        }
        break
    
    case 226:
        {
            global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1080_0"@638)
            global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1081_0"@639)
            global.choicemsg[2] = " "@24
            global.choicemsg[3] = " "@24
            if (global.choice == 0)
            {
                self.afford = 1
                if (global.gold >= 50)
                    global.gold = (global.gold - 50)
                else
                    self.afford = 0
                if (self.afford == 1)
                {
                    global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1091_0"@642)
                    global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1092_0"@643)
                }
                else
                {
                    global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1096_0"@644)
                    global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1097_0"@645)
                    global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1098_0"@646)
                    global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1099_0"@647)
                    global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1100_0"@648)
                    global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1101_0"@649)
                    global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1102_0"@650)
                }
                with(obj_npc_puzzlemaster1)
                {
                    self.con = 5
                }
            }
            else
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1110_0"@651)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1111_0"@652)
                self.afford = 0
            }
        }
        break
    
    case 227:
        {
            global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1120_0"@653)
            global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1121_0"@654)
            global.choicemsg[2] = " "@24
            global.choicemsg[3] = " "@24
            if (global.choice == 0)
            {
                self.afford = 1
                if (global.gold >= 20)
                    global.gold = (global.gold - 20)
                else
                    self.afford = 0
                if (self.afford == 1)
                {
                    global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1131_0"@655)
                    global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1132_0"@656)
                }
                else
                {
                    global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1136_0"@657)
                    global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1137_0"@658)
                    global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1138_0"@659)
                    global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1139_0"@660)
                    global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1140_0"@661)
                    global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1141_0"@662)
                    global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1142_0"@663)
                }
                with(obj_npc_puzzlemaster1)
                {
                    self.con = 5
                }
            }
            else
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1150_0"@664)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1151_0"@665)
                self.afford = 0
            }
        }
        break
    
    case 228:
        {
            if (global.choice == 0)
            {
                self.afford = 1
                if (global.gold >= 1)
                    global.gold = (global.gold - 1)
                else
                    self.afford = 0
                if (self.afford == 1)
                {
                    global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1167_0"@666)
                    global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1168_0"@667)
                }
                else
                {
                    global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1172_0"@668)
                    global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1173_0"@669)
                    global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1174_0"@670)
                    global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1175_0"@671)
                    global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1176_0"@672)
                    global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1177_0"@673)
                    global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1178_0"@674)
                }
                with(obj_npc_puzzlemaster1)
                {
                    self.con = 5
                }
            }
            else
            {
                scr_ralface(0, 6)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1187_0"@675)
                scr_noface(2)
                global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1189_0"@676)
                scr_ralface(4, 1)
                global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1191_0"@677)
                scr_noface(6)
                global.msg[7] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1193_0"@678)
                with(obj_npc_puzzlemaster1)
                {
                    self.con = 5
                }
                self.afford = 0
            }
        }
        break
    
    case 230:
        {
            global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1202_0"@679)
            global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1203_0"@680)
            global.choicemsg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1204_0"@681)
            global.choicemsg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1205_0"@682)
            global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1206_0"@683)
            global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1207_0"@684)
        }
        break
    
    case 231:
        {
            global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1211_0"@685)
            if (global.choice == 0)
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1214_0"@686)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1215_0"@687)
                global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1216_0"@688)
                scr_ralface(3, 9)
                global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1218_0"@689)
                scr_noface(5)
                global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1220_0"@690)
            }
            if (global.choice == 1)
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1224_0"@691)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1225_0"@692)
                scr_ralface(2, 1)
                global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1227_0"@693)
                scr_noface(4)
                global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1229_0"@694)
            }
            if (global.choice == 2)
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1233_0"@695)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1234_0"@696)
                global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1235_0"@697)
                scr_susface(3, 0)
                global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1237_0"@698)
                scr_noface(5)
                global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1239_0"@699)
                if (~ scr_havechar(2))
                {
                    scr_ralface(3, 1)
                    global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1244_0"@701)
                }
            }
        }
        break
    
    case 235:
        {
            global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1251_0"@702)
            global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1252_0"@703)
            global.choicemsg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1253_0"@704)
            global.choicemsg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1254_0"@705)
            global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1255_0"@706)
            global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1256_0"@707)
        }
        break
    
    case 236:
        {
            global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1260_0"@708)
            if (global.choice == 0)
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1263_0"@709)
                scr_ralface(1, 9)
                global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1265_0"@710)
                scr_noface(3)
                global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1267_0"@711)
            }
            if (global.choice == 1)
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1272_0"@712)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1273_0"@713)
                scr_ralface(2, 1)
                global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1275_0"@714)
                scr_noface(4)
                global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1277_0"@715)
            }
            if (global.choice == 2)
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1281_0"@716)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1282_0"@717)
                scr_ralface(2, "A"@366)
                global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1284_0"@718)
                global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1285_0"@719)
            }
        }
        break
    
    case 240:
        {
            global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1290_0"@720)
            global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1291_0"@721)
            global.choicemsg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1292_0"@722)
            global.choicemsg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1293_0"@723)
            global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1294_0"@724)
            global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1295_0"@725)
        }
        break
    
    case 241:
        {
            global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1299_0"@726)
            if (global.choice == 0)
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1302_0"@727)
                scr_susface(1, 2)
                global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1304_0"@728)
                scr_noface(3)
                global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1306_0"@729)
                scr_susface(5, 4)
                global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1308_0"@730)
                if (~ scr_havechar(2))
                {
                    global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1312_0"@731)
                    global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1313_0"@732)
                }
                if (global.plot >= 150)
                {
                    global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1317_0"@733)
                    global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1318_0"@734)
                }
            }
            if (global.choice == 1)
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1325_0"@735)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1326_0"@736)
                global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1327_0"@737)
                scr_susface(3, 2)
                global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1329_0"@738)
                scr_noface(5)
                global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1331_0"@739)
                if (~ scr_havechar(2))
                {
                    global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1335_0"@740)
                    global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1336_0"@741)
                }
                if (global.plot >= 150)
                {
                    self.input_name = scr_get_input_name(4)
                    global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1341_0"@742)
                    global.msg[1] = scr_84_get_subst_string(scr_84_get_lang_string("scr_text_slash_scr_text_gml_1342_0"@743), self.input_name)
                }
            }
            if (global.choice == 2)
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1348_0"@744)
                scr_susface(1, 0)
                global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1350_0"@745)
                scr_noface(3)
                global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1352_0"@746)
                if (~ scr_havechar(2))
                {
                    global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1355_0"@747)
                    global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1356_0"@748)
                }
                if (global.plot >= 150)
                {
                    global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1360_0"@749)
                    global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1361_0"@750)
                }
            }
        }
        break
    
    case 245:
        {
            global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1373_0"@751)
            global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1374_0"@752)
            global.choicemsg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1375_0"@753)
            global.choicemsg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1376_0"@754)
            global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1377_0"@755)
            global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1378_0"@756)
        }
        break
    
    case 246:
        {
            global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1382_0"@757)
            if (global.choice == 0)
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1385_0"@758)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1386_0"@759)
                global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1387_0"@760)
                global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1388_0"@761)
                scr_ralface(4, 0)
                global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1390_0"@762)
                scr_noface(6)
                global.msg[7] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1392_0"@763)
            }
            if (global.choice == 1)
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1397_0"@764)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1398_0"@765)
                scr_ralface(2, 0)
                global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1400_0"@766)
                global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1401_0"@767)
                global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1402_0"@768)
                global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1403_0"@769)
                scr_noface(7)
                global.msg[8] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1405_0"@770)
            }
            if (global.choice == 2)
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1409_0"@771)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1410_0"@772)
                global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1411_0"@773)
                global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1412_0"@774)
            }
        }
        break
    
    case 250:
        {
            global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1417_0"@775)
            global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1418_0"@776)
            global.choicemsg[2] = " "@24
            global.choicemsg[3] = " "@24
            global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1421_0"@777)
            global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1422_0"@778)
            global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1423_0"@779)
            if (global.flag[216] == 1)
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1426_0"@780)
        }
        break
    
    case 251:
        {
            if (global.choice == 0)
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1433_0"@781)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1434_0"@782)
                self.afford = 1
                if (global.gold >= 1)
                    global.gold = (global.gold - 1)
                else
                    self.afford = 0
                if (self.afford == 1)
                    global.flag[216] = 1
                if (self.afford == 0)
                {
                    global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1440_0"@783)
                    global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1441_0"@784)
                }
            }
            if (global.choice == 1)
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1446_0"@785)
        }
        break
    
    case 255:
        {
            global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1451_0"@786)
            global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1452_0"@787)
            global.choicemsg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1453_0"@788)
            global.choicemsg[3] = " "@24
            global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1455_0"@789)
            scr_susface(1, 6)
            global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1457_0"@790)
            global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1458_0"@791)
            scr_ralface(4, 1)
            global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1460_0"@792)
            scr_susface(6, 7)
            global.msg[7] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1462_0"@793)
            scr_lanface(8, 3)
            global.msg[9] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1464_0"@794)
            scr_ralface(10, 6)
            global.msg[11] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1466_0"@795)
            scr_lanface(12, 2)
            global.msg[13] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1468_0"@796)
            scr_ralface(14, 8)
            global.msg[15] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1470_0"@797)
            scr_lanface(16, 1)
            global.msg[17] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1472_0"@798)
            scr_ralface(18, 8)
            global.msg[19] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1474_0"@799)
            global.msg[20] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1475_0"@800)
        }
        break
    
    case 256:
        {
            global.flag[232] = 1
            if (global.choice == 0)
            {
                scr_ralface(0, 6)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1488_0"@801)
                global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1489_0"@802)
                scr_lanface(3, 3)
                global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1491_0"@803)
                global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1492_0"@804)
                scr_ralface(6, 1)
                global.msg[7] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1494_0"@805)
                global.msg[8] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1495_0"@806)
                scr_susface(9, 7)
                global.msg[10] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1497_0"@807)
                scr_lanface(11, 3)
                global.msg[12] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1499_0"@808)
                scr_susface(13, 6)
                global.msg[14] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1501_0"@809)
            }
            if (global.choice == 1)
            {
                scr_noface(0)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1507_0"@810)
                global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1508_0"@811)
                global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1509_0"@812)
                global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1510_0"@813)
                scr_susface(5, 2)
                global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1512_0"@814)
                scr_lanface(7, 3)
                global.msg[8] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1514_0"@815)
            }
            if (global.choice == 2)
            {
                scr_susface(0, 2)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1521_0"@816)
                global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1522_0"@817)
                scr_lanface(3, 3)
                global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1524_0"@818)
                scr_susface(5, 2)
                global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1526_0"@819)
                scr_lanface(7, 3)
                global.msg[8] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1528_0"@820)
                scr_susface(9, 2)
                global.msg[10] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1530_0"@821)
                scr_lanface(11, 3)
                global.msg[12] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1532_0"@822)
            }
        }
        break
    
    case 270:
        {
            self.addflag = 0
            if (global.flag[267] == -10)
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1550_0"@824)
                self.addflag = 1
            }
            if (global.flag[267] == 0)
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1559_0"@825)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1560_0"@826)
                global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1561_0"@827)
                global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1562_0"@828)
                global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1563_0"@829)
                global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1564_0"@830)
                global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1565_0"@831)
                self.addflag = 1
            }
            if (global.flag[267] == 1)
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1572_0"@832)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1573_0"@833)
                global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1574_0"@834)
            }
            if (self.addflag == 1)
                global.flag[267] = (global.flag[267] + 1)
        }
        break
    
    case 285:
        {
            global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1586_0"@835)
            global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1587_0"@836)
            global.choicemsg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1588_0"@837)
            global.choicemsg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1589_0"@838)
            global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1590_0"@839)
            global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1591_0"@840)
            global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1592_0"@841)
        }
        break
    
    case 286:
        {
            global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1596_0"@842)
            if (global.choice == 0)
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1599_0"@843)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1600_0"@844)
                global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1601_0"@845)
                global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1602_0"@846)
                global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1603_0"@847)
                global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1604_0"@848)
                global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1605_0"@849)
                global.msg[7] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1606_0"@850)
                global.msg[8] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1607_0"@851)
            }
            if (global.choice == 1)
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1611_0"@852)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1612_0"@853)
                global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1613_0"@854)
                global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1614_0"@855)
                global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1615_0"@856)
                global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1616_0"@857)
                global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1617_0"@858)
            }
            if (global.choice == 2)
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1624_0"@859)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1625_0"@860)
                global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1626_0"@861)
                global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1627_0"@862)
                global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1628_0"@863)
                global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1629_0"@864)
                global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1630_0"@865)
                global.msg[7] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1631_0"@866)
                global.msg[8] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1632_0"@867)
                global.msg[9] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1633_0"@868)
                global.msg[10] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1634_0"@869)
                global.msg[11] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1635_0"@870)
                global.msg[12] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1636_0"@871)
                global.msg[13] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1637_0"@872)
                global.msg[14] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1638_0"@873)
                global.msg[15] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1639_0"@874)
                global.msg[16] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1640_0"@875)
                global.msg[17] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1641_0"@876)
                global.msg[18] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1642_0"@877)
                global.msg[19] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1643_0"@878)
                global.msg[20] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1644_0"@879)
                global.msg[21] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1645_0"@880)
            }
            if (global.choice == 3)
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1650_0"@881)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1651_0"@882)
                global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1652_0"@883)
            }
        }
        break
    
    case 290:
        {
            global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1658_0"@884)
            global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1659_0"@885)
            global.choicemsg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1660_0"@886)
            global.choicemsg[3] = " "@24
            global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1662_0"@887)
            global.msg[1] = " "@24
        }
        break
    
    case 291:
        {
            if (global.choice == 0)
            {
                with(obj_suitspuzz)
                {
                    event_user(2)
                }
            }
            if (global.choice == 1)
            {
                with(obj_suitspuzz)
                {
                    event_user(3)
                }
            }
            if (global.choice == 2)
            {
                with(obj_suitspuzz)
                {
                    event_user(4)
                }
            }
            global.msg[0] = " %%"@186
        }
        break
    
    case 295:
        {
            global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1683_0"@888)
            global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1684_0"@889)
            global.choicemsg[2] = " "@24
            global.choicemsg[3] = " "@24
            global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1687_0"@890)
            global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1688_0"@891)
            global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1689_0"@892)
            global.msg[3] = " "@24
            if (global.flag[106] == 1)
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1693_0"@893)
        }
        break
    
    case 296:
        {
            if (global.choice == 0)
            {
                global.hp[1] = global.maxhp[1]
                snd_play(snd_swallow)
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1702_0"@894)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1703_0"@895)
                global.flag[106] = 1
            }
            if (global.choice == 1)
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1708_0"@896)
        }
        break
    
    case 300:
        {
            global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1713_0"@897)
            global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1714_0"@898)
            global.choicemsg[2] = " "@24
            global.choicemsg[3] = " "@24
            global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1717_0"@899)
            global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1718_0"@900)
            global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1719_0"@901)
            global.msg[3] = " "@24
            if (global.flag[105] == 1)
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1723_0"@902)
        }
        break
    
    case 301:
        {
            if (global.choice == 0)
            {
                scr_armorget(5)
                if (self.noroom == 1)
                    global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1733_0"@904)
                else
                {
                    with(obj_npc_sign)
                    {
                        self.image_index = 1
                    }
                    global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1738_0"@906)
                    global.flag[105] = 1
                }
            }
            if (global.choice == 1)
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1744_0"@907)
        }
        break
    
    case 305:
        {
            global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1749_0"@908)
            global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1750_0"@909)
            global.choicemsg[2] = " "@24
            global.choicemsg[3] = " "@24
            global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1753_0"@910)
            global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1754_0"@911)
            global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1755_0"@912)
            global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1756_0"@913)
            global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1757_0"@914)
            global.msg[5] = " "@24
        }
        break
    
    case 306:
        {
            global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1762_0"@915)
            global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1763_0"@916)
            global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1764_0"@917)
        }
        break
    
    case 310:
        {
            global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1768_0"@918)
            global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1769_0"@919)
            global.choicemsg[2] = " "@24
            global.choicemsg[3] = " "@24
            global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1772_0"@920)
            global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1773_0"@921)
            global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1774_0"@922)
            global.msg[3] = " "@24
            global.msg[4] = " "@24
        }
        break
    
    case 311:
        {
            global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1780_0"@923)
            global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1781_0"@924)
        }
        break
    
    case 315:
        {
            global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1785_0"@925)
            global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1786_0"@926)
            global.choicemsg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1787_0"@927)
            global.choicemsg[3] = " "@24
            global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1789_0"@928)
            global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1790_0"@929)
            global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1791_0"@930)
        }
        break
    
    case 316:
        {
            global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1795_0"@931)
            if (global.choice == 0)
            {
                self.which = 0
                if scr_keyitemcheck(4)
                {
                    if scr_keyitemcheck(6)
                        _temp_local_var_2 = scr_keyitemcheck(7)
                    else
                        _temp_local_var_2 = 0
                }
                else
                    _temp_local_var_2 = 0
                if _temp_local_var_2
                    self.which = 3
                if scr_keyitemcheck(3)
                    _temp_local_var_3 = (self.which == 0)
                else
                    _temp_local_var_3 = 0
                if _temp_local_var_3
                {
                    self.which = 1
                    scr_itemget(6)
                    if (self.noroom == 1)
                        self.which = 2
                }
                if (self.which == 0)
                {
                    global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1812_0"@933)
                    global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1813_0"@934)
                    global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1814_0"@935)
                    global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1815_0"@936)
                }
                if (self.which == 1)
                {
                    global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1820_0"@937)
                    global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1821_0"@938)
                    with(obj_npc_hammerguy)
                    {
                        self.con = 30
                    }
                }
                if (self.which == 2)
                {
                    global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1827_0"@939)
                    global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1828_0"@940)
                }
                if (self.which == 3)
                {
                    global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1833_0"@941)
                    global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1834_0"@942)
                    with(obj_npc_hammerguy)
                    {
                        self.con = 50
                    }
                }
            }
            if (global.choice == 1)
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1841_0"@943)
            if (global.choice == 2)
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1845_0"@944)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1846_0"@945)
                with(obj_npc_hammerguy)
                {
                    self.con = 10
                }
            }
        }
        break
    
    case 325:
        {
            global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1853_0"@946)
            global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1854_0"@947)
            global.choicemsg[2] = " "@24
            global.choicemsg[3] = " "@24
            global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1857_0"@948)
            global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1858_0"@949)
            global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1859_0"@950)
            global.msg[3] = " "@24
            if scr_itemcheck(13)
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1863_0"@951)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1864_0"@952)
            }
        }
        break
    
    case 326:
        {
            if (global.choice == 0)
            {
                if (global.gold >= 40)
                {
                    scr_itemget(13)
                    if (self.noroom == 0)
                    {
                        global.gold = (global.gold - 40)
                        global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1877_0"@953)
                    }
                    else
                        global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1881_0"@954)
                }
                else
                    global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1886_0"@955)
            }
            else
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1891_0"@956)
        }
        break
    
    case 327:
        {
            global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1900_0"@957)
            global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1901_0"@958)
            global.choicemsg[2] = " "@24
            global.choicemsg[3] = " "@24
            global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1904_0"@959)
            global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1905_0"@960)
            global.msg[2] = " "@24
        }
        break
    
    case 328:
        {
            if (global.choice == 0)
            {
                if (global.gold >= 40)
                {
                    scr_itemget(12)
                    if (self.noroom == 0)
                    {
                        global.gold = (global.gold - 40)
                        global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1918_0"@961)
                    }
                    else
                        global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1922_0"@962)
                }
                else
                    global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1927_0"@963)
            }
            else
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1932_0"@964)
        }
        break
    
    case 330:
        {
            global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1938_0"@965)
            global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1939_0"@966)
            global.choicemsg[2] = " "@24
            global.choicemsg[3] = " "@24
            global.fc = 5
            global.typer = 32
            global.fe = 2
            global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1945_0"@967)
            global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1946_0"@968)
            scr_susface(2, 2)
            global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1948_0"@969)
            scr_lanface(4, 3)
            global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1950_0"@970)
            global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1951_0"@971)
            global.msg[7] = " "@24
        }
        break
    
    case 331:
        {
            if (global.choice == 0)
            {
                if (global.gold >= 40)
                {
                    scr_itemget(9)
                    if (self.noroom == 0)
                    {
                        global.gold = (global.gold - 40)
                        global.fc = 1
                        global.fe = 1
                        global.typer = 30
                        global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1968_0"@972)
                        scr_noface(1)
                        global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1970_0"@973)
                        scr_susface(3, 2)
                        global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1972_0"@974)
                        scr_lanface(5, 1)
                        global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1974_0"@975)
                        with(obj_lancerbakesale_event)
                        {
                            self.con = 10
                        }
                    }
                    else
                    {
                        global.gold = (global.gold - 40)
                        global.fc = 0
                        global.fe = 0
                        global.typer = 6
                        global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1984_0"@976)
                        global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1985_0"@977)
                        scr_lanface(2, 7)
                        global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1987_0"@978)
                        scr_susface(4, 2)
                        global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1989_0"@979)
                        scr_lanface(6, 3)
                        global.msg[7] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1991_0"@980)
                        scr_susface(8, 2)
                        global.msg[9] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1993_0"@981)
                        scr_lanface(10, 2)
                        global.msg[11] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1995_0"@982)
                        with(obj_lancerbakesale_event)
                        {
                            self.con = 10
                        }
                    }
                }
                else
                {
                    global.typer = 32
                    global.fe = 6
                    global.fc = 5
                    global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2006_0"@983)
                    scr_susface(1, 0)
                    global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2008_0"@984)
                    scr_lanface(3, 6)
                    global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2010_0"@985)
                }
            }
            else
            {
                global.typer = 32
                global.fc = 5
                global.fe = 2
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2018_0"@986)
                scr_susface(1, 2)
                global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2020_0"@987)
                scr_ralface(3, 6)
                global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2022_0"@988)
            }
        }
        break
    
    case 335:
        {
            global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2027_0"@989)
            global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2028_0"@990)
            global.choicemsg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2029_0"@991)
            global.choicemsg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2030_0"@992)
            global.fe = 2
            global.fc = 9
            global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2033_0"@993)
            global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2034_0"@994)
            global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2035_0"@995)
            global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2036_0"@996)
            global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2037_0"@997)
            global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2038_0"@998)
            global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2039_0"@999)
            global.msg[7] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2040_0"@1000)
            if (global.flag[270] >= 1)
            {
                global.fe = 1
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2044_0"@1001)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2045_0"@1002)
            }
            global.flag[270] = 1
        }
        break
    
    case 336:
        {
            if (global.choice == 0)
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2053_0"@1003)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2054_0"@1004)
                global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2055_0"@1005)
                global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2056_0"@1006)
                global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2057_0"@1007)
            }
            if (global.choice == 1)
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2061_0"@1008)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2062_0"@1009)
                global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2063_0"@1010)
                global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2064_0"@1011)
            }
            if (global.choice == 2)
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2068_0"@1012)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2069_0"@1013)
                global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2070_0"@1014)
                global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2071_0"@1015)
            }
            if (global.choice == 3)
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2075_0"@1016)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2076_0"@1017)
                global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2077_0"@1018)
            }
        }
        break
    
    case 340:
        {
            global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2082_0"@1019)
            global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2083_0"@1020)
            global.choicemsg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2084_0"@1021)
            global.choicemsg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2085_0"@1022)
            global.fe = 0
            global.fc = 19
            global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2088_0"@1023)
            global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2089_0"@1024)
            global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2090_0"@1025)
            if (global.flag[271] > 1)
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2093_0"@1026)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2094_0"@1027)
            }
            global.flag[271] = 2
        }
        break
    
    case 341:
        {
            if (global.choice == 0)
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2102_0"@1028)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2103_0"@1029)
                global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2104_0"@1030)
                global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2105_0"@1031)
                global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2106_0"@1032)
                global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2107_0"@1033)
                global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2108_0"@1034)
                global.msg[7] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2109_0"@1035)
                global.msg[8] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2110_0"@1036)
            }
            if (global.choice == 1)
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2114_0"@1037)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2115_0"@1038)
                global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2116_0"@1039)
                global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2117_0"@1040)
                global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2118_0"@1041)
                global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2119_0"@1042)
                global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2120_0"@1043)
                global.msg[7] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2121_0"@1044)
                global.msg[8] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2122_0"@1045)
            }
            if (global.choice == 2)
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2127_0"@1046)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2128_0"@1047)
                global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2129_0"@1048)
                global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2130_0"@1049)
                global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2131_0"@1050)
                global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2132_0"@1051)
                global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2133_0"@1052)
                global.msg[7] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2134_0"@1053)
                global.msg[8] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2135_0"@1054)
            }
            if (global.choice == 3)
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2140_0"@1055)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2141_0"@1056)
            }
        }
        break
    
    case 345:
        {
            global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2146_0"@1057)
            global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2147_0"@1058)
            global.choicemsg[2] = " "@24
            global.choicemsg[3] = " "@24
            global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2150_0"@1059)
            global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2151_0"@1060)
            global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2152_0"@1061)
            global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2153_0"@1062)
        }
        break
    
    case 346:
        {
            if (global.choice == 0)
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2159_0"@1063)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2160_0"@1064)
                global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2161_0"@1065)
                global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2162_0"@1066)
                global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2163_0"@1067)
            }
            else
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2167_0"@1068)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2168_0"@1069)
            }
        }
        break
    
    case 350:
        {
            global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2173_0"@1070)
            global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2174_0"@1071)
            global.choicemsg[2] = " "@24
            global.choicemsg[3] = " "@24
            global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2177_0"@1072)
            global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2178_0"@1073)
        }
        break
    
    case 351:
        {
            if (global.choice == 0)
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2184_0"@1074)
            else
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2188_0"@1075)
        }
        break
    
    case 355:
        {
            global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2193_0"@1076)
            global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2194_0"@1077)
            global.choicemsg[2] = " "@24
            global.choicemsg[3] = " "@24
            global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2197_0"@1078)
            global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2198_0"@1079)
            global.msg[2] = " "@24
            if (global.plot >= 50)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2202_0"@1080)
        }
        break
    
    case 356:
        {
            if (global.choice == 0)
            {
                global.msg[0] = "%%"@1081
                with(obj_town_event)
                {
                    self.con = 60
                }
            }
            else
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2218_0"@1082)
        }
        break
    
    case 360:
        {
            global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2223_0"@1083)
            global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2224_0"@1084)
            global.choicemsg[2] = " "@24
            global.choicemsg[3] = " "@24
            global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2227_0"@1085)
            global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2228_0"@1086)
            global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2229_0"@1087)
            global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2230_0"@1088)
        }
        break
    
    case 361:
        {
            if (global.choice == 0)
            {
                with(obj_npc_room)
                {
                    self.tempvar = 1
                }
                snd_play(snd_pianonoise)
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2238_0"@1090)
            }
            else
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2242_0"@1091)
        }
        break
    
    case 365:
        {
            global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2247_0"@1092)
            scr_torface(1, 8)
            global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2249_0"@1093)
            global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2250_0"@1094)
            global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2251_0"@1095)
            global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2252_0"@1096)
            global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2253_0"@1097)
            global.msg[7] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2254_0"@1098)
            global.msg[8] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2255_0"@1099)
            global.msg[9] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2256_0"@1100)
            global.msg[10] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2257_0"@1101)
            global.msg[11] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2258_0"@1102)
            global.msg[12] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2259_0"@1103)
            global.msg[13] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2260_0"@1104)
            global.msg[14] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2261_0"@1105)
            global.msg[15] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2262_0"@1106)
            global.msg[16] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2263_0"@1107)
            global.msg[17] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2264_0"@1108)
            scr_noface(18)
            global.msg[19] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2266_0"@1109)
        }
        break
    
    case 370:
        {
            global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2270_0"@1110)
            global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2271_0"@1111)
            global.choicemsg[2] = " "@24
            global.choicemsg[3] = " "@24
            global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2274_0"@1112)
            global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2275_0"@1113)
            global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2276_0"@1114)
        }
        break
    
    case 371:
        {
            global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2280_0"@1115)
            global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2281_0"@1116)
            global.choicemsg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2282_0"@1117)
            global.choicemsg[3] = " "@24
            if (global.choice == 0)
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2286_0"@1118)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2287_0"@1119)
                global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2288_0"@1120)
                global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2289_0"@1121)
                global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2290_0"@1122)
            }
            if (global.choice == 1)
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2294_0"@1123)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2295_0"@1124)
                global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2296_0"@1125)
                global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2297_0"@1126)
            }
            if (global.flag[273] >= 1)
            {
                global.fe = 5
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2303_0"@1127)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2304_0"@1128)
            }
            if (global.flag[273] < 1)
                global.flag[273] = 1
        }
        break
    
    case 372:
        {
            global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2310_0"@1129)
            global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2311_0"@1130)
            global.choicemsg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2312_0"@1131)
            global.choicemsg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2313_0"@1132)
            if (global.choice == 0)
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2317_0"@1133)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2318_0"@1134)
                global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2319_0"@1135)
                global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2320_0"@1136)
            }
            if (global.choice == 1)
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2324_0"@1137)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2325_0"@1138)
                global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2326_0"@1139)
            }
            if (global.choice == 2)
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2332_0"@1140)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2333_0"@1141)
                global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2334_0"@1142)
            }
        }
        break
    
    case 373:
        {
            if (global.choice == 0)
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2341_0"@1143)
                if (global.flag[274] == 2)
                {
                    global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2344_0"@1144)
                    global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2345_0"@1145)
                }
                if (global.flag[274] == 1)
                    global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2350_0"@1146)
                if (global.flag[274] == 0)
                {
                    global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2355_0"@1147)
                    global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2356_0"@1148)
                    global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2357_0"@1149)
                    global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2358_0"@1150)
                    global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2359_0"@1151)
                    global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2360_0"@1152)
                    global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2361_0"@1153)
                    scr_noface(7)
                    global.msg[8] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2363_0"@1154)
                    global.flag[274] = 1
                    scr_phoneadd(202)
                }
            }
            if (global.choice == 1)
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2371_0"@1156)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2372_0"@1157)
                global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2373_0"@1158)
                global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2374_0"@1159)
                global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2375_0"@1160)
                global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2376_0"@1161)
            }
            if (global.choice == 2)
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2380_0"@1162)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2381_0"@1163)
                global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2382_0"@1164)
                global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2383_0"@1165)
                global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2384_0"@1166)
                global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2385_0"@1167)
                global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2386_0"@1168)
                global.msg[7] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2387_0"@1169)
                global.msg[8] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2388_0"@1170)
            }
            if (global.choice == 3)
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2392_0"@1171)
        }
        break
    
    case 375:
        {
            global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2397_0"@1172)
            global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2398_0"@1173)
            global.choicemsg[2] = "3"@1174
            global.choicemsg[3] = "4"@1175
            snd_play(snd_phone)
            global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2402_0"@1176)
            global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2403_0"@1177)
            global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2404_0"@1178)
            global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2405_0"@1179)
            global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2406_0"@1180)
            if (global.flag[274] == 2)
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2409_0"@1181)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2410_0"@1182)
            }
        }
        break
    
    case 376:
        {
            if (global.flag[274] == 1)
                global.flag[274] = 2
            scr_phonename()
            global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2417_0"@1183)
            if (global.choice == 0)
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2418_0"@1184)
                global.flag[275] = 1
            }
            if (global.choice == 1)
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2419_0"@1185)
                global.flag[275] = 2
            }
            if (global.choice == 2)
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2420_0"@1186)
                global.flag[275] = 3
            }
            global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2421_0"@1187)
            global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2422_0"@1188)
            global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2423_0"@1189)
            global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2424_0"@1190)
            if (global.choice == 3)
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2427_0"@1191)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2428_0"@1192)
            }
        }
        break
    
    case 380:
        {
            global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2434_0"@1193)
            global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2435_0"@1194)
            global.choicemsg[2] = " "@24
            global.choicemsg[3] = " "@24
            global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2438_0"@1195)
            global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2439_0"@1196)
            global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2440_0"@1197)
            global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2441_0"@1198)
            global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2442_0"@1199)
            global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2443_0"@1200)
        }
        break
    
    case 381:
        {
            if (global.choice == 0)
            {
                if (global.flag[33] < 40)
                {
                    global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2451_0"@1201)
                    global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2452_0"@1202)
                    global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2453_0"@1203)
                }
                if (global.flag[33] >= 40)
                {
                    global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2458_0"@1204)
                    global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2459_0"@1205)
                    global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2460_0"@1206)
                }
                global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2463_0"@1207)
                global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2464_0"@1208)
                global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2465_0"@1209)
                global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2466_0"@1210)
                global.msg[7] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2467_0"@1211)
                global.msg[8] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2468_0"@1212)
                global.msg[9] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2469_0"@1213)
                global.msg[10] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2470_0"@1214)
            }
            if (global.choice == 1)
            {
                if (global.flag[33] < 40)
                    global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2478_0"@1215)
                if (global.flag[33] >= 40)
                    global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2483_0"@1216)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2485_0"@1217)
                global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2486_0"@1218)
                global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2487_0"@1219)
                global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2488_0"@1220)
                global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2489_0"@1221)
                global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2490_0"@1222)
                global.msg[7] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2491_0"@1223)
            }
        }
        break
    
    case 385:
        {
            global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2498_0"@1224)
            global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2499_0"@1225)
            global.choicemsg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2500_0"@1226)
            global.choicemsg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2501_0"@1227)
            global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2502_0"@1228)
            global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2503_0"@1229)
            global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2504_0"@1230)
            global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2505_0"@1231)
            global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2506_0"@1232)
            global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2507_0"@1233)
            global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2508_0"@1234)
            global.msg[7] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2509_0"@1235)
            global.msg[8] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2510_0"@1236)
            global.msg[9] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2511_0"@1237)
            global.msg[10] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2512_0"@1238)
            global.msg[11] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2513_0"@1239)
            global.msg[12] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2514_0"@1240)
            if (global.flag[276] >= 1)
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2517_0"@1241)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2518_0"@1242)
            }
            if (global.flag[276] == 0)
                global.flag[276] = 1
        }
        break
    
    case 386:
        {
            global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2524_0"@1243)
            global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2525_0"@1244)
            global.choicemsg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2526_0"@1245)
            global.choicemsg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2527_0"@1246)
            if (global.choice == 0)
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2530_0"@1247)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2531_0"@1248)
                global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2532_0"@1249)
                global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2533_0"@1250)
                global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2534_0"@1251)
                global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2535_0"@1252)
                global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2536_0"@1253)
                global.msg[7] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2537_0"@1254)
                global.msg[8] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2538_0"@1255)
                if (global.flag[276] >= 2)
                {
                    global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2542_0"@1256)
                    global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2543_0"@1257)
                    global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2544_0"@1258)
                }
                if (global.flag[276] < 2)
                    global.flag[276] = 2
            }
            if (global.choice == 1)
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2552_0"@1259)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2553_0"@1260)
                global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2554_0"@1261)
                global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2555_0"@1262)
            }
            if (global.choice == 2)
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2559_0"@1263)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2560_0"@1264)
                global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2561_0"@1265)
                global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2562_0"@1266)
                global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2563_0"@1267)
                global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2564_0"@1268)
                global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2565_0"@1269)
                global.msg[7] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2566_0"@1270)
            }
            if (global.choice == 3)
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2570_0"@1271)
        }
        break
    
    case 387:
        {
            if (global.choice == 0)
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2583_0"@1272)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2584_0"@1273)
                global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2585_0"@1274)
                global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2586_0"@1275)
                global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2587_0"@1276)
                global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2588_0"@1277)
                global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2589_0"@1278)
                global.msg[7] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2590_0"@1279)
                global.msg[8] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2591_0"@1280)
            }
            if (global.choice == 1)
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2595_0"@1281)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2596_0"@1282)
                global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2597_0"@1283)
                global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2598_0"@1284)
                global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2599_0"@1285)
                global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2600_0"@1286)
                global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2601_0"@1287)
                global.msg[7] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2602_0"@1288)
                global.msg[8] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2603_0"@1289)
                global.msg[9] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2604_0"@1290)
                global.msg[10] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2605_0"@1291)
            }
            if (global.choice == 2)
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2609_0"@1292)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2610_0"@1293)
                global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2611_0"@1294)
                global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2612_0"@1295)
                global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2613_0"@1296)
                global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2614_0"@1297)
                global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2615_0"@1298)
                global.msg[7] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2616_0"@1299)
                global.msg[8] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2617_0"@1300)
                global.msg[9] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2618_0"@1301)
            }
            if (global.choice == 3)
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2622_0"@1302)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2623_0"@1303)
                global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2624_0"@1304)
                global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2625_0"@1305)
                global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2626_0"@1306)
                global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2627_0"@1307)
                global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2628_0"@1308)
                global.msg[7] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2629_0"@1309)
            }
        }
        break
    
    case 400:
        {
            global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2635_0"@1310)
            global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2636_0"@1311)
            global.choicemsg[2] = " "@24
            global.choicemsg[3] = " "@24
            global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2639_0"@1312)
            global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2640_0"@1313)
            global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2641_0"@1314)
        }
        break
    
    case 401:
        {
            if (global.choice == 0)
            {
                with(obj_krisroom)
                {
                    self.con = 50
                }
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2648_0"@1315)
            }
            if (global.choice == 1)
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2652_0"@1316)
        }
        break
    
    case 402:
        {
            global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2657_0"@1317)
            global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2658_0"@1318)
            global.choicemsg[2] = " "@24
            global.choicemsg[3] = " "@24
            global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2661_0"@1319)
            global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2662_0"@1320)
            global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2663_0"@1321)
            global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2664_0"@1322)
        }
        break
    
    case 403:
        {
            if (global.choice == 0)
            {
                global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2670_0"@1323)
                global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2671_0"@1324)
                global.choicemsg[2] = " "@24
                global.choicemsg[3] = " "@24
                with(obj_krisroom)
                {
                    self.con = 100
                }
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2676_0"@1325)
            }
            if (global.choice == 1)
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2680_0"@1326)
        }
        break
    
    case 405:
        {
            global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2685_0"@1327)
            global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2686_0"@1328)
            global.choicemsg[2] = " "@24
            global.choicemsg[3] = " "@24
            global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2689_0"@1329)
            global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2690_0"@1330)
            global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2691_0"@1331)
            global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2692_0"@1332)
            scr_ralface(4, 0)
            global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2694_0"@1333)
            scr_susface(6, 2)
            global.msg[7] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2696_0"@1334)
            scr_noface(8)
            global.msg[9] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2698_0"@1335)
            global.msg[10] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2699_0"@1336)
            global.msg[11] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2700_0"@1337)
            global.msg[12] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2701_0"@1338)
            global.msg[13] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2702_0"@1339)
            global.msg[14] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2703_0"@1340)
            scr_ralface(15, 8)
            global.msg[16] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2705_0"@1341)
            scr_noface(17)
            global.msg[18] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2707_0"@1342)
            scr_susface(19, 2)
            global.msg[20] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2709_0"@1343)
            scr_noface(21)
            global.msg[22] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2711_0"@1344)
            global.msg[23] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2712_0"@1345)
            global.msg[24] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2713_0"@1346)
            global.msg[25] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2714_0"@1347)
            if (global.flag[241] == 1)
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2718_0"@1348)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2719_0"@1349)
            }
        }
        break
    
    case 406:
        {
            global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2724_0"@1350)
            global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2725_0"@1351)
            global.choicemsg[2] = " "@24
            global.choicemsg[3] = " "@24
            if (global.flag[241] == 0)
                global.flag[241] = 1
            if (global.choice == 0)
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2731_0"@1352)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2732_0"@1353)
                with(obj_event_room)
                {
                    self.con = 20
                }
            }
            if (global.choice == 1)
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2737_0"@1354)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2738_0"@1355)
                with(obj_event_room)
                {
                    self.con = 20
                }
            }
        }
        break
    
    case 410:
        {
            global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2744_0"@1356)
            global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2745_0"@1357)
            global.choicemsg[2] = " "@24
            global.choicemsg[3] = " "@24
            global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2748_0"@1358)
            global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2749_0"@1359)
            global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2750_0"@1360)
            global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2751_0"@1361)
            global.msg[4] = " "@24
        }
        break
    
    case 411:
        {
            if (global.flag[241] < 5)
                global.flag[241] = 5
            scr_keyitemremove(4)
            scr_keyitemremove(5)
            scr_keyitemremove(6)
            scr_keyitemremove(7)
            if (global.choice == 0)
            {
                scr_noface(0)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2765_0"@1363)
                with(obj_event_room)
                {
                    self.con = 5
                }
            }
            if (global.choice == 1)
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2770_0"@1364)
                with(obj_event_room)
                {
                    self.con = 5
                }
            }
        }
        break
    
    case 415:
        {
            global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2776_0"@1365)
        }
        break
    
    case 420:
        {
            global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2780_0"@1366)
            global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2781_0"@1367)
            global.choicemsg[2] = " "@24
            global.choicemsg[3] = " "@24
            global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2784_0"@1368)
            global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2785_0"@1369)
        }
        break
    
    case 425:
        {
            global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2789_0"@1370)
            global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2790_0"@1371)
            global.choicemsg[2] = " "@24
            global.choicemsg[3] = " "@24
            global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2793_0"@1372)
            global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2794_0"@1373)
            global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2795_0"@1374)
        }
        break
    
    case 426:
        {
            if (global.choice == 0)
            {
                scr_ralface(0, 6)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2806_0"@1375)
                global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2807_0"@1376)
                scr_noface(3)
                global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2809_0"@1377)
                global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2810_0"@1378)
                global.flag[43] = (global.flag[43] - global.flag[523])
                if (global.flag[43] < 0)
                    global.flag[43] = 0
                self.normal_kills = (global.flag[520] - global.flag[523])
                global.flag[40] = (global.flag[40] - self.normal_kills)
                if (global.flag[40] < 0)
                    global.flag[40] = 0
                global.flag[243] = 1
            }
            else
            {
                scr_susface(0, 1)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2822_0"@1380)
                global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2823_0"@1381)
                scr_noface(3)
                global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2825_0"@1382)
                global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2826_0"@1383)
                scr_itemget(13)
                if (self.noroom == 1)
                {
                    scr_ralface(5, 6)
                    global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2831_0"@1384)
                    scr_susface(7, 2)
                    global.msg[8] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2833_0"@1385)
                }
                global.flag[243] = 2
            }
        }
        break
    
    case 430:
        {
            global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2840_0"@1386)
            global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2841_0"@1387)
            global.choicemsg[2] = " "@24
            global.choicemsg[3] = " "@24
            global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2844_0"@1388)
            global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2845_0"@1389)
        }
        break
    
    case 431:
        {
            if (global.choice == 0)
            {
                snd_play(snd_splat)
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2852_0"@1390)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2853_0"@1391)
            }
            else
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2857_0"@1392)
        }
        break
    
    case 435:
        {
            global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2862_0"@1393)
            global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2863_0"@1394)
            global.choicemsg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2864_0"@1395)
            global.choicemsg[3] = " "@24
            global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2866_0"@1396)
            global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2867_0"@1397)
        }
        break
    
    case 436:
        {
            global.msg[0] = "%%"@1081
            if (global.choice == 0)
            {
                if (global.flag[239] != 0)
                {
                    with(obj_elevatorcontroller)
                    {
                        if (global.flag[239] == 1)
                        {
                            self.dir = -1
                            self.newcno = 0
                            self.con = 100
                        }
                        else
                        {
                            self.dir = 1
                            self.newcno = 0
                            self.con = 100
                        }
                    }
                }
                else
                    global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2892_0"@1400)
            }
            if (global.choice == 1)
            {
                if (global.flag[239] != 1)
                {
                    with(obj_elevatorcontroller)
                    {
                        self.dir = 1
                        self.newcno = 1
                        self.con = 100
                    }
                }
                else
                    global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2908_0"@1401)
            }
            if (global.choice == 2)
            {
                if (global.flag[239] != 3)
                {
                    with(obj_elevatorcontroller)
                    {
                        self.dir = -1
                        self.newcno = 3
                        self.con = 100
                    }
                }
                else
                    global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2924_0"@1402)
            }
        }
        break
    
    case 440:
        {
            global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2933_0"@1403)
            global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2934_0"@1404)
            global.choicemsg[2] = " "@24
            global.choicemsg[3] = " "@24
            global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2937_0"@1405)
            global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2938_0"@1406)
        }
        break
    
    case 441:
        {
            global.msg[0] = "%%"@1081
            if (global.choice == 0)
            {
                with(obj_elevatorcontroller)
                {
                    if (global.flag[239] == 1)
                    {
                        self.dir = 1
                        self.newcno = 2
                        self.con = 100
                    }
                    else
                    {
                        self.dir = -1
                        self.newcno = 1
                        self.con = 100
                    }
                }
            }
        }
        break
    
    case 445:
        {
            global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2965_0"@1407)
            global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2966_0"@1408)
            global.choicemsg[2] = " "@24
            global.choicemsg[3] = " "@24
            global.typer = 30
            global.fc = 1
            global.fe = 0
            global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2972_0"@1409)
            global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2973_0"@1410)
            global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2974_0"@1411)
            global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2975_0"@1412)
            global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2976_0"@1413)
            global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2977_0"@1414)
            global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2978_0"@1415)
            global.msg[7] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2979_0"@1416)
        }
        break
    
    case 446:
        {
            if (global.choice == 0)
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2985_0"@1417)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2986_0"@1418)
            }
            else
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2990_0"@1419)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2991_0"@1420)
            }
        }
        break
    
    case 450:
        {
            global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2997_0"@1421)
            global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2998_0"@1422)
            global.choicemsg[2] = " "@24
            global.choicemsg[3] = " "@24
            global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3001_0"@1423)
            global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3002_0"@1424)
            global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3003_0"@1425)
            global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3004_0"@1426)
            scr_lanface(4, 1)
            global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3006_0"@1427)
            scr_susface(6, 1)
            global.msg[7] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3009_0"@1428)
            global.msg[8] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3010_0"@1429)
        }
        break
    
    case 451:
        {
            global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3014_0"@1430)
            global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3015_0"@1431)
            global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3016_0"@1432)
        }
        break
    
    case 455:
        {
            global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3021_0"@1433)
            global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3022_0"@1434)
            global.choicemsg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3023_0"@1435)
            if scr_litemcheck(4)
                global.choicemsg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3024_0"@1436)
            global.choicemsg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3025_0"@1437)
            global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3026_0"@1438)
            global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3027_0"@1439)
        }
        break
    
    case 456:
        {
            if (global.choice == 0)
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3033_0"@1440)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3034_0"@1441)
                global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3035_0"@1442)
                global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3036_0"@1443)
                global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3037_0"@1444)
                global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3038_0"@1445)
                global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3039_0"@1446)
            }
            if (global.choice == 1)
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3043_0"@1447)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3044_0"@1448)
                global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3045_0"@1449)
                global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3046_0"@1450)
                global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3047_0"@1451)
                global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3048_0"@1452)
                global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3049_0"@1453)
                global.msg[7] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3050_0"@1454)
                global.msg[8] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3051_0"@1455)
            }
            if (global.choice == 2)
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3055_0"@1456)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3056_0"@1457)
                global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3057_0"@1458)
                global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3058_0"@1459)
                global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3059_0"@1460)
                if scr_litemcheck(4)
                {
                    global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3063_0"@1461)
                    global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3064_0"@1462)
                    global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3065_0"@1463)
                    global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3066_0"@1464)
                    global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3067_0"@1465)
                    global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3068_0"@1466)
                    global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3069_0"@1467)
                    scr_litemremove(4)
                    global.flag[262] = 3
                }
            }
            if (global.choice == 3)
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3077_0"@1469)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3078_0"@1470)
            }
        }
        break
    
    case 460:
        {
            global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3083_0"@1471)
            global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3084_0"@1472)
            global.choicemsg[2] = " "@24
            global.choicemsg[3] = " "@24
            global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3087_0"@1473)
            global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3088_0"@1474)
            if (global.plot >= 75)
            {
                global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3091_0"@1475)
                global.choicemsg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3092_0"@1476)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3093_0"@1477)
            }
            if (global.plot >= 154)
            {
                global.choicemsg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3097_0"@1478)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3098_0"@1479)
            }
        }
        break
    
    case 461:
        {
            global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3103_0"@1480)
            if (global.choice == 0)
            {
                with(obj_shortcut_door)
                {
                    self.door_destination = 61
                }
            }
            if (global.choice == 1)
            {
                with(obj_shortcut_door)
                {
                    self.door_destination = 73
                }
            }
            if (global.choice == 2)
            {
                with(obj_shortcut_door)
                {
                    self.door_destination = 82
                }
            }
            if (global.choice == 3)
            {
                with(obj_shortcut_door)
                {
                    self.door_destination = 97
                }
            }
            with(obj_shortcut_door)
            {
                if (self.door_destination == self.door_location)
                    global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3124_0"@1483)
                else
                {
                    global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3128_0"@1484)
                    self.con = 50
                }
            }
        }
        break
    
    case 465:
        {
            global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3137_0"@1485)
            global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3138_0"@1486)
            global.choicemsg[2] = " "@24
            global.choicemsg[3] = " "@24
            global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3141_0"@1487)
            global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3142_0"@1488)
            global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3143_0"@1489)
        }
        break
    
    case 466:
        {
            if (global.choice == 0)
            {
                scr_itemremove(6)
                scr_itemget(7)
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3151_0"@1491)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3152_0"@1492)
                global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3153_0"@1493)
                global.writersnd[0] = 97
                global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3155_0"@1495)
                global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3156_0"@1496)
                global.flag[253] = 1
            }
            if (global.choice == 1)
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3161_0"@1497)
        }
        break
    
    case 470:
        {
            global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3166_0"@1498)
            global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3167_0"@1499)
            global.choicemsg[2] = " "@24
            global.choicemsg[3] = " "@24
            if scr_itemcheck(7)
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3173_0"@1500)
            else
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3177_0"@1501)
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3178_0"@1502)
            }
        }
        break
    
    case 471:
        {
            if (global.choice == 0)
            {
                scr_itemget(7)
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3186_0"@1503)
                global.writersnd[0] = 97
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3188_0"@1504)
                if (self.noroom == 1)
                    global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3191_0"@1505)
            }
            if (global.choice == 1)
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3196_0"@1506)
        }
        break
    
    case 600:
        {
            global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3201_0"@1507)
            global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3202_0"@1508)
            global.choicemsg[2] = " "@24
            global.choicemsg[3] = " "@24
            global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3205_0"@1509)
            global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3206_0"@1510)
            global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3207_0"@1511)
        }
        break
    
    case 601:
        {
            global.flag[910] = 2
            if (global.choice == 0)
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3214_0"@1512)
                snd_play(snd_egg)
                scr_keyitemget(2)
            }
            else
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3220_0"@1513)
        }
        break
    
    default:
        break
    
}

