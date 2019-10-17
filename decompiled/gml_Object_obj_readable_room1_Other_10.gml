self.myinteract = 3
global.msc = 0
global.typer = 5
if (global.darkzone == 1)
    global.typer = 6
global.fe = 0
global.fc = 0
global.interact = 1
with (obj_darkcontroller)
    self.charcon = 0
global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_11_0")
if (self.room == room_krisroom)
{
    if (self.y < 150)
    {
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_17_0")
        global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_18_0")
    }
    else
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_22_0")
    if (self.x > 100)
    {
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_28_0")
        global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_29_0")
        if (global.filechoice == 1)
            global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_30_0")
        if (global.filechoice == 2)
        {
            global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_33_0")
            global.msg[2] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_34_0")
        }
        if (self.read > 0)
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_38_0")
    }
    if (self.x > 136)
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_45_0")
    if (self.x > 192)
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_50_0")
    if (self.x > 220)
    {
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_55_0")
        if ((global.tempflag[10] == 1) && (global.plot < 10))
        {
            global.msc = 402
            scr_text(global.msc)
        }
        if (global.plot >= 250)
        {
            global.msc = 400
            scr_text(global.msc)
        }
    }
    if (self.x > 250)
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_71_0")
}
if (self.room == room_krishallway)
{
    global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_79_0")
    if (self.x > 120)
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_83_0")
    if (self.x > 160)
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_87_0")
    if (self.x > 220)
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_91_0")
    if (self.x > 320)
    {
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_96_0")
        global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_97_0")
        global.msg[2] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_98_0")
        global.msg[3] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_99_0")
        global.msg[4] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_100_0")
        if (self.read > 0)
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_103_0")
    }
}
if (self.room == room_torhouse)
{
    if (self.x > 190)
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_113_0")
    if (self.x > 220)
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_118_0")
    if (self.x > 260)
    {
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_123_0")
        if (global.plot >= 250)
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_126_0")
    }
    if (self.x > 300)
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_132_0")
    if (self.x > 340)
    {
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_137_0")
        if (global.flag[262] >= 4)
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_140_0")
    }
    if (self.x > 369)
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_146_0")
    if (self.x > 440)
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_151_0")
    if (self.x > 560)
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_157_0")
}
if (self.room == room_torbathroom)
{
    if (self.x >= 100)
    {
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_167_0")
        global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_168_0")
    }
    if ((self.x >= 160) && (self.x <= 190))
    {
        global.msc = 355
        scr_text(global.msc)
    }
    if (self.x >= 190)
    {
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_177_0")
        global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_178_0")
        global.msg[2] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_179_0")
    }
}
if (self.room == room_schoollobby)
{
    if ((self.x >= 140) && (self.x < 240))
    {
        if (self.tempvar == 0)
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_190_0")
        if (self.tempvar == 1)
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_191_0")
        if (self.tempvar == 2)
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_192_0")
        if (self.tempvar == 3)
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_193_0")
        if (self.tempvar >= 4)
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_194_0")
        with (obj_readable_room1)
            self.tempvar += 1
    }
    if (self.x == 240)
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_199_0")
    if (self.x >= 280)
    {
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_204_0")
        global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_205_0")
        global.msg[2] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_206_0")
    }
    if (self.x < 140)
    {
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_211_0")
        global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_212_0")
    }
    if (self.x >= 520)
    {
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_217_0")
        if (self.read == 1)
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_218_0")
        if (self.read >= 2)
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_219_0")
        if (global.plot < 10)
        {
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_223_0")
            scr_susface(1, 1)
            global.msg[2] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_225_0")
            if (self.read >= 1)
            {
                scr_susface(0, 9)
                global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_230_0")
            }
        }
    }
    if (self.x >= 560)
    {
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_237_0")
        global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_238_0")
        global.msg[2] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_239_0")
    }
    if (self.x >= 690)
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_245_0")
    if (self.x == 760)
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_251_0")
    if (self.x == 780)
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_255_0")
}
if (self.room == room_alphysclass)
{
    global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_264_0")
    global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_265_0")
    if (global.plot >= 250)
    {
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_269_0")
        global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_270_0")
    }
    if (self.x > 240)
    {
        global.fe = 1
        global.fc = 11
        global.typer = 20
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_278_0")
        global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_279_0")
    }
    if (self.x < 200)
    {
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_284_0")
        global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_285_0")
        if (global.plot >= 250)
        {
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_289_0")
            global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_290_0")
        }
    }
    if (self.x < 150)
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_298_0")
    if (self.x < 80)
    {
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_304_0")
        global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_305_0")
        global.msg[2] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_306_0")
    }
}
if (self.room == room_torielclass)
{
    if (self.y <= (self.room_height / 2))
    {
        if (self.x >= 100)
        {
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_318_0")
            global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_319_0")
        }
        if (self.x >= 130)
        {
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_323_0")
            global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_324_0")
        }
        if (self.x >= 170)
        {
            global.msc = 350
            scr_text(global.msc)
        }
        if (self.x >= 198)
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_333_0")
        if (self.x >= 204)
        {
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_338_0")
            global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_339_0")
        }
        if (self.x >= 230)
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_343_0")
        if (self.x >= 256)
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_347_0")
    }
    else if (self.x <= (self.room_width / 2))
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_354_0")
    else
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_358_0")
}
if (self.room == room_schooldoor)
    global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_366_0")
if (self.room == room_school_unusedroom)
{
    if (self.x < 80)
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_371_0")
    if (self.x > 100)
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_372_0")
    if ((self.x > 160) && (self.y < 100))
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_373_0")
    if ((self.x > 160) && (self.y > 100))
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_374_0")
    if (self.x > 220)
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_375_0")
    if (self.x > 250)
    {
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_378_0")
        global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_379_0")
    }
}
if (self.room == room_hospital_lobby)
{
    if (self.x <= 160)
    {
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_388_0")
        global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_389_0")
    }
    if (self.x >= 160)
    {
        global.msc = 360
        scr_text(global.msc)
    }
}
if ((self.room == room_dark2) || ((self.room == room_dark3) || (self.room == room_dark7)))
    global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_400_0")
if (self.room == room_dark3a)
{
    global.msc = 110
    scr_text(110)
}
if (self.room == room_dark_eyepuzzle)
    global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_411_0")
if (self.room == room_castle_town)
{
    global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_416_0")
    if (self.read >= 1)
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_419_0")
    with (obj_readable_room1)
        self.read += 1
}
if (self.room == room_castle_front)
{
    global.typer = 31
    global.fc = 2
    global.fe = 0
    global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_429_0")
    global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_430_0")
    global.msg[2] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_431_0")
    if (self.read > 0)
    {
        global.fe = 1
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_435_0")
        global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_436_0")
    }
}
if (self.room == room_castle_outskirts)
{
    global.typer = 31
    global.fc = 2
    global.fe = 1
    global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_446_0")
    global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_447_0")
}
if (self.room == room_field_puzzle1)
    global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_452_0")
if (self.room == room_field_shop1)
{
    global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_457_0")
    global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_458_0")
}
if ((self.room == room_field_checkers1) || ((self.room == room_field_checkers4) || (self.room == room_field_checkers6)))
    global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_465_0")
if (self.room == room_field_puzzletutorial)
{
    global.msc = 250
    scr_text(global.msc)
}
if (self.room == room_field_checkers5)
    global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_476_0")
if (self.room == room_forest_area3)
{
    global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_481_0")
    global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_482_0")
    global.msg[2] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_483_0")
    if (self.read >= 1)
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_486_0")
    if (self.y >= 400)
    {
        if (self.x < 600)
        {
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_493_0")
            global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_494_0")
            global.msg[2] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_495_0")
            global.msg[3] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_496_0")
            if (self.read >= 1)
                global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_499_0")
        }
        else
        {
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_504_0")
            global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_505_0")
            global.msg[2] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_506_0")
            if (self.x >= 1100)
            {
                global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_510_0")
                global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_511_0")
                global.msg[2] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_512_0")
            }
        }
        if (global.plot >= 75)
        {
            self.holecon = 999
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_519_0")
        }
    }
}
if (self.room == room_forest_area5)
{
    if (self.x <= 340)
    {
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_530_0")
        global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_531_0")
    }
    if ((self.x >= 600) && (self.x <= 1300))
    {
        if (global.flag[237] == 0)
        {
            global.flag[237] = 1
            snd_play(snd_screenshake)
            instance_create(0, 0, obj_shake)
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_540_0")
            global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_541_0")
            if (obj_mainchara.becamebattle == 0)
            {
                global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_544_0")
                global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_545_0")
                scr_ralface(2, 1)
                global.msg[3] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_547_0")
                global.msg[4] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_548_0")
            }
            with (obj_tempblock_room)
            {
                with (self.tree)
                    instance_destroy()
                with (self.block)
                    instance_destroy()
                with (self.talkto)
                    instance_destroy()
            }
        }
        else
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_559_0")
    }
    if (self.x >= 1350)
    {
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_564_0")
        global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_565_0")
    }
}
if (self.room == room_forest_starwalker)
{
    global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_571_0")
    if (self.read == 0)
    {
        snd_play(snd_item)
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_575_0")
        global.gold += 40
    }
    self.read += 1
}
if (self.room == room_cc_prison_cells)
{
    global.flag[231] += 1
    if (self.x < 400)
    {
        global.fc = 2
        global.typer = 31
        global.fe = 0
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_591_0")
        scr_susface(1, 7)
        global.msg[2] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_593_0")
    }
    if ((self.x >= 600) && (self.y < 200))
    {
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_598_0")
        global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_599_0")
        if (self.read >= 1)
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_602_0")
    }
    if ((self.x >= 600) && (self.y > 200))
    {
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_608_0")
        global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_609_0")
        if (self.read >= 1)
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_610_0")
        if (global.plot >= 155)
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_613_0")
    }
    if (self.x >= 720)
    {
        global.msc = 295
        scr_text(global.msc)
        if scr_havechar(2)
        {
            global.typer = 30
            global.fc = 1
            global.fe = 6
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_626_0")
            global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_627_0")
            if (global.flag[106] == 1)
                global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_628_0")
        }
    }
}
if (self.room == room_field_boxpuzzle)
{
    global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_636_0")
    global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_637_0")
}
if (self.room == room_forest_thrashmaker)
{
    global.fc = 2
    global.fe = 5
    global.typer = 31
    global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_647_0")
    global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_648_0")
    if scr_havechar(2)
    {
        global.fc = 1
        global.fe = 0
        global.typer = 30
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_654_0")
        scr_ralface(1, 1)
        global.msg[2] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_656_0")
        scr_susface(3, 2)
        global.msg[4] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_658_0")
    }
}
if (self.room == room_forest_area1)
    global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_666_0")
if (self.room == room_man)
{
    if (self.y >= 220)
    {
        if (global.flag[910] < 2)
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_673_0")
        else
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_675_0")
    }
    else if (global.flag[910] >= 2)
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_682_0")
    else
    {
        global.msc = 600
        scr_text(global.msc)
    }
}
if (self.room == room_cc_throneroom)
{
    global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_695_0")
    if (self.y >= 260)
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_698_0")
}
if (self.room == room_cc_prison_prejoker)
{
    global.facing = 1
    with (obj_caterpillarchara)
        self.sprite_index = self.rsprite
    global.typer = 35
    global.fc = 0
    global.msc = 405
    if (scr_keyitemcheck(5) == 1)
        global.msc = 410
    if (global.flag[241] >= 5)
        global.msc = 415
    scr_text(global.msc)
}
if (self.room == room_cc_1f)
{
    if (self.x < 500)
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_721_0")
    if ((self.x < 1300) && (self.x > 500))
    {
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_726_0")
        global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_727_0")
        if (global.flag[240] == 1)
        {
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_730_0")
            global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_731_0")
        }
    }
    if (self.x > 1300)
    {
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_738_0")
        global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_739_0")
    }
}
if (self.room == room_cc_rudinn)
{
    global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_746_0")
    if (self.y < 130)
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_749_0")
}
if (self.room == room_cc_2f)
{
    global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_755_0")
    if (self.y < 250)
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_758_0")
}
if (self.room == room_cc_rurus1)
{
    global.fc = 18
    global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_766_0")
    global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_767_0")
    global.msg[2] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_768_0")
    if (self.read >= 1)
    {
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_772_0")
        global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_773_0")
        global.msg[2] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_774_0")
        global.msg[3] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_775_0")
    }
}
if (self.room == room_cc_rurus2)
{
    global.fc = 18
    global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_782_0")
    global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_783_0")
    global.msg[2] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_784_0")
    if (self.read >= 1)
    {
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_788_0")
        global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_789_0")
    }
}
if (self.room == room_cc_6f)
{
    global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_796_0")
    if (self.read >= 1)
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_799_0")
}
if (self.room == room_cc_hathy)
{
    global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_805_0")
    global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_806_0")
    if (self.read == 0)
    {
        with (obj_readable_room1)
        {
            if (global.flag[252] == 0)
                self.tempvar += 1
        }
    }
    if ((self.tempvar == 4) && (global.flag[252] == 0))
    {
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_815_0")
        global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_816_0")
        global.flag[252] = 1
        with (obj_readable_room1)
            self.tempvar = 99
    }
}
if (self.room == room_cc_clover)
{
    global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_824_0")
    if (self.x > (self.room_width / 2))
    {
        if (self.y < (self.room_height / 2))
        {
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_829_0")
            if (self.read >= 1)
            {
                global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_832_0")
                global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_833_0")
            }
        }
        else
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_838_0")
    }
}
if (self.room == room_cc_lancer)
{
    if (self.y <= 220)
    {
        if (self.x < 200)
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_849_0")
        if ((self.x > 300) && (self.x < 350))
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_853_0")
        if ((self.x > 350) && (self.x < 400))
        {
            global.msc = 430
            scr_text(global.msc)
        }
        if (self.x >= 400)
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_862_0")
    }
    else
    {
        if (self.x < 200)
        {
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_869_0")
            global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_870_0")
        }
        if ((self.x > 250) && (self.x < 320))
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_874_0")
        if (self.x > 320)
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_878_0")
    }
}
if (self.room == room_cc_prisonelevator)
{
    global.msc = 435
    scr_text(global.msc)
}
if (self.room == room_cc_elevator)
{
    global.msc = 440
    scr_text(global.msc)
}
if (self.room == room_cc_prisonlancer)
{
    global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_898_0")
    global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_899_0")
    if (self.x >= 560)
    {
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_902_0")
        if (scr_havechar(2) && scr_havechar(3))
        {
            global.fe = 0
            global.fc = 2
            global.typer = 31
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_908_0")
            global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_909_0")
            scr_susface(2, 7)
            global.msg[3] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_911_0")
            global.msg[4] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_912_0")
            scr_ralface(5, 6)
            global.msg[6] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_914_0")
            scr_susface(7, 2)
            global.msg[8] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_916_0")
            global.msg[9] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_917_0")
            if (self.read >= 1)
            {
                global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_920_0")
                scr_susface(1, 2)
                global.msg[2] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_922_0")
            }
        }
    }
}
if (self.room == room_hospital_rudy)
{
    if ((self.x <= 75) && (self.y < 160))
    {
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_932_0")
        scr_rudface(1, 0)
        global.msg[2] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_934_0")
        global.msg[3] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_935_0")
        global.msg[4] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_936_0")
        global.msg[5] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_937_0")
        if (self.read >= 1)
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_940_0")
    }
    if ((self.x <= 75) && (self.y > 160))
    {
        if (global.flag[255] < 2)
        {
            global.typer = 55
            global.fc = 15
            global.fe = 4
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_952_0")
            global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_953_0")
        }
        else
        {
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_957_0")
            scr_rudface(1, 2)
            global.msg[2] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_959_0")
        }
    }
    if ((self.x >= 95) && (self.x <= 105))
    {
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_969_0")
        scr_rudface(1, 2)
        global.msg[2] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_971_0")
        if (self.read >= 1)
        {
            scr_rudface(1, 2)
            global.msg[2] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_975_0")
            global.msg[3] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_976_0")
        }
    }
    if (self.x == 205)
    {
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_982_0")
        scr_rudface(1, 4)
        global.msg[2] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_984_0")
        global.msg[3] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_985_0")
        global.msg[4] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_986_0")
        if (self.read >= 1)
        {
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_989_0")
            scr_rudface(1, 0)
            global.msg[2] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_991_0")
            global.msg[3] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_992_0")
        }
    }
    if (self.x > 215)
    {
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_999_0")
        scr_rudface(1, 0)
        global.msg[2] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1001_0")
        global.msg[3] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1002_0")
        global.msg[4] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1003_0")
    }
    if (self.x > 230)
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1011_0")
}
if (self.room == room_hospital_hallway)
    global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1017_0")
if (self.room == room_hospital_room2)
{
    if (self.y >= 160)
    {
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1024_0")
        if (self.tempvar >= 1)
        {
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1027_0")
            global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1028_0")
        }
        with (obj_readable_room1)
        {
            if (self.y >= 160)
                self.tempvar += 1
        }
    }
    else
    {
        if (self.x <= 140)
        {
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1041_0")
            global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1042_0")
        }
        if (self.x >= 150)
        {
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1046_0")
            global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1047_0")
        }
        if (self.x >= 200)
        {
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1051_0")
            global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1052_0")
        }
    }
}
if (self.room == room_library)
{
    if (self.x < 80)
    {
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1063_0")
        global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1064_0")
        if (self.y > 80)
        {
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1069_0")
            global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1070_0")
            global.msg[2] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1071_0")
            global.msg[3] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1072_0")
        }
    }
    if (self.x > 70)
    {
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1080_0")
        global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1081_0")
        if (self.y > 80)
        {
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1085_0")
            global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1086_0")
        }
    }
    if (self.x > 110)
    {
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1093_0")
        global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1094_0")
        global.msg[2] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1095_0")
        global.msg[3] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1096_0")
        global.msg[4] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1097_0")
        global.msg[5] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1098_0")
        if (self.read >= 1)
        {
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1102_0")
            global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1103_0")
            global.msg[2] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1104_0")
            global.msg[3] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1105_0")
        }
    }
    if (self.x > 150)
    {
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1111_0")
        global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1112_0")
    }
    if (self.x > 190)
    {
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1117_0")
        global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1118_0")
        global.msg[2] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1119_0")
    }
    if (self.x > 220)
    {
        global.msc = 185
        scr_text(global.msc)
    }
}
if (self.room == room_graveyard)
{
    global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1134_0")
    if (self.x >= 150)
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1137_0")
    if (self.x >= 200)
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1141_0")
    if (self.x >= 290)
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1145_0")
}
if (self.room == room_townhall)
{
    if (self.x >= 180)
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1158_0")
    if (self.x >= 240)
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1163_0")
    if (self.y >= 160)
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1166_0")
}
if (self.room == room_beach)
{
    global.msc = 192
    scr_text(global.msc)
}
if (self.room == room_diner)
    global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1178_0")
if (self.room == room_flowershop_1f)
{
    if (self.y > 100)
    {
        if (self.x < 100)
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1185_0")
        if (self.x < 70)
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1186_0")
        if (self.x < 50)
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1187_0")
    }
    if (self.y < 80)
    {
        if (self.x == 140)
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1192_0")
        if (self.x != 140)
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1193_0")
    }
}
if (self.room == room_flowershop_2f)
{
    if (self.y < 50)
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1202_0")
    if (self.y > 60)
    {
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1206_0")
        if (self.x >= 60)
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1207_0")
        if (self.x >= 180)
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1209_0")
        if (self.x >= 260)
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1212_0")
    }
    if (self.y > 120)
    {
        if (self.x < 160)
        {
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1219_0")
            global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1220_0")
            global.msg[2] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1221_0")
        }
        else
        {
            if (self.read == 0)
            {
                global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1227_0")
                scr_asgface(1, 4)
                global.msg[2] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1229_0")
                global.msg[3] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1230_0")
                global.msg[4] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1231_0")
            }
            if (self.read >= 1)
                global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1235_0")
        }
    }
    if (self.x == 225)
    {
        global.msc = 210
        scr_text(global.msc)
    }
}
if (self.room == room_alphysalley)
{
    if (self.x <= 130)
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1250_0")
    else
    {
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1254_0")
        if (self.y <= 100)
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1257_0")
    }
}
if (self.room == room_town_south)
{
    if (self.x <= 100)
    {
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1266_0")
        global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1267_0")
    }
    if ((self.x > 200) && (self.x < 300))
    {
        if (self.read == 0)
        {
            snd_play(snd_knock)
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1274_0")
            global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1275_0")
            global.msg[2] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1276_0")
            with (obj_town_event)
                self.con = 50
        }
        else
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1281_0")
    }
}
if (self.room == room_town_mid)
{
    if (self.x > 260)
    {
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1291_0")
        global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1292_0")
    }
    if (self.x >= 300)
    {
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1296_0")
        global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1297_0")
    }
    if (self.x >= 360)
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1301_0")
    if (self.x >= 1240)
    {
        snd_play(snd_knock)
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1307_0")
        global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1308_0")
        global.msg[2] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1309_0")
        if (self.x >= 1500)
        {
            global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1312_0")
            global.msg[2] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1313_0")
            global.msg[3] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1314_0")
        }
        if (self.x >= 1640)
        {
            global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1319_0")
            global.msg[2] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1320_0")
        }
        if (self.x >= 1860)
        {
            global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1324_0")
            global.msg[2] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1325_0")
            global.msg[3] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1326_0")
        }
    }
}
if (self.room == room_town_north)
{
    if (self.x <= 250)
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1338_0")
    if ((self.x >= 500) && (self.x <= 570))
    {
        global.fc = 16
        global.typer = 5
        global.fe = 6
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1345_0")
        global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1346_0")
    }
    if (self.x >= 580)
    {
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1350_0")
        global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1351_0")
    }
    if (self.x >= 650)
    {
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1355_0")
        global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1356_0")
    }
    if (self.x >= 800)
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1360_0")
    if ((self.x >= 1090) && (self.x <= 1130))
    {
        snd_play(snd_knock)
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1365_0")
        global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1366_0")
        global.msg[2] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1367_0")
        if (self.read >= 1)
        {
            global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1371_0")
            global.msg[2] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1372_0")
            global.msg[3] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1373_0")
            global.msg[4] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1374_0")
        }
    }
}
if (self.room == room_town_shelter)
    global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1383_0")
self.mydialoguer = instance_create(0, 0, obj_dialoguer)
self.read += 1
