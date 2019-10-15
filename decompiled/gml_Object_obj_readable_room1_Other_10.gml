self.myinteract = 3
global.msc = 0
global.typer = 5
if (global.darkzone == 1)
    global.typer = 6
global.fe = 0
global.fc = 0
global.interact = 1
with(obj_darkcontroller)
{
    self.charcon = 0
}
global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_11_0"@5302)
if (self.room == room_krisroom)
{
    if (self.y < 150)
    {
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_17_0"@5303)
        global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_18_0"@5304)
    }
    else
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_22_0"@5305)
    if (self.x > 100)
    {
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_28_0"@5306)
        global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_29_0"@5307)
        if (global.filechoice == 1)
            global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_30_0"@5308)
        if (global.filechoice == 2)
        {
            global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_33_0"@5309)
            global.msg[2] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_34_0"@5310)
        }
        if (self.read > 0)
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_38_0"@5311)
    }
    if (self.x > 136)
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_45_0"@5312)
    if (self.x > 192)
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_50_0"@5313)
    if (self.x > 220)
    {
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_55_0"@5314)
        if (global.tempflag[10] == 1)
            _temp_local_var_1 = (global.plot < 10)
        else
            _temp_local_var_1 = 0
        if _temp_local_var_1
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
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_71_0"@5315)
}
if (self.room == room_krishallway)
{
    global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_79_0"@5316)
    if (self.x > 120)
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_83_0"@5317)
    if (self.x > 160)
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_87_0"@5318)
    if (self.x > 220)
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_91_0"@5319)
    if (self.x > 320)
    {
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_96_0"@5320)
        global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_97_0"@5321)
        global.msg[2] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_98_0"@5322)
        global.msg[3] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_99_0"@5323)
        global.msg[4] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_100_0"@5324)
        if (self.read > 0)
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_103_0"@5325)
    }
}
if (self.room == room_torhouse)
{
    if (self.x > 190)
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_113_0"@5326)
    if (self.x > 220)
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_118_0"@5327)
    if (self.x > 260)
    {
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_123_0"@5328)
        if (global.plot >= 250)
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_126_0"@5329)
    }
    if (self.x > 300)
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_132_0"@5330)
    if (self.x > 340)
    {
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_137_0"@5331)
        if (global.flag[262] >= 4)
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_140_0"@5332)
    }
    if (self.x > 369)
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_146_0"@5333)
    if (self.x > 440)
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_151_0"@5334)
    if (self.x > 560)
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_157_0"@5335)
}
if (self.room == room_torbathroom)
{
    if (self.x >= 100)
    {
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_167_0"@5336)
        global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_168_0"@5337)
    }
    if (self.x >= 160)
        _temp_local_var_2 = (self.x <= 190)
    else
        _temp_local_var_2 = 0
    if _temp_local_var_2
    {
        global.msc = 355
        scr_text(global.msc)
    }
    if (self.x >= 190)
    {
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_177_0"@5338)
        global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_178_0"@5339)
        global.msg[2] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_179_0"@5340)
    }
}
if (self.room == room_schoollobby)
{
    if (self.x >= 140)
        _temp_local_var_3 = (self.x < 240)
    else
        _temp_local_var_3 = 0
    if _temp_local_var_3
    {
        if (self.tempvar == 0)
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_190_0"@5341)
        if (self.tempvar == 1)
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_191_0"@5342)
        if (self.tempvar == 2)
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_192_0"@5343)
        if (self.tempvar == 3)
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_193_0"@5344)
        if (self.tempvar >= 4)
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_194_0"@5345)
        with(obj_readable_room1)
        {
            self.tempvar = (self.tempvar + 1)
        }
    }
    if (self.x == 240)
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_199_0"@5346)
    if (self.x >= 280)
    {
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_204_0"@5347)
        global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_205_0"@5348)
        global.msg[2] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_206_0"@5349)
    }
    if (self.x < 140)
    {
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_211_0"@5350)
        global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_212_0"@5351)
    }
    if (self.x >= 520)
    {
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_217_0"@5352)
        if (self.read == 1)
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_218_0"@5353)
        if (self.read >= 2)
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_219_0"@5354)
        if (global.plot < 10)
        {
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_223_0"@5355)
            scr_susface(1, 1)
            global.msg[2] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_225_0"@5356)
            if (self.read >= 1)
            {
                scr_susface(0, 9)
                global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_230_0"@5357)
            }
        }
    }
    if (self.x >= 560)
    {
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_237_0"@5358)
        global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_238_0"@5359)
        global.msg[2] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_239_0"@5360)
    }
    if (self.x >= 690)
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_245_0"@5361)
    if (self.x == 760)
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_251_0"@5362)
    if (self.x == 780)
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_255_0"@5363)
}
if (self.room == room_alphysclass)
{
    global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_264_0"@5364)
    global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_265_0"@5365)
    if (global.plot >= 250)
    {
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_269_0"@5366)
        global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_270_0"@5367)
    }
    if (self.x > 240)
    {
        global.fe = 1
        global.fc = 11
        global.typer = 20
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_278_0"@5368)
        global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_279_0"@5369)
    }
    if (self.x < 200)
    {
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_284_0"@5370)
        global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_285_0"@5371)
        if (global.plot >= 250)
        {
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_289_0"@5372)
            global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_290_0"@5373)
        }
    }
    if (self.x < 150)
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_298_0"@5374)
    if (self.x < 80)
    {
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_304_0"@5375)
        global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_305_0"@5376)
        global.msg[2] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_306_0"@5377)
    }
}
if (self.room == room_torielclass)
{
    if (self.y <= (self.room_height / 2))
    {
        if (self.x >= 100)
        {
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_318_0"@5378)
            global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_319_0"@5379)
        }
        if (self.x >= 130)
        {
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_323_0"@5380)
            global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_324_0"@5381)
        }
        if (self.x >= 170)
        {
            global.msc = 350
            scr_text(global.msc)
        }
        if (self.x >= 198)
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_333_0"@5382)
        if (self.x >= 204)
        {
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_338_0"@5383)
            global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_339_0"@5384)
        }
        if (self.x >= 230)
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_343_0"@5385)
        if (self.x >= 256)
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_347_0"@5386)
    }
    else
    {
        if (self.x <= (self.room_width / 2))
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_354_0"@5387)
        else
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_358_0"@5388)
    }
}
if (self.room == room_schooldoor)
    global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_366_0"@5389)
if (self.room == room_school_unusedroom)
{
    if (self.x < 80)
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_371_0"@5390)
    if (self.x > 100)
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_372_0"@5391)
    if (self.x > 160)
        _temp_local_var_4 = (self.y < 100)
    else
        _temp_local_var_4 = 0
    if _temp_local_var_4
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_373_0"@5392)
    if (self.x > 160)
        _temp_local_var_5 = (self.y > 100)
    else
        _temp_local_var_5 = 0
    if _temp_local_var_5
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_374_0"@5393)
    if (self.x > 220)
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_375_0"@5394)
    if (self.x > 250)
    {
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_378_0"@5395)
        global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_379_0"@5396)
    }
}
if (self.room == room_hospital_lobby)
{
    if (self.x <= 160)
    {
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_388_0"@5397)
        global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_389_0"@5398)
    }
    if (self.x >= 160)
    {
        global.msc = 360
        scr_text(global.msc)
    }
}
if (self.room == room_dark2)
    _temp_local_var_6 = 1
else
{
    if (self.room == room_dark3)
        _temp_local_var_6 = 1
    else
        _temp_local_var_6 = (self.room == room_dark7)
}
if _temp_local_var_6
    global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_400_0"@5399)
if (self.room == room_dark3a)
{
    global.msc = 110
    scr_text(110)
}
if (self.room == room_dark_eyepuzzle)
    global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_411_0"@5400)
if (self.room == room_castle_town)
{
    global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_416_0"@5401)
    if (self.read >= 1)
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_419_0"@5402)
    with(obj_readable_room1)
    {
        self.read = (self.read + 1)
    }
}
if (self.room == room_castle_front)
{
    global.typer = 31
    global.fc = 2
    global.fe = 0
    global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_429_0"@5403)
    global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_430_0"@5404)
    global.msg[2] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_431_0"@5405)
    if (self.read > 0)
    {
        global.fe = 1
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_435_0"@5406)
        global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_436_0"@5407)
    }
}
if (self.room == room_castle_outskirts)
{
    global.typer = 31
    global.fc = 2
    global.fe = 1
    global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_446_0"@5408)
    global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_447_0"@5409)
}
if (self.room == room_field_puzzle1)
    global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_452_0"@5410)
if (self.room == room_field_shop1)
{
    global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_457_0"@5411)
    global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_458_0"@5412)
}
if (self.room == room_field_checkers1)
    _temp_local_var_7 = 1
else
{
    if (self.room == room_field_checkers4)
        _temp_local_var_7 = 1
    else
        _temp_local_var_7 = (self.room == room_field_checkers6)
}
if _temp_local_var_7
    global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_465_0"@5413)
if (self.room == room_field_puzzletutorial)
{
    global.msc = 250
    scr_text(global.msc)
}
if (self.room == room_field_checkers5)
    global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_476_0"@5414)
if (self.room == room_forest_area3)
{
    global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_481_0"@5415)
    global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_482_0"@5416)
    global.msg[2] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_483_0"@5417)
    if (self.read >= 1)
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_486_0"@5418)
    if (self.y >= 400)
    {
        if (self.x < 600)
        {
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_493_0"@5419)
            global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_494_0"@5420)
            global.msg[2] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_495_0"@5421)
            global.msg[3] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_496_0"@5422)
            if (self.read >= 1)
                global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_499_0"@5423)
        }
        else
        {
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_504_0"@5424)
            global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_505_0"@5425)
            global.msg[2] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_506_0"@5426)
            if (self.x >= 1100)
            {
                global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_510_0"@5427)
                global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_511_0"@5428)
                global.msg[2] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_512_0"@5429)
            }
        }
        if (global.plot >= 75)
        {
            self.holecon = 999
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_519_0"@5430)
        }
    }
}
if (self.room == room_forest_area5)
{
    if (self.x <= 340)
    {
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_530_0"@5431)
        global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_531_0"@5432)
    }
    if (self.x >= 600)
        _temp_local_var_8 = (self.x <= 1300)
    else
        _temp_local_var_8 = 0
    if _temp_local_var_8
    {
        if (global.flag[237] == 0)
        {
            global.flag[237] = 1
            snd_play(snd_screenshake)
            instance_create(0, 0, obj_shake)
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_540_0"@5433)
            global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_541_0"@5434)
            if (obj_mainchara.becamebattle == 0)
            {
                global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_544_0"@5436)
                global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_545_0"@5437)
                scr_ralface(2, 1)
                global.msg[3] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_547_0"@5438)
                global.msg[4] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_548_0"@5439)
            }
            with(obj_tempblock_room)
            {
                with(self.tree)
                {
                    instance_destroy()
                }
                with(self.block)
                {
                    instance_destroy()
                }
                with(self.talkto)
                {
                    instance_destroy()
                }
            }
        }
        else
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_559_0"@5441)
    }
    if (self.x >= 1350)
    {
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_564_0"@5442)
        global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_565_0"@5443)
    }
}
if (self.room == room_forest_starwalker)
{
    global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_571_0"@5444)
    if (self.read == 0)
    {
        snd_play(snd_item)
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_575_0"@5445)
        global.gold = (global.gold + 40)
    }
    self.read = (self.read + 1)
}
if (self.room == room_cc_prison_cells)
{
    global.flag[231] = (global.flag[231] + 1)
    if (self.x < 400)
    {
        global.fc = 2
        global.typer = 31
        global.fe = 0
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_591_0"@5446)
        scr_susface(1, 7)
        global.msg[2] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_593_0"@5447)
    }
    if (self.x >= 600)
        _temp_local_var_9 = (self.y < 200)
    else
        _temp_local_var_9 = 0
    if _temp_local_var_9
    {
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_598_0"@5448)
        global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_599_0"@5449)
        if (self.read >= 1)
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_602_0"@5450)
    }
    if (self.x >= 600)
        _temp_local_var_10 = (self.y > 200)
    else
        _temp_local_var_10 = 0
    if _temp_local_var_10
    {
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_608_0"@5451)
        global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_609_0"@5452)
        if (self.read >= 1)
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_610_0"@5453)
        if (global.plot >= 155)
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_613_0"@5454)
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
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_626_0"@5455)
            global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_627_0"@5456)
            if (global.flag[106] == 1)
                global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_628_0"@5457)
        }
    }
}
if (self.room == room_field_boxpuzzle)
{
    global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_636_0"@5458)
    global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_637_0"@5459)
}
if (self.room == room_forest_thrashmaker)
{
    global.fc = 2
    global.fe = 5
    global.typer = 31
    global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_647_0"@5460)
    global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_648_0"@5461)
    if scr_havechar(2)
    {
        global.fc = 1
        global.fe = 0
        global.typer = 30
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_654_0"@5462)
        scr_ralface(1, 1)
        global.msg[2] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_656_0"@5463)
        scr_susface(3, 2)
        global.msg[4] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_658_0"@5464)
    }
}
if (self.room == room_forest_area1)
    global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_666_0"@5465)
if (self.room == room_man)
{
    if (self.y >= 220)
    {
        if (global.flag[910] < 2)
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_673_0"@5466)
        else
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_675_0"@5467)
    }
    else
    {
        if (global.flag[910] >= 2)
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_682_0"@5468)
        else
        {
            global.msc = 600
            scr_text(global.msc)
        }
    }
}
if (self.room == room_cc_throneroom)
{
    global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_695_0"@5469)
    if (self.y >= 260)
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_698_0"@5470)
}
if (self.room == room_cc_prison_prejoker)
{
    global.facing = 1
    with(obj_caterpillarchara)
    {
        self.sprite_index = self.rsprite
    }
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
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_721_0"@5471)
    if (self.x < 1300)
        _temp_local_var_11 = (self.x > 500)
    else
        _temp_local_var_11 = 0
    if _temp_local_var_11
    {
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_726_0"@5472)
        global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_727_0"@5473)
        if (global.flag[240] == 1)
        {
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_730_0"@5474)
            global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_731_0"@5475)
        }
    }
    if (self.x > 1300)
    {
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_738_0"@5476)
        global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_739_0"@5477)
    }
}
if (self.room == room_cc_rudinn)
{
    global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_746_0"@5478)
    if (self.y < 130)
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_749_0"@5479)
}
if (self.room == room_cc_2f)
{
    global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_755_0"@5480)
    if (self.y < 250)
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_758_0"@5481)
}
if (self.room == room_cc_rurus1)
{
    global.fc = 18
    global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_766_0"@5482)
    global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_767_0"@5483)
    global.msg[2] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_768_0"@5484)
    if (self.read >= 1)
    {
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_772_0"@5485)
        global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_773_0"@5486)
        global.msg[2] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_774_0"@5487)
        global.msg[3] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_775_0"@5488)
    }
}
if (self.room == room_cc_rurus2)
{
    global.fc = 18
    global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_782_0"@5489)
    global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_783_0"@5490)
    global.msg[2] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_784_0"@5491)
    if (self.read >= 1)
    {
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_788_0"@5492)
        global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_789_0"@5493)
    }
}
if (self.room == room_cc_6f)
{
    global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_796_0"@5494)
    if (self.read >= 1)
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_799_0"@5495)
}
if (self.room == room_cc_hathy)
{
    global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_805_0"@5496)
    global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_806_0"@5497)
    if (self.read == 0)
    {
        with(obj_readable_room1)
        {
            if (global.flag[252] == 0)
                self.tempvar = (self.tempvar + 1)
        }
    }
    if (self.tempvar == 4)
        _temp_local_var_12 = (global.flag[252] == 0)
    else
        _temp_local_var_12 = 0
    if _temp_local_var_12
    {
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_815_0"@5498)
        global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_816_0"@5499)
        global.flag[252] = 1
        with(obj_readable_room1)
        {
            self.tempvar = 99
        }
    }
}
if (self.room == room_cc_clover)
{
    global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_824_0"@5500)
    if (self.x > (self.room_width / 2))
    {
        if (self.y < (self.room_height / 2))
        {
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_829_0"@5501)
            if (self.read >= 1)
            {
                global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_832_0"@5502)
                global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_833_0"@5503)
            }
        }
        else
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_838_0"@5504)
    }
}
if (self.room == room_cc_lancer)
{
    if (self.y <= 220)
    {
        if (self.x < 200)
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_849_0"@5505)
        if (self.x > 300)
            _temp_local_var_13 = (self.x < 350)
        else
            _temp_local_var_13 = 0
        if _temp_local_var_13
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_853_0"@5506)
        if (self.x > 350)
            _temp_local_var_14 = (self.x < 400)
        else
            _temp_local_var_14 = 0
        if _temp_local_var_14
        {
            global.msc = 430
            scr_text(global.msc)
        }
        if (self.x >= 400)
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_862_0"@5507)
    }
    else
    {
        if (self.x < 200)
        {
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_869_0"@5508)
            global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_870_0"@5509)
        }
        if (self.x > 250)
            _temp_local_var_31 = (self.x < 320)
        else
            _temp_local_var_31 = 0
        if _temp_local_var_31
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_874_0"@5510)
        if (self.x > 320)
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_878_0"@5511)
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
    global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_898_0"@5512)
    global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_899_0"@5513)
    if (self.x >= 560)
    {
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_902_0"@5514)
        if scr_havechar(2)
            _temp_local_var_15 = scr_havechar(3)
        else
            _temp_local_var_15 = 0
        if _temp_local_var_15
        {
            global.fe = 0
            global.fc = 2
            global.typer = 31
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_908_0"@5515)
            global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_909_0"@5516)
            scr_susface(2, 7)
            global.msg[3] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_911_0"@5517)
            global.msg[4] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_912_0"@5518)
            scr_ralface(5, 6)
            global.msg[6] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_914_0"@5519)
            scr_susface(7, 2)
            global.msg[8] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_916_0"@5520)
            global.msg[9] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_917_0"@5521)
            if (self.read >= 1)
            {
                global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_920_0"@5522)
                scr_susface(1, 2)
                global.msg[2] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_922_0"@5523)
            }
        }
    }
}
if (self.room == room_hospital_rudy)
{
    if (self.x <= 75)
        _temp_local_var_16 = (self.y < 160)
    else
        _temp_local_var_16 = 0
    if _temp_local_var_16
    {
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_932_0"@5524)
        scr_rudface(1, 0)
        global.msg[2] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_934_0"@5525)
        global.msg[3] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_935_0"@5526)
        global.msg[4] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_936_0"@5527)
        global.msg[5] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_937_0"@5528)
        if (self.read >= 1)
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_940_0"@5529)
    }
    if (self.x <= 75)
        _temp_local_var_17 = (self.y > 160)
    else
        _temp_local_var_17 = 0
    if _temp_local_var_17
    {
        if (global.flag[255] < 2)
        {
            global.typer = 55
            global.fc = 15
            global.fe = 4
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_952_0"@5530)
            global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_953_0"@5531)
        }
        else
        {
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_957_0"@5532)
            scr_rudface(1, 2)
            global.msg[2] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_959_0"@5533)
        }
    }
    if (self.x >= 95)
        _temp_local_var_18 = (self.x <= 105)
    else
        _temp_local_var_18 = 0
    if _temp_local_var_18
    {
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_969_0"@5534)
        scr_rudface(1, 2)
        global.msg[2] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_971_0"@5535)
        if (self.read >= 1)
        {
            scr_rudface(1, 2)
            global.msg[2] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_975_0"@5536)
            global.msg[3] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_976_0"@5537)
        }
    }
    if (self.x == 205)
    {
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_982_0"@5538)
        scr_rudface(1, 4)
        global.msg[2] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_984_0"@5539)
        global.msg[3] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_985_0"@5540)
        global.msg[4] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_986_0"@5541)
        if (self.read >= 1)
        {
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_989_0"@5542)
            scr_rudface(1, 0)
            global.msg[2] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_991_0"@5543)
            global.msg[3] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_992_0"@5544)
        }
    }
    if (self.x > 215)
    {
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_999_0"@5545)
        scr_rudface(1, 0)
        global.msg[2] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1001_0"@5546)
        global.msg[3] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1002_0"@5547)
        global.msg[4] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1003_0"@5548)
    }
    if (self.x > 230)
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1011_0"@5549)
}
if (self.room == room_hospital_hallway)
    global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1017_0"@5550)
if (self.room == room_hospital_room2)
{
    if (self.y >= 160)
    {
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1024_0"@5551)
        if (self.tempvar >= 1)
        {
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1027_0"@5552)
            global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1028_0"@5553)
        }
        with(obj_readable_room1)
        {
            if (self.y >= 160)
                self.tempvar = (self.tempvar + 1)
        }
    }
    else
    {
        if (self.x <= 140)
        {
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1041_0"@5554)
            global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1042_0"@5555)
        }
        if (self.x >= 150)
        {
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1046_0"@5556)
            global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1047_0"@5557)
        }
        if (self.x >= 200)
        {
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1051_0"@5558)
            global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1052_0"@5559)
        }
    }
}
if (self.room == room_library)
{
    if (self.x < 80)
    {
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1063_0"@5560)
        global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1064_0"@5561)
        if (self.y > 80)
        {
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1069_0"@5562)
            global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1070_0"@5563)
            global.msg[2] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1071_0"@5564)
            global.msg[3] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1072_0"@5565)
        }
    }
    if (self.x > 70)
    {
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1080_0"@5566)
        global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1081_0"@5567)
        if (self.y > 80)
        {
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1085_0"@5568)
            global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1086_0"@5569)
        }
    }
    if (self.x > 110)
    {
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1093_0"@5570)
        global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1094_0"@5571)
        global.msg[2] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1095_0"@5572)
        global.msg[3] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1096_0"@5573)
        global.msg[4] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1097_0"@5574)
        global.msg[5] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1098_0"@5575)
        if (self.read >= 1)
        {
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1102_0"@5576)
            global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1103_0"@5577)
            global.msg[2] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1104_0"@5578)
            global.msg[3] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1105_0"@5579)
        }
    }
    if (self.x > 150)
    {
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1111_0"@5580)
        global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1112_0"@5581)
    }
    if (self.x > 190)
    {
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1117_0"@5582)
        global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1118_0"@5583)
        global.msg[2] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1119_0"@5584)
    }
    if (self.x > 220)
    {
        global.msc = 185
        scr_text(global.msc)
    }
}
if (self.room == room_graveyard)
{
    global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1134_0"@5585)
    if (self.x >= 150)
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1137_0"@5586)
    if (self.x >= 200)
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1141_0"@5587)
    if (self.x >= 290)
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1145_0"@5588)
}
if (self.room == room_townhall)
{
    if (self.x >= 180)
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1158_0"@5589)
    if (self.x >= 240)
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1163_0"@5590)
    if (self.y >= 160)
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1166_0"@5591)
}
if (self.room == room_beach)
{
    global.msc = 192
    scr_text(global.msc)
}
if (self.room == room_diner)
    global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1178_0"@5592)
if (self.room == room_flowershop_1f)
{
    if (self.y > 100)
    {
        if (self.x < 100)
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1185_0"@5593)
        if (self.x < 70)
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1186_0"@5594)
        if (self.x < 50)
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1187_0"@5595)
    }
    if (self.y < 80)
    {
        if (self.x == 140)
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1192_0"@5596)
        if (self.x != 140)
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1193_0"@5597)
    }
}
if (self.room == room_flowershop_2f)
{
    if (self.y < 50)
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1202_0"@5598)
    if (self.y > 60)
    {
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1206_0"@5599)
        if (self.x >= 60)
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1207_0"@5600)
        if (self.x >= 180)
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1209_0"@5601)
        if (self.x >= 260)
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1212_0"@5602)
    }
    if (self.y > 120)
    {
        if (self.x < 160)
        {
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1219_0"@5603)
            global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1220_0"@5604)
            global.msg[2] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1221_0"@5605)
        }
        else
        {
            if (self.read == 0)
            {
                global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1227_0"@5606)
                scr_asgface(1, 4)
                global.msg[2] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1229_0"@5607)
                global.msg[3] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1230_0"@5608)
                global.msg[4] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1231_0"@5609)
            }
            if (self.read >= 1)
                global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1235_0"@5610)
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
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1250_0"@5611)
    else
    {
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1254_0"@5612)
        if (self.y <= 100)
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1257_0"@5613)
    }
}
if (self.room == room_town_south)
{
    if (self.x <= 100)
    {
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1266_0"@5614)
        global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1267_0"@5615)
    }
    if (self.x > 200)
        _temp_local_var_19 = (self.x < 300)
    else
        _temp_local_var_19 = 0
    if _temp_local_var_19
    {
        if (self.read == 0)
        {
            snd_play(snd_knock)
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1274_0"@5616)
            global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1275_0"@5617)
            global.msg[2] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1276_0"@5618)
            with(obj_town_event)
            {
                self.con = 50
            }
        }
        else
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1281_0"@5619)
    }
}
if (self.room == room_town_mid)
{
    if (self.x > 260)
    {
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1291_0"@5620)
        global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1292_0"@5621)
    }
    if (self.x >= 300)
    {
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1296_0"@5622)
        global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1297_0"@5623)
    }
    if (self.x >= 360)
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1301_0"@5624)
    if (self.x >= 1240)
    {
        snd_play(snd_knock)
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1307_0"@5625)
        global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1308_0"@5626)
        global.msg[2] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1309_0"@5627)
        if (self.x >= 1500)
        {
            global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1312_0"@5628)
            global.msg[2] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1313_0"@5629)
            global.msg[3] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1314_0"@5630)
        }
        if (self.x >= 1640)
        {
            global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1319_0"@5631)
            global.msg[2] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1320_0"@5632)
        }
        if (self.x >= 1860)
        {
            global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1324_0"@5633)
            global.msg[2] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1325_0"@5634)
            global.msg[3] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1326_0"@5635)
        }
    }
}
if (self.room == room_town_north)
{
    if (self.x <= 250)
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1338_0"@5636)
    if (self.x >= 500)
        _temp_local_var_20 = (self.x <= 570)
    else
        _temp_local_var_20 = 0
    if _temp_local_var_20
    {
        global.fc = 16
        global.typer = 5
        global.fe = 6
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1345_0"@5637)
        global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1346_0"@5638)
    }
    if (self.x >= 580)
    {
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1350_0"@5639)
        global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1351_0"@5640)
    }
    if (self.x >= 650)
    {
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1355_0"@5641)
        global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1356_0"@5642)
    }
    if (self.x >= 800)
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1360_0"@5643)
    if (self.x >= 1090)
        _temp_local_var_21 = (self.x <= 1130)
    else
        _temp_local_var_21 = 0
    if _temp_local_var_21
    {
        snd_play(snd_knock)
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1365_0"@5644)
        global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1366_0"@5645)
        global.msg[2] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1367_0"@5646)
        if (self.read >= 1)
        {
            global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1371_0"@5647)
            global.msg[2] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1372_0"@5648)
            global.msg[3] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1373_0"@5649)
            global.msg[4] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1374_0"@5650)
        }
    }
}
if (self.room == room_town_shelter)
    global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1383_0"@5651)
self.mydialoguer = instance_create(0, 0, obj_dialoguer)
self.read = (self.read + 1)
