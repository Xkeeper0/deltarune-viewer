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
    if ((global.charaction[1] != 2) && (global.charaction[1] != 4))
    {
        with (obj_attackpress)
        {
            with (obj_heroparent)
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
    if ((global.mnfight == 1) && (self.talked == 0))
    {
        global.writerimg[0] = scr_84_get_sprite("spr_btfight")
        global.writerimg[1] = scr_84_get_sprite("spr_btdefend")
        global.writerimg[2] = scr_84_get_sprite("spr_bttech")
        global.writerimg[3] = scr_84_get_sprite("spr_btact")
        global.writerimg[4] = scr_84_get_sprite("spr_btspare")
        global.writerimg[5] = scr_84_get_sprite("spr_btitem")
        if (self.attackcon == 0)
        {
            scr_moveheart()
            self.abletotarget = 1
            if ((global.charcantarget[0] == 0) && ((global.charcantarget[1] == 0) && (global.charcantarget[2] == 0)))
                self.abletotarget = 0
            self.mytarget = choose(0)
            if (self.abletotarget == 1)
            {
                while (global.charcantarget[self.mytarget] == 0)
                    self.mytarget = choose(0)
            }
            else
                self.target = 3
            global.targeted[self.mytarget] = 1
            self.attackcon = 1
            instance_create((__view_get(0, 0) + 320), (__view_get(1, 0) + 170), obj_growtangle)
            instance_create(0, 0, obj_darkener)
        }
        global.typer = 45
        global.fc = 2
        global.fe = 1
        global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_81_0")
        if ((self.plot == 0) && (self.attackcon == 1))
        {
            global.fe = 0
            global.flag[30] = 0
            global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_87_0")
            global.msg[1] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_88_0")
            global.msg[2] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_89_0")
            global.msg[3] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_90_0")
            global.msg[4] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_91_0")
            global.msg[5] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_92_0")
            global.msg[6] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_93_0")
            global.msg[7] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_94_0")
        }
        if (self.plot >= 1)
        {
            self.dial = 0
            if (global.charaction[0] == 1)
            {
                if (self.dummyhp > global.monsterhp[0])
                    self.dial = 1
                if ((self.dummyhp == global.monsterhp[0]) && (self.plot == 1))
                    self.dial = 2
                if ((self.dummyhp == global.monsterhp[0]) && ((self.misstime == 9) && (self.plot == 2)))
                {
                    self.dial = 3
                    global.flag[205] = 6
                }
                if ((self.dial == 1) && (self.hitdum >= 3))
                {
                    self.hitdum = 4
                    self.dial = 3
                    global.flag[205] = 4
                }
            }
            if ((global.charaction[0] == 10) && (self.commanded == 0))
            {
                global.fe = 0
                global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_115_0")
                global.msg[1] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_116_0")
                if (self.defendtime == 1)
                {
                    global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_120_0")
                    global.msg[1] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_121_0")
                }
                if (self.defendtime == 2)
                {
                    global.fe = 1
                    global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_127_0")
                    global.msg[1] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_128_0")
                    global.msg[2] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_129_0")
                }
                if (self.defendtime == 3)
                {
                    global.fe = 9
                    global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_136_0")
                }
                if (self.plot == 2)
                {
                    global.writerimg[2] = scr_84_get_sprite("spr_bttech")
                    global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_142_0")
                    global.msg[1] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_143_0")
                    global.msg[2] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_144_0")
                    global.msg[3] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_145_0")
                    global.msg[4] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_146_0")
                    if (global.monsterhp[0] == global.monstermaxhp[0])
                    {
                        global.msg[2] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_150_0")
                        global.msg[3] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_151_0")
                    }
                    global.monsterstatus[self.myself] = 1
                    if (global.monstercomment[self.myself] == " ")
                        global.monstercomment[self.myself] = scr_84_get_lang_string("obj_dummyenemy_slash_Draw_0_gml_4_0")
                    self.plot = 3
                    if (self.defendtime == 4)
                        self.defendtime = 3
                }
                if (self.defendtime >= 4)
                {
                    self.dial = 3
                    global.flag[205] = 5
                }
                self.defendtime += 1
                self.commanded = 1
            }
            if ((global.charaction[0] == 4) && (self.commanded == 0))
            {
                global.fe = 0
                global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_167_0")
                global.msg[1] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_168_0")
                global.msg[2] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_169_0")
                if (self.item_command == 1)
                {
                    global.fe = 1
                    global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_174_0")
                    global.msg[1] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_175_0")
                    global.msg[2] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_176_0")
                    global.msg[3] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_177_0")
                    global.msg[4] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_178_0")
                }
                if (self.item_command == 2)
                {
                    global.fe = 6
                    global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_184_0")
                    global.msg[1] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_185_0")
                }
                if (self.item_command == 3)
                {
                    global.fe = 0
                    global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_191_0")
                    global.msg[1] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_192_0")
                }
                if (self.item_command >= 4)
                    self.dial = 3
                self.commanded = 1
                self.item_command += 1
            }
            if ((self.ral_wrongcommand == 1) && (self.commanded == 0))
            {
                global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_206_0")
                if (self.ral_wrongcommand_count == 0)
                    global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_211_0")
                if (self.ral_wrongcommand_count == 1)
                {
                    global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_216_0")
                    global.msg[1] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_217_0")
                }
                if (self.ral_wrongcommand_count == 2)
                    global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_222_0")
                if (self.ral_wrongcommand_count == 3)
                {
                    global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_227_0")
                    global.msg[1] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_228_0")
                    global.msg[2] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_229_0")
                    global.msg[3] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_230_0")
                    global.msg[4] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_231_0")
                    if (self.plot == 3)
                        self.plot = 4
                    if (global.mercymod[self.myself] >= 100)
                    {
                        global.msg[2] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_237_0")
                        global.msg[3] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_238_0")
                        global.msg[4] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_239_0")
                        self.plot = 5
                    }
                }
                self.ral_wrongcommand_count += 1
                self.commanded = 0
            }
            if ((global.charaction[1] == 2) && ((self.ral_wrongcommand == 0) && (self.commanded == 0)))
            {
                global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_252_0")
                global.msg[1] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_253_0")
                global.msg[2] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_254_0")
                global.msg[3] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_255_0")
                global.msg[4] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_256_0")
                if (self.pacifycon == 1)
                {
                    global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_260_0")
                    if (global.monsterstatus[self.myself] == 0)
                        global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_262_0")
                }
                self.plot = 4
                if (global.mercymod[self.myself] >= 100)
                {
                    global.msg[2] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_268_0")
                    global.msg[3] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_269_0")
                    global.msg[4] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_270_0")
                    self.plot = 5
                }
                self.commanded = 1
            }
            if ((self.spare_used == 1) && (self.commanded == 0))
            {
                if (self.plot < 5)
                {
                    global.fe = 0
                    if (self.spare_command == 0)
                        global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_282_0")
                    if (self.spare_command == 1)
                        global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_283_0")
                    if (self.spare_command >= 2)
                        global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_284_0")
                    if (global.mercymod[self.myself] >= 100)
                        self.win_spare += 1
                    if (self.win_spare == 1)
                    {
                        global.fe = 6
                        global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_289_0")
                        global.msg[1] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_290_0")
                        global.msg[2] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_291_0")
                    }
                    if (self.win_spare == 2)
                    {
                        global.fe = 6
                        global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_296_0")
                        global.msg[1] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_297_0")
                        global.msg[2] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_298_0")
                        self.won = 1
                    }
                }
                if (self.plot == 5)
                {
                    global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_307_0")
                    global.msg[1] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_308_0")
                    self.won = 1
                }
                self.spare_used = 0
                self.spare_command += 1
                self.commanded = 1
            }
            if (self.dial == 1)
            {
                if (self.plot == 1)
                {
                    global.fe = 3
                    if (self.dummyhp > (global.monsterhp[0] + 50))
                    {
                        global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_327_0")
                        global.msg[1] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_328_0")
                    }
                    else
                    {
                        global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_332_0")
                        global.msg[1] = ((scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_333_0") + scr_get_input_name(4)) + scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_333_1"))
                    }
                    if (self.misstime >= 6)
                    {
                        global.fe = 8
                        global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_338_0")
                        global.msg[1] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_339_0")
                    }
                    global.msg[2] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_341_0")
                    global.msg[3] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_342_0")
                    global.msg[4] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_343_0")
                    global.msg[5] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_344_0")
                    self.plot = 2
                    if (self.defendtime >= 1)
                    {
                        global.msg[2] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_348_0")
                        global.msg[3] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_349_0")
                        global.msg[4] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_350_0")
                        global.msg[5] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_351_0")
                        global.msg[6] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_352_0")
                        global.msg[7] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_353_0")
                        self.plot = 3
                    }
                }
                else
                {
                    if (self.hitdum == 0)
                    {
                        global.fe = 1
                        global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_364_0")
                        global.msg[1] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_365_0")
                    }
                    if (self.hitdum == 1)
                    {
                        global.fe = 1
                        global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_372_0")
                        global.msg[1] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_373_0")
                        global.msg[2] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_374_0")
                    }
                    if (self.hitdum == 2)
                    {
                        global.fe = 6
                        global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_380_0")
                        global.msg[1] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_381_0")
                        global.msg[2] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_382_0")
                    }
                    if (self.hitdum >= 3)
                        self.dial = 3
                    self.hitdum += 1
                }
            }
            if (self.dial == 2)
            {
                global.fe = 3
                global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_398_0")
                global.msg[1] = ((scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_399_0") + scr_get_input_name(4)) + scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_399_1"))
                if (self.misstime >= 1)
                {
                    global.fe = 8
                    global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_403_0")
                    if (self.misstime == 2)
                        global.msg[0] = ((scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_404_0") + scr_get_input_name(4)) + scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_404_1"))
                    if (self.misstime == 3)
                        global.msg[0] = ((scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_405_0") + scr_get_input_name(4)) + scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_405_1"))
                    if (self.misstime == 4)
                        global.msg[0] = ((scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_406_0") + scr_get_input_name(4)) + scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_406_1"))
                    if (self.misstime == 5)
                        global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_407_0")
                    if (self.misstime == 6)
                        global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_408_0")
                    if (self.misstime == 7)
                    {
                        global.fe = 9
                        global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_412_0")
                    }
                    if (self.misstime == 8)
                    {
                        global.fe = 1
                        global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_417_0")
                        self.plot = 2
                        if (self.defendtime >= 1)
                        {
                            global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_421_0")
                            global.msg[1] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_422_0")
                            global.msg[2] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_423_0")
                            global.msg[3] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_424_0")
                            global.msg[4] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_425_0")
                            global.msg[5] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_426_0")
                            global.msg[6] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_427_0")
                            self.plot = 3
                        }
                    }
                }
                self.misstime += 1
            }
            if (self.dial == 3)
            {
                global.fe = 9
                global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_441_0")
                global.msg[1] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_442_0")
                global.msg[2] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_443_0")
                global.msg[3] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_444_0")
                if (self.hitdum >= 4)
                {
                    global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_447_0")
                    global.msg[1] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_448_0")
                    global.msg[2] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_449_0")
                }
                self.won = 1
                global.myfight = 999
                global.mnfight = 999
            }
        }
        scr_battletext()
        if (global.msg[0] == scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_463_0"))
        {
            with (obj_writer)
                instance_destroy()
        }
        self.acting = 0
        self.spare_used = 0
        self.dummyhp = global.monsterhp[self.myself]
        self.talked = 1
        self.talktimer = 0
        self.ral_wrongcommand = 0
    }
    if ((global.mnfight == 9786) && (self.attacked == 0))
    {
        self.turns += 1
        global.turntimer = -1
        scr_mnendturn()
        self.attacked = 1
        self.rr = floor(random(0))
        global.typer = 6
        global.fc = 0
        if (self.rr == 0)
            global.battlemsg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_489_0")
    }
    if ((self.talked == 1) && (global.mnfight == 1))
    {
        if (self.won == 0)
        {
            self.rtimer = 0
            scr_blconskip(-1)
            if ((global.mnfight == 2) && (self.attackcon == 1))
            {
                if ((!instance_exists(obj_moveheart)) && (!instance_exists(obj_heart)))
                    scr_moveheart()
                if (!instance_exists(obj_growtangle))
                    instance_create((__view_get(0, 0) + 320), (__view_get(1, 0) + 170), obj_growtangle)
            }
        }
        else if (!instance_exists(obj_writer))
        {
            scr_monsterdefeat()
            scr_mnendturn()
        }
    }
    if ((global.mnfight == 2) && (self.attacked == 0))
    {
        if (self.attackcon != 1)
            self.rtimer = 8
        self.rtimer += 1
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
            self.turns += 1
            global.turntimer = 150
            if (self.attackcon == 1)
                self.battlecancel = 2
            if (self.attackcon != 1)
            {
                global.turntimer = -100
                with (self.dc)
                    instance_destroy()
            }
            self.attackcon = 2
            self.attacked = 1
            global.typer = 6
            global.fc = 0
            global.battlemsg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_548_0")
            global.writerimg[0] = scr_84_get_sprite("spr_btfight")
            global.writerimg[1] = scr_84_get_sprite("spr_btdefend")
            global.writerimg[2] = scr_84_get_sprite("spr_bttech")
            global.writerimg[3] = scr_84_get_sprite("spr_btact")
            global.writerimg[4] = scr_84_get_sprite("spr_btspare")
            global.writerimg[5] = scr_84_get_sprite("spr_btitem")
            global.fc = 0
            if (self.plot == 1)
                global.battlemsg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_556_0")
            if (self.plot == 2)
                global.battlemsg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_557_0")
            if (self.plot == 3)
                global.battlemsg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_558_0")
            if (self.plot == 4)
                global.battlemsg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_559_0")
            if (self.plot == 5)
                global.battlemsg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_560_0")
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
                with (obj_battlecontroller)
                    self.noreturn = 1
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
    global.writerimg[0] = scr_84_get_sprite("spr_btfight")
    global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_598_0")
    if (self.kris_inithp > global.hp[1])
    {
        global.fe = 6
        global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_602_0")
    }
    global.msg[1] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_604_0")
    global.msg[2] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_605_0")
    global.msg[3] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_606_0")
    global.msg[4] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_607_0")
    global.battlemsg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_610_0")
    scr_battletext()
    self.con = 6
}
if ((self.con == 6) && (!instance_exists(obj_writer)))
{
    with (obj_battlecontroller)
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
    self.xx = __view_get(0, 0)
    self.yy = __view_get(1, 0)
    if ((self.acting == 1) && (self.actcon == 0))
    {
        self.actcon = 1
        global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_642_0")
        if (self.checked == 0)
        {
            global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_645_0")
            scr_ralface(1, 6)
            global.msg[2] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_647_0")
            global.msg[3] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_648_0")
            global.msg[4] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_649_0")
        }
        self.checked += 1
        scr_battletext_default()
    }
    if ((self.acting == 2) && (self.actcon == 0))
    {
        self.actcon = 10
        with (obj_herokris)
        {
            global.faceaction[self.myself] = 0
            self.state = 0
            self.acttimer = 0
        }
        global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_666_0")
        scr_battletext_default()
    }
    if ((self.actcon == 1) && (!instance_exists(obj_writer)))
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
        with (global.charinstance[0])
            self.visible = 0
        self.k = scr_dark_marker(global.charinstance[0].x, global.charinstance[0].y, spr_kris_hug)
        with (self.k)
            scr_move_to_point_over_time((global.monsterx[0] - 42), (global.monstery[0] - 30), 15)
        self.actcon = 11
        self.alarm[4] = 25
    }
    if (self.actcon == 12)
    {
        with (self.k)
            self.image_speed = 0.25
        self.actcon = 13
        self.alarm[4] = 12
    }
    if (self.actcon == 14)
    {
        with (self.k)
            self.image_speed = 0
        self.actcon = 15
    }
    if ((self.actcon == 15) && (!instance_exists(obj_writer)))
    {
        global.flag[205] = 1
        global.typer = 45
        global.fc = 2
        global.fe = 0
        global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_711_0")
        if (self.plot == 5)
        {
            global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_714_0")
            if (self.hugtime >= 1)
                global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_715_0")
            self.hugtime += 1
        }
        if (self.plot == 1)
        {
            global.fe = 3
            global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_722_0")
            global.msg[1] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_723_0")
            global.msg[2] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_724_0")
            global.msg[3] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_725_0")
            global.msg[4] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_726_0")
            global.msg[5] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_727_0")
            global.msg[6] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_728_0")
            self.plot = 2
            if (self.defendtime >= 1)
            {
                global.msg[3] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_733_0")
                global.msg[4] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_734_0")
                global.msg[5] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_735_0")
                global.msg[6] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_736_0")
                global.msg[7] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_737_0")
                global.msg[8] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_738_0")
                self.plot = 3
            }
        }
        if (self.plot == 4)
        {
            global.fe = 8
            global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_746_0")
            global.msg[1] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_747_0")
            global.msg[2] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_748_0")
            global.msg[3] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_749_0")
            global.msg[4] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_750_0")
            self.plot = 5
        }
        scr_battletext()
        self.actcon = 16
    }
    if ((self.actcon == 16) && (!instance_exists(obj_writer)))
    {
        with (self.myface)
            instance_destroy()
        with (self.k)
            self.image_speed = -0.25
        self.actcon = 17
        self.alarm[4] = 12
    }
    if (self.actcon == 18)
    {
        with (self.k)
            self.image_speed = 0
        with (self.k)
            scr_move_to_point_over_time(global.charinstance[0].x, global.charinstance[0].y, 15)
        self.actcon = 19
        self.alarm[4] = 25
    }
    if (self.actcon == 20)
    {
        with (self.k)
            instance_destroy()
        global.mercymod[0] = 100
        global.mercymod[1] = 100
        global.charinstance[0].visible = 1
        self.actcon = 1
    }
    if ((self.acting == 3) && (self.actcon == 0))
    {
        self.makekris = 0
        with (obj_herokris)
        {
            global.faceaction[self.myself] = 0
            self.state = 0
            self.acttimer = 0
        }
        with (obj_heroralsei)
        {
            global.faceaction[self.myself] = 0
            self.state = 0
            self.acttimer = 0
        }
        self.actcon = 30
        global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_808_0")
        scr_battletext_default()
    }
    if (self.actcon == 30)
    {
        self.makekris = 1
        self.maker = 0
        with (global.charinstance[0])
            self.visible = 0
        self.k = scr_dark_marker(global.charinstance[0].x, global.charinstance[0].y, spr_kris_hug)
        with (self.k)
            scr_move_to_point_over_time((obj_heroralsei.x - 24), (obj_heroralsei.y + 10), 15)
        self.actcon = 31
        self.alarm[4] = 25
    }
    if (self.actcon == 32)
    {
        self.maker = 1
        with (obj_heroralsei)
            self.visible = 0
        self.rb = scr_dark_marker(obj_heroralsei.x, obj_heroralsei.y, spr_ralseil_blush)
        with (self.k)
            self.image_speed = 0.25
        self.actcon = 33
        self.alarm[4] = 12
    }
    if (self.actcon == 34)
    {
        with (self.k)
            self.image_speed = 0
        self.actcon = 35
    }
    if ((self.actcon == 35) && (!instance_exists(obj_writer)))
    {
        global.typer = 45
        global.fc = 2
        global.fe = 2
        global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_846_0")
        if (self.r_hugtime == 0)
        {
            global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_850_0")
            global.msg[1] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_851_0")
            global.msg[2] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_852_0")
            global.msg[3] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_853_0")
        }
        if (self.r_hugtime == 1)
        {
            global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_858_0")
            global.msg[1] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_859_0")
            global.msg[2] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_860_0")
        }
        if (self.r_hugtime == 2)
        {
            global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_868_0")
            global.msg[1] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_869_0")
            global.msg[2] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_870_0")
            global.msg[3] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_871_0")
        }
        if (self.r_hugtime >= 3)
            global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_876_0")
        self.r_hugtime += 1
        scr_battletext()
        self.actcon = 36
    }
    if ((self.actcon == 36) && (!instance_exists(obj_writer)))
    {
        with (self.myface)
            instance_destroy()
        with (self.k)
            self.image_speed = -0.25
        self.actcon = 37
        self.alarm[4] = 12
    }
    if (self.actcon == 38)
    {
        with (self.k)
            self.image_speed = 0
        with (self.k)
            scr_move_to_point_over_time(global.charinstance[0].x, global.charinstance[0].y, 15)
        self.actcon = 39
        self.alarm[4] = 25
    }
    if (self.actcon == 40)
    {
        self.makekris = 0
        self.maker = 0
        with (self.rb)
            instance_destroy()
        with (obj_heroralsei)
            self.visible = 1
        with (self.k)
            instance_destroy()
        global.charinstance[0].visible = 1
        self.actcon = 1
    }
    if ((self.actcon >= 30) && (self.actcon < 40))
    {
        if (self.makekris == 1)
        {
            with (self.k)
                scr_depth()
            with (self.k)
                self.depth -= 100000
        }
        if (self.maker == 1)
        {
            with (self.rb)
                scr_depth()
            with (self.rb)
                self.depth -= 100000
        }
    }
}
if (instance_exists(obj_battlecontroller) == 0)
    instance_destroy()
