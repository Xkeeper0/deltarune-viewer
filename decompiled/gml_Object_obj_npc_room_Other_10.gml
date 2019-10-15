global.msc = 0
global.typer = 5
if (global.darkzone == 1)
    global.typer = 6
global.fc = 0
global.fe = 0
global.interact = 1
self.image_speed = 0.2
if (global.darkzone == 1)
    self.image_speed = 0.2
global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_11_0"@5905)
if (self.room == room_krisroom)
{
    global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_15_0"@5906)
    global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_16_0"@5907)
}
if (self.room == room_torhouse)
{
    global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_21_0"@5908)
    if (global.plot >= 250)
    {
        global.msc = 455
        scr_text(global.msc)
        global.typer = 7
        global.fc = 4
        global.fe = 0
    }
}
if (self.room == room_alphysclass)
{
    global.msc = 100
    scr_text(global.msc)
    global.fc = 4
}
if (self.room == room_castle_tutorial)
    global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_41_0"@5909)
if (self.room == room_field2)
{
    if (global.flag[501] == 1)
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_48_0"@5910)
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_49_0"@5911)
    }
    if (global.flag[501] == 2)
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_53_0"@5912)
    if (global.flag[501] == 3)
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_57_0"@5913)
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_58_0"@5914)
    }
}
if (self.room == room_field2A)
{
    global.msc = 145
    scr_text(global.msc)
}
if (self.room == room_field_puzzle1)
{
    global.msc = 147
    scr_text(global.msc)
}
if (self.room == room_field_topchef)
{
    if (self.y >= 160)
    {
        self.image_speed = 0.334
        self.normalanim = 2
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_81_0"@5915)
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_82_0"@5916)
        global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_83_0"@5917)
        global.msg[3] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_84_0"@5918)
        scr_ralface(4, 8)
        global.msg[5] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_86_0"@5919)
        global.msg[6] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_87_0"@5920)
        if (self.talked >= 1)
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_90_0"@5921)
        if scr_havechar(2)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_95_0"@5922)
            scr_susface(1, 2)
            global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_97_0"@5923)
            scr_noface(3)
            global.msg[4] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_99_0"@5924)
            scr_susface(5, 2)
            global.msg[6] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_101_0"@5925)
            if (self.talked >= 1)
            {
                global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_104_0"@5926)
                scr_susface(1, 0)
                global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_106_0"@5927)
                scr_ralface(3, 9)
                global.msg[4] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_108_0"@5928)
                scr_susface(5, 2)
                global.msg[6] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_110_0"@5929)
            }
        }
        if scr_itemcheck(6)
        {
            global.msc = 465
            scr_text(global.msc)
        }
        if (global.flag[253] == 1)
        {
            global.msc = 470
            scr_text(global.msc)
        }
    }
    else
    {
        global.msc = 149
        scr_text(global.msc)
    }
}
if (self.room == room_field_maze)
{
    global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_137_0"@5930)
    global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_138_0"@5931)
    global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_139_0"@5932)
    if (global.plot < 37)
    {
        scr_ralface(3, 3)
        global.msg[4] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_143_0"@5933)
    }
    else
        global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_147_0"@5934)
    if (self.talked >= 1)
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_152_0"@5935)
    if scr_havechar(2)
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_157_0"@5936)
        scr_susface(1, 2)
        global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_159_0"@5937)
        if (self.talked >= 1)
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_165_0"@5938)
    }
    if (self.x > 1600)
    {
        global.fc = 5
        global.fe = 0
        global.typer = 32
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_175_0"@5939)
        scr_ralface(1, 1)
        global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_177_0"@5940)
        scr_lanface(3, 2)
        global.msg[4] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_179_0"@5941)
    }
}
if (self.room == room_field_shop1)
{
    global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_186_0"@5942)
    global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_187_0"@5943)
    global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_188_0"@5944)
}
if (self.room == room_field_puzzletutorial)
{
    global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_193_0"@5945)
    global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_194_0"@5946)
    global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_195_0"@5947)
    global.msg[3] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_196_0"@5948)
    if (self.x <= (self.room_width / 2))
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_200_0"@5949)
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_201_0"@5950)
        global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_202_0"@5951)
        if (self.talked >= 1)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_205_0"@5952)
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_206_0"@5953)
        }
    }
    if (self.y >= (self.room_height / 2))
    {
        if (self.x <= (self.room_width / 2))
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_214_0"@5954)
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_215_0"@5955)
            global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_216_0"@5956)
            global.msg[3] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_217_0"@5957)
        }
        else
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_221_0"@5958)
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_222_0"@5959)
            global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_223_0"@5960)
            global.msg[3] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_224_0"@5961)
        }
    }
}
if (self.room == room_field4)
{
    global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_233_0"@5962)
    if scr_havechar(3)
        _temp_local_var_1 = scr_havechar(2)
    else
        _temp_local_var_1 = 0
    if _temp_local_var_1
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_236_0"@5963)
        scr_ralface(1, 8)
        global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_238_0"@5964)
        scr_susface(3, 2)
        global.msg[4] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_240_0"@5965)
        scr_ralface(5, 8)
        global.msg[6] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_242_0"@5966)
        global.msg[7] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_243_0"@5967)
        if (self.talked >= 1)
        {
            scr_ralface(0, 8)
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_248_0"@5968)
            scr_susface(2, 0)
            global.msg[3] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_250_0"@5969)
            scr_ralface(4, 1)
            global.msg[5] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_252_0"@5970)
            scr_susface(6, 7)
            global.msg[7] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_254_0"@5971)
        }
    }
}
if (self.room == room_field_puzzletutorial)
{
    global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_262_0"@5972)
    global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_263_0"@5973)
    global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_264_0"@5974)
    global.msg[3] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_265_0"@5975)
    if (self.talked >= 1)
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_269_0"@5976)
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_270_0"@5977)
    }
}
if (self.room == room_field_checkers7)
{
    if (self.sprite_index == spr_npc_mrelegance)
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_278_0"@5978)
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_279_0"@5979)
        global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_280_0"@5980)
        if (self.talked >= 1)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_284_0"@5981)
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_285_0"@5982)
            global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_286_0"@5983)
        }
    }
    else
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_292_0"@5984)
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_293_0"@5985)
        global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_294_0"@5986)
        if (self.talked >= 1)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_297_0"@5987)
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_298_0"@5988)
            global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_299_0"@5989)
        }
        if (global.plot >= 60)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_304_0"@5990)
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_305_0"@5991)
            global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_306_0"@5992)
        }
    }
}
if (self.room == room_forest_savepoint1)
{
    if (self.sprite_index == spr_npc_puzzlepiece)
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_316_0"@5993)
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_317_0"@5994)
        global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_318_0"@5995)
        global.msg[3] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_319_0"@5996)
        if (global.plot >= 154)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_322_0"@5997)
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_323_0"@5998)
        }
        if (self.talked >= 1)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_327_0"@5999)
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_328_0"@6000)
        }
    }
    if (self.sprite_index == spr_npc_mrelegance)
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_334_0"@6001)
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_335_0"@6002)
        global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_336_0"@6003)
        global.msg[3] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_337_0"@6004)
        if (global.flag[251] == 1)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_340_0"@6005)
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_341_0"@6006)
            global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_342_0"@6007)
        }
        if (global.plot >= 154)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_346_0"@6008)
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_347_0"@6009)
        }
        if (self.talked >= 1)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_352_0"@6010)
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_353_0"@6011)
        }
    }
}
if (self.room == room_forest_area1)
{
    if (self.sprite_index == spr_diamond_overworld)
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_365_0"@6012)
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_366_0"@6013)
        global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_367_0"@6014)
        global.msg[3] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_368_0"@6015)
        if (self.talked >= 1)
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_372_0"@6016)
    }
}
if (self.room == room_forest_area2A)
{
    if (self.x <= (self.room_width / 2))
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_383_0"@6017)
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_384_0"@6018)
        if (global.flag[108] == 1)
            _temp_local_var_2 = (global.flag[233] == 0)
        else
            _temp_local_var_2 = 0
        if _temp_local_var_2
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_388_0"@6019)
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_389_0"@6020)
            global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_390_0"@6021)
            global.msg[3] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_391_0"@6022)
        }
        if (global.flag[108] == 0)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_397_0"@6023)
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_398_0"@6024)
            global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_399_0"@6025)
            global.flag[233] = 1
        }
        if (global.flag[108] == 1)
        {
            if (scr_weaponcheck_inventory(9) == 0)
                _temp_local_var_3 = (global.charweapon[3] != 9)
            else
                _temp_local_var_3 = 0
        }
        else
            _temp_local_var_3 = 0
        if _temp_local_var_3
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_406_0"@6026)
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_407_0"@6027)
        }
        if (self.talked >= 1)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_412_0"@6028)
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_413_0"@6029)
        }
    }
    if (self.x >= (self.room_width / 2))
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_420_0"@6030)
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_421_0"@6031)
    }
}
if (self.room == room_forest_area3)
{
    global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_428_0"@6032)
    global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_429_0"@6033)
    global.flag[236] = 1
}
if (self.room == room_forest_area3A)
{
    global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_436_0"@6034)
    global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_437_0"@6035)
    if (self.talked >= 1)
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_442_0"@6036)
    if (self.x >= (self.room_width / 2))
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_448_0"@6037)
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_449_0"@6038)
        if (self.talked >= 1)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_454_0"@6039)
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_455_0"@6040)
            global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_456_0"@6041)
        }
    }
}
if (self.room == room_forest_savepoint2)
{
    if (self.x < 800)
    {
        global.msc = 325
        scr_text(global.msc)
    }
    if (self.x >= 800)
        _temp_local_var_4 = (self.x <= 880)
    else
        _temp_local_var_4 = 0
    if _temp_local_var_4
    {
        global.msc = 327
        scr_text(global.msc)
    }
    if (self.x >= 920)
    {
        if (global.plot < 80)
        {
            global.msc = 330
            scr_text(global.msc)
        }
        else
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_486_0"@6042)
    }
}
if (self.room == room_forest_area4)
{
    global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_493_0"@6043)
    global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_494_0"@6044)
    global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_495_0"@6045)
    if (self.talked >= 1)
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_498_0"@6046)
}
if (self.room == room_forest_starwalker)
{
    global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_504_0"@6047)
    global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_505_0"@6048)
    global.flag[254] = 1
}
if (self.room == room_forest_savepoint_relax)
{
    global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_511_0"@6049)
    global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_512_0"@6050)
    global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_513_0"@6051)
    global.msg[3] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_514_0"@6052)
    if (self.talked >= 1)
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_515_0"@6053)
    if (global.plot >= 90)
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_519_0"@6054)
    if (self.sprite_index == spr_lancer_dark_relax)
    {
        global.fc = 2
        global.fe = 0
        global.typer = 31
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_527_0"@6055)
        scr_lanface(1, 0)
        global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_529_0"@6056)
        scr_ralface(3, 8)
        global.msg[4] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_531_0"@6057)
        scr_susface(5, 0)
        global.msg[6] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_533_0"@6058)
        scr_ralface(7, 6)
        global.msg[8] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_535_0"@6059)
        scr_lanface(9, 1)
        global.msg[10] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_537_0"@6060)
        global.msg[11] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_538_0"@6061)
        scr_susface(12, 2)
        global.msg[13] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_540_0"@6062)
        if (self.talked >= 1)
        {
            global.fc = 5
            global.fe = 3
            global.typer = 32
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_547_0"@6063)
            scr_susface(1, 2)
            global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_549_0"@6064)
            scr_ralface(3, "A"@366)
            global.msg[4] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_551_0"@6065)
            global.msg[5] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_552_0"@6066)
        }
    }
    if (self.sprite_index == spr_susie_dark_relax)
    {
        global.fc = 2
        global.fe = 6
        global.typer = 31
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_560_0"@6067)
        scr_susface(1, 1)
        global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_562_0"@6068)
        global.msg[3] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_563_0"@6069)
        global.msg[4] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_564_0"@6070)
        scr_lanface(5, 6)
        global.msg[6] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_566_0"@6071)
        global.msg[7] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_567_0"@6072)
        global.msg[8] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_568_0"@6073)
        scr_susface(9, 2)
        global.msg[10] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_570_0"@6074)
        if (self.talked >= 1)
        {
            global.fc = 1
            global.fe = 1
            global.typer = 30
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_577_0"@6075)
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_578_0"@6076)
            scr_lanface(2, 3)
            global.msg[3] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_580_0"@6077)
        }
    }
}
if (self.room == room_forest_fightsusie)
{
    global.typer = 31
    global.fe = 8
    global.fc = 2
    global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_591_0"@6078)
    scr_lanface(1, 3)
    global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_593_0"@6079)
    if (self.talked >= 1)
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_597_0"@6080)
        scr_lanface(1, 3)
        global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_599_0"@6081)
    }
}
if (self.room == room_cc_prison_cells)
{
    global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_606_0"@6082)
    global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_607_0"@6083)
    if (self.talked >= 1)
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_610_0"@6084)
}
if (self.room == room_cc_prison2)
{
    if (self.sprite_index == spr_npc_gouldensam)
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_618_0"@6085)
        if (self.tempvar == 1)
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_619_0"@6086)
        if (self.tempvar == 2)
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_620_0"@6087)
        if (self.tempvar == 3)
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_621_0"@6088)
    }
    if (self.sprite_index == spr_npc_cage_animals)
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_626_0"@6089)
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_627_0"@6090)
        global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_628_0"@6091)
        if (self.talked >= 1)
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_632_0"@6092)
    }
    if (self.sprite_index == spr_npc_cage_king)
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_638_0"@6093)
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_639_0"@6094)
        global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_640_0"@6095)
        if (self.talked >= 1)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_644_0"@6096)
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_645_0"@6097)
        }
    }
    if (self.sprite_index == spr_diamond_overworld)
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_653_0"@6098)
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_654_0"@6099)
        if (global.flag[40] >= 2)
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_659_0"@6100)
    }
    if (self.sprite_index == spr_npc_puzzlepiece_jail)
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_665_0"@6101)
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_666_0"@6102)
    }
}
if (self.room == room_cc_rudinn)
{
    if (self.x <= (self.room_width / 2))
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_675_0"@6103)
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_676_0"@6104)
    }
    else
    {
        if (global.flag[520] == 0)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_682_0"@6105)
            if (global.flag[243] == 3)
            {
                global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_685_0"@6106)
                scr_susface(1, 2)
                global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_687_0"@6107)
                scr_noface(3)
                global.msg[4] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_689_0"@6108)
            }
            if (global.flag[243] == 0)
            {
                global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_694_0"@6109)
                global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_695_0"@6110)
                scr_susface(2, 0)
                global.msg[3] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_697_0"@6111)
                scr_noface(4)
                global.msg[5] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_699_0"@6112)
                global.msg[6] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_700_0"@6113)
                global.msg[7] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_701_0"@6114)
                scr_itemget(13)
                if (self.noroom == 1)
                {
                    scr_ralface(7, 8)
                    global.msg[8] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_706_0"@6115)
                    scr_susface(9, 2)
                    global.msg[10] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_708_0"@6116)
                }
                global.flag[243] = 3
            }
        }
        else
        {
            if (global.flag[243] == 3)
            {
                global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_718_0"@6117)
                global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_719_0"@6118)
            }
            if (global.flag[243] == 2)
                global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_723_0"@6119)
            if (global.flag[243] == 1)
            {
                global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_727_0"@6120)
                global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_728_0"@6121)
                scr_susface(2, 1)
                global.msg[3] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_730_0"@6122)
                global.msg[4] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_731_0"@6123)
            }
            if (global.flag[243] == 0)
            {
                global.msc = 425
                scr_text(global.msc)
            }
        }
    }
}
if (self.room == room_cc_rurus1)
{
    global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_746_0"@6124)
    global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_747_0"@6125)
}
if (self.room == room_cc_hathy)
{
    if (self.x <= (self.room_width / 2))
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_754_0"@6126)
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_755_0"@6127)
    }
    else
    {
        if (global.flag[521] <= 2)
        {
            if (global.flag[244] == 0)
            {
                global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_764_0"@6128)
                if (global.flag[521] > 0)
                {
                    global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_768_0"@6129)
                    scr_ralface(1, 6)
                    global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_770_0"@6130)
                    global.msg[3] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_771_0"@6131)
                    scr_noface(4)
                    global.msg[5] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_773_0"@6132)
                    global.msg[6] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_774_0"@6133)
                    global.flag[43] = (global.flag[43] - global.flag[524])
                    if (global.flag[43] < 0)
                        global.flag[43] = 0
                    self.normal_kills = (global.flag[521] - global.flag[524])
                    global.flag[40] = (global.flag[40] - self.normal_kills)
                    if (global.flag[40] < 0)
                        global.flag[40] = 0
                }
            }
            else
                global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_786_0"@6134)
            global.flag[244] = 1
        }
        else
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_792_0"@6135)
            scr_susface(1, 2)
            global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_794_0"@6136)
            scr_noface(3)
            global.msg[4] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_796_0"@6137)
            scr_susface(5, 6)
            global.msg[6] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_798_0"@6138)
        }
    }
}
if (self.room == room_cc_rurus2)
{
    global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_806_0"@6139)
    global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_807_0"@6140)
}
if (self.room == room_cc_clover)
{
    global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_812_0"@6141)
    global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_813_0"@6142)
    global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_814_0"@6143)
    if (global.flag[522] == 1)
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_817_0"@6144)
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_818_0"@6145)
    }
    if (self.x < 160)
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_823_0"@6146)
    if (self.x > 400)
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_827_0"@6147)
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_828_0"@6148)
        global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_829_0"@6149)
        if (self.talked >= 1)
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_832_0"@6150)
    }
}
if (self.room == room_cc_throneroom)
{
    if (self.y < 300)
    {
        if (self.sprite_index == spr_npc_gouldensam)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_844_0"@6151)
            if (self.tempvar == 1)
                global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_845_0"@6152)
        }
        if (self.sprite_index == spr_npc_cage_animals)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_849_0"@6153)
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_850_0"@6154)
        }
        if (self.sprite_index == spr_npc_cage_king)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_855_0"@6155)
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_856_0"@6156)
        }
    }
    else
    {
        if (self.x < (self.room_width / 2))
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_865_0"@6157)
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_866_0"@6158)
            global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_867_0"@6159)
            if (self.talked >= 1)
            {
                global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_870_0"@6160)
                global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_871_0"@6161)
            }
        }
        else
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_876_0"@6162)
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_877_0"@6163)
            if (global.flag[295] == 1)
            {
                global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_880_0"@6164)
                scr_susface(1, 3)
                global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_882_0"@6165)
                scr_noface(3)
                global.msg[4] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_884_0"@6166)
            }
            if (global.flag[253] == 1)
                _temp_local_var_7 = (global.flag[295] == 0)
            else
                _temp_local_var_7 = 0
            if _temp_local_var_7
            {
                global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_888_0"@6167)
                global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_889_0"@6168)
                global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_890_0"@6169)
                scr_susface(3, 2)
                global.msg[4] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_892_0"@6170)
                scr_noface(5)
                global.msg[6] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_894_0"@6171)
                global.msg[7] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_895_0"@6172)
                scr_susface(8, 5)
                global.msg[9] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_897_0"@6173)
                global.msg[10] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_898_0"@6174)
                global.flag[295] = 1
            }
        }
    }
}
if (self.room == room_cc_preroof)
{
    if (self.x > 180)
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_913_0"@6175)
    if (self.x > 320)
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_917_0"@6176)
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_918_0"@6177)
        if (self.talked >= 1)
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_919_0"@6178)
    }
    if (self.x > 460)
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_923_0"@6179)
        global.msg[1] = (scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_924_0"@6180) + "/"@357)
        global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_925_0"@6181)
    }
    if (self.x > 680)
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_930_0"@6182)
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_931_0"@6183)
        global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_932_0"@6184)
    }
}
if (self.room == room_cc_kingbattle)
{
    if (self.sprite_index == spr_rurus_idle)
    {
        global.fc = 18
        global.fe = 0
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_944_0"@6185)
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_945_0"@6186)
        global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_946_0"@6187)
        global.msg[3] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_947_0"@6188)
        if (self.talked >= 1)
        {
            global.fc = 1
            global.fe = 0
            global.typer = 30
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_955_0"@6189)
            scr_rurusface(1, 3)
            global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_957_0"@6191)
            global.msg[3] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_958_0"@6192)
            scr_susface(4, 0)
            global.msg[5] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_960_0"@6193)
            scr_rurusface(6, 1)
            global.msg[7] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_962_0"@6194)
            scr_susface(8, 2)
            global.msg[9] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_964_0"@6195)
        }
    }
    if (self.y < 160)
    {
        if (self.x == 398)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_972_0"@6196)
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_973_0"@6197)
            global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_974_0"@6198)
        }
        if (self.x == 522)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_978_0"@6199)
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_979_0"@6200)
            if (self.talked >= 1)
                global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_982_0"@6201)
        }
        if (self.x == 740)
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_988_0"@6202)
        if (self.x == 820)
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_992_0"@6203)
        if (self.x == 940)
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_996_0"@6204)
        if (self.x == 1020)
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1000_0"@6205)
        if (self.x > 1140)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1004_0"@6206)
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1005_0"@6207)
            if (global.flag[216] == 1)
                global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1008_0"@6208)
            if (self.talked >= 1)
            {
                global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1013_0"@6209)
                global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1014_0"@6210)
            }
        }
    }
    else
    {
        if (self.x < 900)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1022_0"@6211)
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1023_0"@6212)
            global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1024_0"@6213)
        }
        else
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1028_0"@6214)
    }
}
if (self.room == room_hospital_rudy)
{
    global.typer = 55
    global.fc = 15
    global.fe = 2
    if (global.flag[255] < 2)
        global.msc = 180
    else
        global.msc = 181
    scr_text(global.msc)
}
if (self.room == room_library)
{
    global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1049_0"@6215)
    global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1050_0"@6216)
    if (self.talked >= 1)
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1054_0"@6217)
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1055_0"@6218)
    }
}
if (self.room == room_graveyard)
{
    global.msc = 190
    scr_text(global.msc)
}
if (self.room == room_townhall)
{
    global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1068_0"@6219)
    global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1069_0"@6220)
    global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1070_0"@6221)
    global.msg[3] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1071_0"@6222)
    if (self.talked >= 1)
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1074_0"@6223)
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1075_0"@6224)
    }
    if (self.x > 100)
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1081_0"@6225)
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1082_0"@6226)
        if (self.talked >= 1)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1086_0"@6227)
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1087_0"@6228)
        }
    }
    if (self.x > 200)
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1097_0"@6229)
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1098_0"@6230)
        global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1099_0"@6231)
        if (self.talked >= 1)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1103_0"@6232)
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1104_0"@6233)
        }
    }
}
if (self.room == room_diner)
{
    if (self.sprite_index == spr_npc_cattiwaitress)
    {
        global.fc = 13
        global.fe = 0
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1118_0"@6234)
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1119_0"@6235)
        global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1120_0"@6236)
        global.msg[3] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1121_0"@6237)
        global.msg[4] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1122_0"@6238)
        global.msg[5] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1123_0"@6239)
        global.msg[6] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1124_0"@6240)
        if (self.talked >= 1)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1128_0"@6241)
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1129_0"@6242)
            global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1130_0"@6243)
        }
    }
    if (self.sprite_index == spr_npc_dragonfamily)
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1136_0"@6244)
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1137_0"@6245)
        if (self.talked >= 1)
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1139_0"@6246)
    }
    if (self.x >= 120)
        _temp_local_var_5 = (self.x <= 140)
    else
        _temp_local_var_5 = 0
    if _temp_local_var_5
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1145_0"@6247)
        if (global.flag[261] == 0)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1151_0"@6248)
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1153_0"@6249)
            global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1154_0"@6250)
            global.msg[3] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1155_0"@6251)
            global.msg[4] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1156_0"@6252)
            global.msg[5] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1157_0"@6253)
            global.msg[6] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1158_0"@6254)
            global.msg[7] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1159_0"@6255)
            global.msg[8] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1160_0"@6256)
            global.msg[9] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1161_0"@6257)
            global.msg[10] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1162_0"@6258)
            global.msg[11] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1163_0"@6259)
            global.msg[12] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1164_0"@6260)
            global.msg[13] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1165_0"@6261)
            global.flag[261] = 1
            self.noroom = 0
            scr_litemget(1)
            if (self.noroom == 1)
            {
                global.flag[261] = 2
                global.msg[11] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1172_0"@6262)
                global.msg[12] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1173_0"@6263)
                global.msg[13] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1174_0"@6264)
            }
        }
    }
    if (self.x > 240)
    {
    }
    if (self.y > 140)
    {
        if (self.x > 180)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1198_0"@6265)
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1199_0"@6266)
            if (self.talked >= 1)
                global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1202_0"@6267)
        }
        if (self.x > 260)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1212_0"@6268)
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1213_0"@6269)
            global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1214_0"@6270)
            if (self.talked >= 1)
                global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1217_0"@6271)
        }
    }
    if (self.sprite_index == spr_npc_most_improved_1997)
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1226_0"@6272)
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1227_0"@6273)
        if (self.talked >= 1)
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1231_0"@6274)
    }
    if (self.sprite_index == spr_npc_icewolf)
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1237_0"@6275)
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1238_0"@6276)
        global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1239_0"@6277)
        if (self.talked >= 1)
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1243_0"@6278)
    }
}
if (self.room == room_town_south)
{
    if (self.sprite_index == spr_npc_donutcar)
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1255_0"@6279)
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1256_0"@6280)
    }
    if (self.sprite_index == spr_npc_snailcar)
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1260_0"@6281)
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1261_0"@6282)
        global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1262_0"@6283)
    }
}
if (self.room == room_town_mid)
{
    if (self.sprite_index == spr_npc_burgerpants)
    {
        global.msc = 340
        scr_text(global.msc)
    }
    if (self.sprite_index == spr_mkid_dt)
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1276_0"@6284)
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1277_0"@6285)
        global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1278_0"@6286)
        global.msg[3] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1279_0"@6287)
        global.msg[4] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1280_0"@6288)
        global.msg[5] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1281_0"@6289)
        global.msg[6] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1282_0"@6290)
        global.msg[7] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1283_0"@6291)
        if (self.talked >= 1)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1287_0"@6292)
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1288_0"@6293)
            global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1289_0"@6294)
        }
    }
    if (self.sprite_index == spr_snowy_dt)
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1295_0"@6295)
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1296_0"@6296)
        global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1297_0"@6297)
        global.msg[3] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1298_0"@6298)
    }
}
if (self.room == room_town_north)
{
    if (self.sprite_index == spr_npc_catty)
    {
        global.fc = 16
        global.typer = 5
        global.msc = 215
        scr_text(global.msc)
    }
    if (self.sprite_index == spr_npc_cattydad)
    {
        if (self.talked == 0)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1316_0"@6299)
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1317_0"@6300)
            global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1318_0"@6301)
            global.msg[3] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1319_0"@6302)
        }
        else
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1323_0"@6303)
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1324_0"@6304)
            global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1325_0"@6305)
            global.msg[3] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1326_0"@6306)
        }
    }
    if (self.sprite_index == spr_npc_bratty)
    {
        global.fc = 17
        global.typer = 5
        global.msc = 220
        scr_text(global.msc)
    }
}
if (self.room == room_town_church)
{
    global.msc = 345
    scr_text(global.msc)
}
if (self.room == room_hospital_lobby)
{
    global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1348_0"@6307)
    global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1349_0"@6308)
    if (self.talked >= 1)
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1353_0"@6309)
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1354_0"@6310)
        global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1355_0"@6311)
    }
    if (self.tempvar >= 1)
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1361_0"@6312)
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1362_0"@6313)
    }
}
if (self.room == room_beach)
{
    if (self.sprite_index == spr_npc_rgbun)
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1371_0"@6314)
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1372_0"@6315)
    }
    if (self.sprite_index == spr_npc_rgdragon)
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1376_0"@6316)
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1377_0"@6317)
    }
}
self.remanimspeed = self.image_speed
self.myinteract = 3
self.mydialoguer = instance_create(0, 0, obj_dialoguer)
self.talked = (self.talked + 1)
