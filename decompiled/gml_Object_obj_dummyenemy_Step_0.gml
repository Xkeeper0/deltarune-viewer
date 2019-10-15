if (self.ambushed == 0)
{
    scr_ambush()
    self.ambushed = 1
}
if (self.plot != 3)
{
    global.charmove[0] = 1
    global.charmove[1] = 0
    if (global.charspecial[0] == 100)
        self.spare_used = 1
    else
        self.spare_used = 0
}
else
{
    global.charmove[0] = 0
    global.charmove[1] = 1
    if (global.charspecial[1] == 100)
        self.ral_wrongcommand = 1
    if (global.charaction[1] == 4)
        self.ral_wrongcommand = 1
    if (global.charaction[1] != 2)
        _temp_local_var_53 = (global.charaction[1] != 4)
    else
        _temp_local_var_53 = 0
    if _temp_local_var_53
    {
        with(obj_attackpress)
        {
            with(obj_heroparent)
            {
                if (self.state == 1)
                    self.state = 0
                self.attacked = 0
                self.itemed = 0
            }
            global.mnfight = 1
            global.myfight = -1
            instance_destroy()
        }
        global.charaction[1] = 0
        global.faceaction[1] = 0
    }
}
if (global.monster[self.myself] == 1)
{
    global.flag[(51 + self.myself)] = 4
    self.commanded = 0
    if (global.mnfight == 1)
        _temp_local_var_1 = (self.talked == 0)
    else
        _temp_local_var_1 = 0
    if _temp_local_var_1
    {
        global.writerimg[0] = scr_84_get_sprite("spr_btfight"@1825)
        global.writerimg[1] = scr_84_get_sprite("spr_btdefend"@1832)
        global.writerimg[2] = scr_84_get_sprite("spr_bttech"@1829)
        global.writerimg[3] = scr_84_get_sprite("spr_btact"@1828)
        global.writerimg[4] = scr_84_get_sprite("spr_btspare"@1831)
        global.writerimg[5] = scr_84_get_sprite("spr_btitem"@1830)
        if (self.attackcon == 0)
        {
            scr_moveheart()
            self.abletotarget = 1
            if (global.charcantarget[0] == 0)
            {
                if (global.charcantarget[1] == 0)
                    _temp_local_var_2 = (global.charcantarget[2] == 0)
                else
                    _temp_local_var_2 = 0
            }
            else
                _temp_local_var_2 = 0
            if _temp_local_var_2
                self.abletotarget = 0
            self.mytarget = choose(0)
            if (self.abletotarget == 1)
            {
                while(true)
                {
                    if (global.charcantarget[self.mytarget] == 0)
                    {
                        self.mytarget = choose(0)
                        continue
                    }
                    break
                }
            }
            else
                self.target = 3
            global.targeted[self.mytarget] = 1
            self.attackcon = 1
            instance_create((__view_get(e__VW.XView, 0) + 320), (__view_get(e__VW.YView, 0) + 170), obj_growtangle)
            instance_create(0, 0, obj_darkener)
        }
        global.typer = 45
        global.fc = 2
        global.fe = 1
        global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_81_0"@7655)
        if (self.plot == 0)
            _temp_local_var_3 = (self.attackcon == 1)
        else
            _temp_local_var_3 = 0
        if _temp_local_var_3
        {
            global.fe = 0
            global.flag[30] = 0
            global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_87_0"@7656)
            global.msg[1] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_88_0"@7657)
            global.msg[2] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_89_0"@7658)
            global.msg[3] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_90_0"@7659)
            global.msg[4] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_91_0"@7660)
            global.msg[5] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_92_0"@7661)
            global.msg[6] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_93_0"@7662)
            global.msg[7] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_94_0"@7663)
        }
        if (self.plot >= 1)
        {
            self.dial = 0
            if (global.charaction[0] == 1)
            {
                if (self.dummyhp > global.monsterhp[0])
                    self.dial = 1
                if (self.dummyhp == global.monsterhp[0])
                    _temp_local_var_4 = (self.plot == 1)
                else
                    _temp_local_var_4 = 0
                if _temp_local_var_4
                    self.dial = 2
                if (self.dummyhp == global.monsterhp[0])
                {
                    if (self.misstime == 9)
                        _temp_local_var_5 = (self.plot == 2)
                    else
                        _temp_local_var_5 = 0
                }
                else
                    _temp_local_var_5 = 0
                if _temp_local_var_5
                {
                    self.dial = 3
                    global.flag[205] = 6
                }
                if (self.dial == 1)
                    _temp_local_var_6 = (self.hitdum >= 3)
                else
                    _temp_local_var_6 = 0
                if _temp_local_var_6
                {
                    self.hitdum = 4
                    self.dial = 3
                    global.flag[205] = 4
                }
            }
            if (global.charaction[0] == 10)
                _temp_local_var_7 = (self.commanded == 0)
            else
                _temp_local_var_7 = 0
            if _temp_local_var_7
            {
                global.fe = 0
                global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_115_0"@7665)
                global.msg[1] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_116_0"@7666)
                if (self.defendtime == 1)
                {
                    global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_120_0"@7667)
                    global.msg[1] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_121_0"@7668)
                }
                if (self.defendtime == 2)
                {
                    global.fe = 1
                    global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_127_0"@7669)
                    global.msg[1] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_128_0"@7670)
                    global.msg[2] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_129_0"@7671)
                }
                if (self.defendtime == 3)
                {
                    global.fe = 9
                    global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_136_0"@7672)
                }
                if (self.plot == 2)
                {
                    global.writerimg[2] = scr_84_get_sprite("spr_bttech"@1829)
                    global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_142_0"@7673)
                    global.msg[1] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_143_0"@7674)
                    global.msg[2] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_144_0"@7675)
                    global.msg[3] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_145_0"@7676)
                    global.msg[4] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_146_0"@7677)
                    if (global.monsterhp[0] == global.monstermaxhp[0])
                    {
                        global.msg[2] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_150_0"@7678)
                        global.msg[3] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_151_0"@7679)
                    }
                    global.monsterstatus[self.myself] = 1
                    if (global.monstercomment[self.myself] == " "@24)
                        global.monstercomment[self.myself] = scr_84_get_lang_string("obj_dummyenemy_slash_Draw_0_gml_4_0"@7680)
                    self.plot = 3
                    if (self.defendtime == 4)
                        self.defendtime = 3
                }
                if (self.defendtime >= 4)
                {
                    self.dial = 3
                    global.flag[205] = 5
                }
                self.defendtime = (self.defendtime + 1)
                self.commanded = 1
            }
            if (global.charaction[0] == 4)
                _temp_local_var_8 = (self.commanded == 0)
            else
                _temp_local_var_8 = 0
            if _temp_local_var_8
            {
                global.fe = 0
                global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_167_0"@7681)
                global.msg[1] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_168_0"@7682)
                global.msg[2] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_169_0"@7683)
                if (self.item_command == 1)
                {
                    global.fe = 1
                    global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_174_0"@7684)
                    global.msg[1] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_175_0"@7685)
                    global.msg[2] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_176_0"@7686)
                    global.msg[3] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_177_0"@7687)
                    global.msg[4] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_178_0"@7688)
                }
                if (self.item_command == 2)
                {
                    global.fe = 6
                    global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_184_0"@7689)
                    global.msg[1] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_185_0"@7690)
                }
                if (self.item_command == 3)
                {
                    global.fe = 0
                    global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_191_0"@7691)
                    global.msg[1] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_192_0"@7692)
                }
                if (self.item_command >= 4)
                    self.dial = 3
                self.commanded = 1
                self.item_command = (self.item_command + 1)
            }
            if (self.ral_wrongcommand == 1)
                _temp_local_var_9 = (self.commanded == 0)
            else
                _temp_local_var_9 = 0
            if _temp_local_var_9
            {
                global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_206_0"@7693)
                if (self.ral_wrongcommand_count == 0)
                    global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_211_0"@7694)
                if (self.ral_wrongcommand_count == 1)
                {
                    global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_216_0"@7695)
                    global.msg[1] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_217_0"@7696)
                }
                if (self.ral_wrongcommand_count == 2)
                    global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_222_0"@7697)
                if (self.ral_wrongcommand_count == 3)
                {
                    global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_227_0"@7698)
                    global.msg[1] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_228_0"@7699)
                    global.msg[2] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_229_0"@7700)
                    global.msg[3] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_230_0"@7701)
                    global.msg[4] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_231_0"@7702)
                    if (self.plot == 3)
                        self.plot = 4
                    if (global.mercymod[self.myself] >= 100)
                    {
                        global.msg[2] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_237_0"@7703)
                        global.msg[3] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_238_0"@7704)
                        global.msg[4] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_239_0"@7705)
                        self.plot = 5
                    }
                }
                self.ral_wrongcommand_count = (self.ral_wrongcommand_count + 1)
                self.commanded = 0
            }
            if (global.charaction[1] == 2)
            {
                if (self.ral_wrongcommand == 0)
                    _temp_local_var_10 = (self.commanded == 0)
                else
                    _temp_local_var_10 = 0
            }
            else
                _temp_local_var_10 = 0
            if _temp_local_var_10
            {
                global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_252_0"@7706)
                global.msg[1] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_253_0"@7707)
                global.msg[2] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_254_0"@7708)
                global.msg[3] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_255_0"@7709)
                global.msg[4] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_256_0"@7710)
                if (self.pacifycon == 1)
                {
                    global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_260_0"@7711)
                    if (global.monsterstatus[self.myself] == 0)
                        global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_262_0"@7712)
                }
                self.plot = 4
                if (global.mercymod[self.myself] >= 100)
                {
                    global.msg[2] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_268_0"@7713)
                    global.msg[3] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_269_0"@7714)
                    global.msg[4] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_270_0"@7715)
                    self.plot = 5
                }
                self.commanded = 1
            }
            if (self.spare_used == 1)
                _temp_local_var_11 = (self.commanded == 0)
            else
                _temp_local_var_11 = 0
            if _temp_local_var_11
            {
                if (self.plot < 5)
                {
                    global.fe = 0
                    if (self.spare_command == 0)
                        global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_282_0"@7716)
                    if (self.spare_command == 1)
                        global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_283_0"@7717)
                    if (self.spare_command >= 2)
                        global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_284_0"@7718)
                    if (global.mercymod[self.myself] >= 100)
                        self.win_spare = (self.win_spare + 1)
                    if (self.win_spare == 1)
                    {
                        global.fe = 6
                        global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_289_0"@7719)
                        global.msg[1] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_290_0"@7720)
                        global.msg[2] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_291_0"@7721)
                    }
                    if (self.win_spare == 2)
                    {
                        global.fe = 6
                        global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_296_0"@7722)
                        global.msg[1] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_297_0"@7723)
                        global.msg[2] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_298_0"@7724)
                        self.won = 1
                    }
                }
                if (self.plot == 5)
                {
                    global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_307_0"@7725)
                    global.msg[1] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_308_0"@7726)
                    self.won = 1
                }
                self.spare_used = 0
                self.spare_command = (self.spare_command + 1)
                self.commanded = 1
            }
            if (self.dial == 1)
            {
                if (self.plot == 1)
                {
                    global.fe = 3
                    if (self.dummyhp > (global.monsterhp[0] + 50))
                    {
                        global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_327_0"@7727)
                        global.msg[1] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_328_0"@7728)
                    }
                    else
                    {
                        global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_332_0"@7729)
                        global.msg[1] = ((scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_333_0"@7730) + scr_get_input_name(4)) + scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_333_1"@7731))
                    }
                    if (self.misstime >= 6)
                    {
                        global.fe = 8
                        global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_338_0"@7732)
                        global.msg[1] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_339_0"@7733)
                    }
                    global.msg[2] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_341_0"@7734)
                    global.msg[3] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_342_0"@7735)
                    global.msg[4] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_343_0"@7736)
                    global.msg[5] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_344_0"@7737)
                    self.plot = 2
                    if (self.defendtime >= 1)
                    {
                        global.msg[2] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_348_0"@7738)
                        global.msg[3] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_349_0"@7739)
                        global.msg[4] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_350_0"@7740)
                        global.msg[5] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_351_0"@7741)
                        global.msg[6] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_352_0"@7742)
                        global.msg[7] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_353_0"@7743)
                        self.plot = 3
                    }
                }
                else
                {
                    if (self.hitdum == 0)
                    {
                        global.fe = 1
                        global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_364_0"@7744)
                        global.msg[1] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_365_0"@7745)
                    }
                    if (self.hitdum == 1)
                    {
                        global.fe = 1
                        global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_372_0"@7746)
                        global.msg[1] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_373_0"@7747)
                        global.msg[2] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_374_0"@7748)
                    }
                    if (self.hitdum == 2)
                    {
                        global.fe = 6
                        global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_380_0"@7749)
                        global.msg[1] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_381_0"@7750)
                        global.msg[2] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_382_0"@7751)
                    }
                    if (self.hitdum >= 3)
                        self.dial = 3
                    self.hitdum = (self.hitdum + 1)
                }
            }
            if (self.dial == 2)
            {
                global.fe = 3
                global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_398_0"@7752)
                global.msg[1] = ((scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_399_0"@7753) + scr_get_input_name(4)) + scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_399_1"@7754))
                if (self.misstime >= 1)
                {
                    global.fe = 8
                    global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_403_0"@7755)
                    if (self.misstime == 2)
                        global.msg[0] = ((scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_404_0"@7756) + scr_get_input_name(4)) + scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_404_1"@7757))
                    if (self.misstime == 3)
                        global.msg[0] = ((scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_405_0"@7758) + scr_get_input_name(4)) + scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_405_1"@7759))
                    if (self.misstime == 4)
                        global.msg[0] = ((scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_406_0"@7760) + scr_get_input_name(4)) + scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_406_1"@7761))
                    if (self.misstime == 5)
                        global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_407_0"@7762)
                    if (self.misstime == 6)
                        global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_408_0"@7763)
                    if (self.misstime == 7)
                    {
                        global.fe = 9
                        global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_412_0"@7764)
                    }
                    if (self.misstime == 8)
                    {
                        global.fe = 1
                        global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_417_0"@7765)
                        self.plot = 2
                        if (self.defendtime >= 1)
                        {
                            global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_421_0"@7766)
                            global.msg[1] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_422_0"@7767)
                            global.msg[2] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_423_0"@7768)
                            global.msg[3] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_424_0"@7769)
                            global.msg[4] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_425_0"@7770)
                            global.msg[5] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_426_0"@7771)
                            global.msg[6] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_427_0"@7772)
                            self.plot = 3
                        }
                    }
                }
                self.misstime = (self.misstime + 1)
            }
            if (self.dial == 3)
            {
                global.fe = 9
                global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_441_0"@7773)
                global.msg[1] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_442_0"@7774)
                global.msg[2] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_443_0"@7775)
                global.msg[3] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_444_0"@7776)
                if (self.hitdum >= 4)
                {
                    global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_447_0"@7777)
                    global.msg[1] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_448_0"@7778)
                    global.msg[2] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_449_0"@7779)
                }
                self.won = 1
                global.myfight = 999
                global.mnfight = 999
            }
        }
        scr_battletext()
        if (global.msg[0] == scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_463_0"@7780))
        {
            with(obj_writer)
            {
                instance_destroy()
            }
        }
        self.acting = 0
        self.spare_used = 0
        self.dummyhp = global.monsterhp[self.myself]
        self.talked = 1
        self.talktimer = 0
        self.ral_wrongcommand = 0
    }
    if (global.mnfight == 9786)
        _temp_local_var_12 = (self.attacked == 0)
    else
        _temp_local_var_12 = 0
    if _temp_local_var_12
    {
        self.turns = (self.turns + 1)
        global.turntimer = -1
        scr_mnendturn()
        self.attacked = 1
        self.rr = floor(random(0))
        global.typer = 6
        global.fc = 0
        if (self.rr == 0)
            global.battlemsg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_489_0"@7781)
    }
    if (self.talked == 1)
        _temp_local_var_13 = (global.mnfight == 1)
    else
        _temp_local_var_13 = 0
    if _temp_local_var_13
    {
        if (self.won == 0)
        {
            self.rtimer = 0
            scr_blconskip(-1)
            if (global.mnfight == 2)
                _temp_local_var_14 = (self.attackcon == 1)
            else
                _temp_local_var_14 = 0
            if _temp_local_var_14
            {
                if (~ instance_exists(obj_moveheart))
                    _temp_local_var_15 = (~ instance_exists(obj_heart))
                else
                    _temp_local_var_15 = 0
                if _temp_local_var_15
                    scr_moveheart()
                if (~ instance_exists(obj_growtangle))
                    instance_create((__view_get(e__VW.XView, 0) + 320), (__view_get(e__VW.YView, 0) + 170), obj_growtangle)
            }
        }
        else
        {
            if (~ instance_exists(obj_writer))
            {
                scr_monsterdefeat()
                scr_mnendturn()
            }
        }
    }
    if (global.mnfight == 2)
        _temp_local_var_16 = (self.attacked == 0)
    else
        _temp_local_var_16 = 0
    if _temp_local_var_16
    {
        if (self.attackcon != 1)
            self.rtimer = 8
        self.rtimer = (self.rtimer + 1)
        if (self.rtimer >= 8)
        {
            self.rr = choose(0)
            if (self.rr == 0)
            {
                self.dc = instance_create(self.x, self.y, obj_dbulletcontroller)
                self.dc.type = 14
                self.dc.target = self.mytarget
                self.dc.damage = (global.monsterat[self.myself] * 5)
            }
            self.turns = (self.turns + 1)
            global.turntimer = 150
            if (self.attackcon == 1)
                self.battlecancel = 2
            if (self.attackcon != 1)
            {
                global.turntimer = -100
                with(self.dc)
                {
                    instance_destroy()
                }
            }
            self.attackcon = 2
            self.attacked = 1
            global.typer = 6
            global.fc = 0
            global.battlemsg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_548_0"@7784)
            global.writerimg[0] = scr_84_get_sprite("spr_btfight"@1825)
            global.writerimg[1] = scr_84_get_sprite("spr_btdefend"@1832)
            global.writerimg[2] = scr_84_get_sprite("spr_bttech"@1829)
            global.writerimg[3] = scr_84_get_sprite("spr_btact"@1828)
            global.writerimg[4] = scr_84_get_sprite("spr_btspare"@1831)
            global.writerimg[5] = scr_84_get_sprite("spr_btitem"@1830)
            global.fc = 0
            if (self.plot == 1)
                global.battlemsg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_556_0"@7785)
            if (self.plot == 2)
                global.battlemsg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_557_0"@7786)
            if (self.plot == 3)
                global.battlemsg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_558_0"@7787)
            if (self.plot == 4)
                global.battlemsg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_559_0"@7788)
            if (self.plot == 5)
                global.battlemsg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_560_0"@7789)
            self.spare_used = 0
            self.ral_wrongcommand = 0
        }
        else
            global.turntimer = 150
    }
    if (global.mnfight == 2)
    {
        if (global.turntimer <= 1)
        {
            if (self.battlecancel == 2)
            {
                with(obj_battlecontroller)
                {
                    self.noreturn = 1
                }
                self.con = 1
                self.battlecancel = 3
            }
        }
    }
}
if (self.con == 1)
{
    self.con = 2
    self.alarm[5] = 2
}
if (self.con == 3)
{
    global.typer = 45
    global.fc = 2
    global.fe = 0
    global.writerimg[0] = scr_84_get_sprite("spr_btfight"@1825)
    global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_598_0"@7790)
    if (self.kris_inithp > global.hp[1])
    {
        global.fe = 6
        global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_602_0"@7791)
    }
    global.msg[1] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_604_0"@7792)
    global.msg[2] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_605_0"@7793)
    global.msg[3] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_606_0"@7794)
    global.msg[4] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_607_0"@7795)
    global.battlemsg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_610_0"@7796)
    scr_battletext()
    self.con = 6
}
if (self.con == 6)
    _temp_local_var_17 = (~ instance_exists(obj_writer))
else
    _temp_local_var_17 = 0
if _temp_local_var_17
{
    with(obj_battlecontroller)
    {
        self.noreturn = 0
        self.alarm[2] = 2
    }
    self.battlecancel = 0
    if (self.plot == 0)
        self.plot = 1
    self.con = 7
}
if (global.myfight == 3)
{
    self.xx = __view_get(e__VW.XView, 0)
    self.yy = __view_get(e__VW.YView, 0)
    if (self.acting == 1)
        _temp_local_var_18 = (self.actcon == 0)
    else
        _temp_local_var_18 = 0
    if _temp_local_var_18
    {
        self.actcon = 1
        global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_642_0"@7797)
        if (self.checked == 0)
        {
            global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_645_0"@7798)
            scr_ralface(1, 6)
            global.msg[2] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_647_0"@7799)
            global.msg[3] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_648_0"@7800)
            global.msg[4] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_649_0"@7801)
        }
        self.checked = (self.checked + 1)
        scr_battletext_default()
    }
    if (self.acting == 2)
        _temp_local_var_19 = (self.actcon == 0)
    else
        _temp_local_var_19 = 0
    if _temp_local_var_19
    {
        self.actcon = 10
        with(obj_herokris)
        {
            global.faceaction[self.myself] = 0
            self.state = 0
            self.acttimer = 0
        }
        global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_666_0"@7803)
        scr_battletext_default()
    }
    if (self.actcon == 1)
        _temp_local_var_20 = (~ instance_exists(obj_writer))
    else
        _temp_local_var_20 = 0
    if _temp_local_var_20
    {
        global.acting[0] = 0
        global.acting[1] = 0
        global.acting[2] = 0
        self.actcon = 0
        self.acting = -1
        scr_attackphase()
    }
    if (self.actcon == 10)
    {
        with(global.charinstance[0])
        {
            self.visible = 0
        }
        self.k = scr_dark_marker(global.charinstance[0].x, global.charinstance[0].y, spr_kris_hug)
        with(self.k)
        {
            scr_move_to_point_over_time((global.monsterx[0] - 42), (global.monstery[0] - 30), 15)
        }
        self.actcon = 11
        self.alarm[4] = 25
    }
    if (self.actcon == 12)
    {
        with(self.k)
        {
            self.image_speed = 0.25
        }
        self.actcon = 13
        self.alarm[4] = 12
    }
    if (self.actcon == 14)
    {
        with(self.k)
        {
            self.image_speed = 0
        }
        self.actcon = 15
    }
    if (self.actcon == 15)
        _temp_local_var_21 = (~ instance_exists(obj_writer))
    else
        _temp_local_var_21 = 0
    if _temp_local_var_21
    {
        global.flag[205] = 1
        global.typer = 45
        global.fc = 2
        global.fe = 0
        global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_711_0"@7804)
        if (self.plot == 5)
        {
            global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_714_0"@7805)
            if (self.hugtime >= 1)
                global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_715_0"@7806)
            self.hugtime = (self.hugtime + 1)
        }
        if (self.plot == 1)
        {
            global.fe = 3
            global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_722_0"@7807)
            global.msg[1] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_723_0"@7808)
            global.msg[2] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_724_0"@7809)
            global.msg[3] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_725_0"@7810)
            global.msg[4] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_726_0"@7811)
            global.msg[5] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_727_0"@7812)
            global.msg[6] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_728_0"@7813)
            self.plot = 2
            if (self.defendtime >= 1)
            {
                global.msg[3] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_733_0"@7814)
                global.msg[4] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_734_0"@7815)
                global.msg[5] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_735_0"@7816)
                global.msg[6] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_736_0"@7817)
                global.msg[7] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_737_0"@7818)
                global.msg[8] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_738_0"@7819)
                self.plot = 3
            }
        }
        if (self.plot == 4)
        {
            global.fe = 8
            global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_746_0"@7820)
            global.msg[1] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_747_0"@7821)
            global.msg[2] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_748_0"@7822)
            global.msg[3] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_749_0"@7823)
            global.msg[4] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_750_0"@7824)
            self.plot = 5
        }
        scr_battletext()
        self.actcon = 16
    }
    if (self.actcon == 16)
        _temp_local_var_22 = (~ instance_exists(obj_writer))
    else
        _temp_local_var_22 = 0
    if _temp_local_var_22
    {
        with(self.myface)
        {
            instance_destroy()
        }
        with(self.k)
        {
            self.image_speed = -0.25
        }
        self.actcon = 17
        self.alarm[4] = 12
    }
    if (self.actcon == 18)
    {
        with(self.k)
        {
            self.image_speed = 0
        }
        with(self.k)
        {
            scr_move_to_point_over_time(global.charinstance[0].x, global.charinstance[0].y, 15)
        }
        self.actcon = 19
        self.alarm[4] = 25
    }
    if (self.actcon == 20)
    {
        with(self.k)
        {
            instance_destroy()
        }
        global.mercymod[0] = 100
        global.mercymod[1] = 100
        global.charinstance[0].visible = 1
        self.actcon = 1
    }
    if (self.acting == 3)
        _temp_local_var_23 = (self.actcon == 0)
    else
        _temp_local_var_23 = 0
    if _temp_local_var_23
    {
        self.makekris = 0
        with(obj_herokris)
        {
            global.faceaction[self.myself] = 0
            self.state = 0
            self.acttimer = 0
        }
        with(obj_heroralsei)
        {
            global.faceaction[self.myself] = 0
            self.state = 0
            self.acttimer = 0
        }
        self.actcon = 30
        global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_808_0"@7826)
        scr_battletext_default()
    }
    if (self.actcon == 30)
    {
        self.makekris = 1
        self.maker = 0
        with(global.charinstance[0])
        {
            self.visible = 0
        }
        self.k = scr_dark_marker(global.charinstance[0].x, global.charinstance[0].y, spr_kris_hug)
        with(self.k)
        {
            scr_move_to_point_over_time((obj_heroralsei.x - 24), (obj_heroralsei.y + 10), 15)
        }
        self.actcon = 31
        self.alarm[4] = 25
    }
    if (self.actcon == 32)
    {
        self.maker = 1
        with(obj_heroralsei)
        {
            self.visible = 0
        }
        self.rb = scr_dark_marker(obj_heroralsei.x, obj_heroralsei.y, spr_ralseil_blush)
        with(self.k)
        {
            self.image_speed = 0.25
        }
        self.actcon = 33
        self.alarm[4] = 12
    }
    if (self.actcon == 34)
    {
        with(self.k)
        {
            self.image_speed = 0
        }
        self.actcon = 35
    }
    if (self.actcon == 35)
        _temp_local_var_24 = (~ instance_exists(obj_writer))
    else
        _temp_local_var_24 = 0
    if _temp_local_var_24
    {
        global.typer = 45
        global.fc = 2
        global.fe = 2
        global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_846_0"@7829)
        if (self.r_hugtime == 0)
        {
            global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_850_0"@7830)
            global.msg[1] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_851_0"@7831)
            global.msg[2] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_852_0"@7832)
            global.msg[3] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_853_0"@7833)
        }
        if (self.r_hugtime == 1)
        {
            global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_858_0"@7834)
            global.msg[1] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_859_0"@7835)
            global.msg[2] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_860_0"@7836)
        }
        if (self.r_hugtime == 2)
        {
            global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_868_0"@7837)
            global.msg[1] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_869_0"@7838)
            global.msg[2] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_870_0"@7839)
            global.msg[3] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_871_0"@7840)
        }
        if (self.r_hugtime >= 3)
            global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_876_0"@7841)
        self.r_hugtime = (self.r_hugtime + 1)
        scr_battletext()
        self.actcon = 36
    }
    if (self.actcon == 36)
        _temp_local_var_25 = (~ instance_exists(obj_writer))
    else
        _temp_local_var_25 = 0
    if _temp_local_var_25
    {
        with(self.myface)
        {
            instance_destroy()
        }
        with(self.k)
        {
            self.image_speed = -0.25
        }
        self.actcon = 37
        self.alarm[4] = 12
    }
    if (self.actcon == 38)
    {
        with(self.k)
        {
            self.image_speed = 0
        }
        with(self.k)
        {
            scr_move_to_point_over_time(global.charinstance[0].x, global.charinstance[0].y, 15)
        }
        self.actcon = 39
        self.alarm[4] = 25
    }
    if (self.actcon == 40)
    {
        self.makekris = 0
        self.maker = 0
        with(self.rb)
        {
            instance_destroy()
        }
        with(obj_heroralsei)
        {
            self.visible = 1
        }
        with(self.k)
        {
            instance_destroy()
        }
        global.charinstance[0].visible = 1
        self.actcon = 1
    }
    if (self.actcon >= 30)
        _temp_local_var_26 = (self.actcon < 40)
    else
        _temp_local_var_26 = 0
    if _temp_local_var_26
    {
        if (self.makekris == 1)
        {
            with(self.k)
            {
                scr_depth()
            }
            with(self.k)
            {
                self.depth = (self.depth - 100000)
            }
        }
        if (self.maker == 1)
        {
            with(self.rb)
            {
                scr_depth()
            }
            with(self.rb)
            {
                self.depth = (self.depth - 100000)
            }
        }
    }
}
if (instance_exists(obj_battlecontroller) == 0)
    instance_destroy()
