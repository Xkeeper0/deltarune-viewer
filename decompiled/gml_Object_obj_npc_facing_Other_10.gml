global.msc = 0
global.typer = 5
if (global.darkzone == 1)
    global.typer = 6
global.fc = 0
global.fe = 0
global.interact = 1
self.image_speed = 0.2
if (global.darkzone == 1)
    self.image_speed = 0.1
global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_10_0"@5658)
if (self.room == room_alphysclass)
{
    if (self.utsprite == 130)
    {
        global.msc = 100
        if (self.talked > 0)
            global.msc = 102
        scr_text(global.msc)
        global.fe = 0
        global.fc = 3
        global.typer = 12
        if (global.plot >= 3)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_29_0"@5659)
            global.msg[1] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_30_0"@5660)
            global.msg[2] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_31_0"@5661)
            if (self.talked >= 1)
            {
                global.typer = 23
                global.fe = 3
                global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_37_0"@5662)
            }
        }
    }
    if (self.utsprite == 134)
    {
        global.fc = 12
        global.fe = 1
        global.typer = 13
        global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_48_0"@5663)
        global.msg[1] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_49_0"@5664)
        global.msg[2] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_50_0"@5665)
        global.msg[3] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_51_0"@5666)
        global.msg[4] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_52_0"@5667)
        global.msg[5] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_53_0"@5668)
        if (self.talked > 0)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_57_0"@5669)
            global.msg[1] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_58_0"@5670)
        }
        if (global.plot >= 3)
        {
            global.fe = 3
            global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_65_0"@5671)
            global.msg[1] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_66_0"@5672)
            global.msg[2] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_67_0"@5673)
            if (self.talked > 0)
                global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_71_0"@5674)
        }
    }
    if (self.utsprite == 148)
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_81_0"@5675)
        global.msg[1] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_82_0"@5676)
        global.msg[2] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_83_0"@5677)
        global.msg[3] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_84_0"@5678)
        if (self.talked > 0)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_88_0"@5679)
            global.msg[1] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_89_0"@5680)
            global.msg[2] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_90_0"@5681)
        }
        if (global.plot >= 3)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_96_0"@5682)
            global.msg[1] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_97_0"@5683)
            global.msg[2] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_98_0"@5684)
            global.msg[3] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_99_0"@5685)
            global.msg[4] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_100_0"@5686)
            if (self.talked > 0)
                global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_104_0"@5687)
        }
    }
    if (self.utsprite == 152)
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_114_0"@5688)
        global.msg[1] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_115_0"@5689)
        global.msg[2] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_116_0"@5690)
        if (self.talked > 0)
            global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_120_0"@5691)
        if (global.plot >= 3)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_126_0"@5692)
            global.msg[1] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_127_0"@5693)
            global.msg[2] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_128_0"@5694)
            if (self.talked > 0)
                global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_132_0"@5695)
        }
    }
    if (self.utsprite == 139)
    {
        global.fc = 13
        global.fe = 0
        global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_145_0"@5696)
        global.msg[1] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_146_0"@5697)
        if (global.plot >= 3)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_150_0"@5698)
            global.msg[1] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_151_0"@5699)
        }
    }
    if (self.utsprite == 140)
    {
        global.fc = 14
        global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_159_0"@5700)
        global.msg[1] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_160_0"@5701)
        global.msg[2] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_161_0"@5702)
        global.msg[3] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_162_0"@5703)
        if (self.talked > 0)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_166_0"@5704)
            global.msg[1] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_167_0"@5705)
        }
        if (global.plot >= 3)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_174_0"@5706)
            global.msg[1] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_175_0"@5707)
        }
    }
    if (self.utsprite == 120)
    {
        global.fc = 11
        global.typer = 20
        global.fe = 3
        global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_185_0"@5708)
        global.msg[1] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_186_0"@5709)
        global.msg[2] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_187_0"@5710)
        global.msg[3] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_188_0"@5711)
        if (self.talked > 0)
        {
            global.fe = 7
            global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_192_0"@5712)
        }
        if (global.plot >= 3)
        {
            global.fe = 5
            global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_198_0"@5713)
        }
    }
}
if (self.room == room_field2)
{
    global.fc = 5
    global.fe = 0
    global.typer = 32
    global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_210_0"@5714)
    global.msg[1] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_211_0"@5715)
    scr_ralface(2, "A"@366)
    global.msg[3] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_213_0"@5716)
    scr_lanface(4, 3)
    global.msg[5] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_215_0"@5717)
    global.msg[6] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_216_0"@5718)
    scr_ralface(7, 3)
    global.msg[8] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_218_0"@5719)
    scr_lanface(9, 1)
    global.msg[10] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_220_0"@5720)
    global.msg[11] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_221_0"@5721)
    scr_ralface(12, 9)
    global.msg[13] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_223_0"@5722)
    if (global.flag[210] == 1)
    {
        global.fc = 2
        global.fe = 11
        global.typer = 31
        global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_230_0"@5723)
        global.msg[1] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_231_0"@5724)
        scr_lanface(2, 7)
        global.msg[3] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_233_0"@5725)
    }
    if (global.flag[210] == 2)
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_239_0"@5726)
        scr_ralface(1, 8)
        global.msg[2] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_241_0"@5727)
        scr_lanface(3, 3)
        global.msg[4] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_243_0"@5728)
        global.msg[5] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_244_0"@5729)
        scr_ralface(6, "A"@366)
        global.msg[7] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_246_0"@5730)
    }
    if (global.flag[210] == 0)
        global.flag[210] = 1
}
if (self.room == room_field_boxpuzzle)
{
    global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_257_0"@5731)
    if (self.type == 0)
    {
        global.typer = 31
        global.fc = 2
        global.fe = 0
        if (global.flag[212] == 1)
        {
            self.input_name = scr_get_input_name(4)
            global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_269_0"@5732)
            global.msg[1] = scr_84_get_subst_string(scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_270_0"@5733), self.input_name)
            scr_susface(2, 9)
            global.msg[3] = scr_84_get_subst_string(scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_272_0"@5734), self.input_name)
            if (self.talked >= 1)
            {
                global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_276_0"@5735), self.input_name)
                scr_susface(1, 2)
                global.msg[2] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_278_0"@5736)
            }
        }
    }
    else
    {
        global.typer = 30
        global.fc = 1
        global.fe = 0
        if (global.flag[212] == 1)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_295_0"@5737)
            global.msg[1] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_296_0"@5738)
        }
    }
}
if (self.room == room_cc_prison_cells)
{
    global.typer = 31
    global.fc = 2
    global.fe = 1
    global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_307_0"@5739)
    global.msg[1] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_308_0"@5740)
    if (self.talked >= 1)
        global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_312_0"@5741)
    if (global.flag[231] >= 3)
    {
        self.shack = 0
        self.moss = 0
        if (global.chararmor1[1] == 5)
            _temp_local_var_1 = 1
        else
            _temp_local_var_1 = global.chararmor2[1]
        if _temp_local_var_1
            self.shack = 1
        if (global.flag[106] == 1)
            self.moss = 1
        with(obj_prisonevent)
        {
            self.con = 15
        }
        global.fe = 0
        global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_323_0"@5744)
        global.msg[1] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_324_0"@5745)
        if (self.moss == 1)
        {
            global.msg[1] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_328_0"@5746)
            global.msg[2] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_329_0"@5747)
            global.msg[3] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_330_0"@5748)
            global.msg[4] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_331_0"@5749)
        }
        if (self.shack == 1)
        {
            global.msg[1] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_337_0"@5750)
            global.msg[2] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_338_0"@5751)
            global.msg[3] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_339_0"@5752)
            global.msg[4] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_340_0"@5753)
            global.msg[5] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_341_0"@5754)
        }
        if (self.moss == 1)
            _temp_local_var_2 = (self.shack == 1)
        else
            _temp_local_var_2 = 0
        if _temp_local_var_2
        {
            global.msg[1] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_348_0"@5755)
            global.msg[2] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_349_0"@5756)
            global.msg[3] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_350_0"@5757)
            global.msg[4] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_351_0"@5758)
            global.msg[5] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_352_0"@5759)
        }
    }
}
if (self.room == room_forest_area1)
{
    if (global.flag[232] == 0)
    {
        global.typer = 31
        global.fc = 2
        global.fe = 0
        global.msc = 255
        scr_text(global.msc)
    }
    else
    {
        global.typer = 30
        global.fc = 1
        global.fe = 0
        global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_375_0"@5760)
        global.msg[1] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_376_0"@5761)
        global.msg[2] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_377_0"@5762)
        scr_ralface(3, 6)
        global.msg[4] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_379_0"@5763)
        scr_lanface(5, 2)
        global.msg[6] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_381_0"@5764)
        global.msg[7] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_382_0"@5765)
        scr_susface(8, 2)
        global.msg[9] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_384_0"@5766)
        if (self.x >= 1160)
        {
            global.typer = 32
            global.fc = 5
            global.fe = 3
            global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_392_0"@5767)
            scr_susface(1, 2)
            global.msg[2] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_394_0"@5768)
        }
    }
}
if (self.room == room_forest_puzzle1)
{
    global.typer = 30
    global.fc = 1
    global.fe = 1
    global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_406_0"@5769)
    scr_lanface(1, 3)
    global.msg[2] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_408_0"@5770)
    scr_susface(3, 2)
    global.msg[4] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_410_0"@5771)
    scr_ralface(5, 0)
    global.msg[6] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_412_0"@5772)
    scr_susface(7, 7)
    global.msg[8] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_414_0"@5773)
    if (self.talked >= 1)
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_419_0"@5774)
        global.msg[1] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_420_0"@5775)
        global.msg[2] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_421_0"@5776)
        scr_lanface(3, 3)
        global.msg[4] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_423_0"@5777)
        scr_susface(5, 2)
        global.msg[6] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_425_0"@5778)
        scr_ralface(7, 0)
        global.msg[8] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_427_0"@5779)
        global.msg[9] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_428_0"@5780)
        scr_lanface(10, 3)
        global.msg[11] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_430_0"@5781)
        scr_ralface(12, 9)
        global.msg[13] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_432_0"@5782)
    }
    if (self.talked < -50)
    {
        global.fe = 2
        global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_438_0"@5783)
        scr_lanface(1, 2)
        global.msg[2] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_440_0"@5784)
        scr_ralface(3, 9)
        global.msg[4] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_442_0"@5785)
        scr_susface(5, 2)
        global.msg[6] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_444_0"@5786)
    }
    if (self.dtsprite == 211)
    {
        global.typer = 32
        global.fc = 5
        global.fe = 0
        global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_452_0"@5787)
        global.msg[1] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_453_0"@5788)
        scr_susface(2, 2)
        global.msg[3] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_455_0"@5789)
        scr_lanface(4, 6)
        global.msg[5] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_457_0"@5790)
        global.msg[6] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_458_0"@5791)
    }
}
if (self.room == room_forest_area3)
{
    global.typer = 31
    global.fc = 2
    global.fe = 6
    global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_470_0"@5792)
    scr_susface(1, 0)
    global.msg[2] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_472_0"@5793)
    scr_ralface(3, 0)
    global.msg[4] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_474_0"@5794)
    scr_susface(5, 2)
    global.msg[6] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_476_0"@5795)
    scr_lanface(7, 3)
    global.msg[8] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_478_0"@5796)
    scr_susface(9, 6)
    global.msg[10] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_480_0"@5797)
    if (self.talked >= 1)
    {
        global.typer = 31
        global.fc = 2
        global.fe = 0
        global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_489_0"@5798)
        global.msg[1] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_490_0"@5799)
        scr_susface(2, 6)
        global.msg[3] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_492_0"@5800)
    }
    if (self.x >= 600)
    {
        global.typer = 32
        global.fc = 5
        global.fe = 0
        global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_500_0"@5801)
        global.msg[1] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_501_0"@5802)
        global.msg[2] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_502_0"@5803)
    }
}
if (self.room == room_forest_savepoint2)
{
    global.fc = 1
    global.fe = 2
    global.typer = 30
    global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_512_0"@5804)
    scr_lanface(1, 2)
    global.msg[2] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_514_0"@5805)
    scr_ralface(3, 0)
    global.msg[4] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_516_0"@5806)
    scr_lanface(5, 3)
    global.msg[6] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_518_0"@5807)
    scr_susface(7, 2)
    global.msg[8] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_520_0"@5808)
    scr_lanface(9, 1)
    global.msg[10] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_522_0"@5809)
    scr_ralface(11, 9)
    global.msg[12] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_524_0"@5810)
    if (self.talked >= 1)
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_527_0"@5811)
        scr_lanface(1, 2)
        global.msg[2] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_529_0"@5812)
        global.msg[3] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_530_0"@5813)
    }
    with(obj_npc_facing)
    {
        self.talked = (self.talked + 1)
    }
}
if (self.room == room_forest_maze_deadend)
{
    global.fc = 5
    global.fe = 3
    global.typer = 32
    global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_541_0"@5814)
    scr_ralface(1, 8)
    global.msg[2] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_543_0"@5815)
    scr_lanface(3, 6)
    global.msg[4] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_545_0"@5816)
    scr_ralface(5, 9)
    global.msg[6] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_547_0"@5817)
    if (self.talked >= 1)
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_550_0"@5818)
        scr_ralface(1, 8)
        global.msg[2] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_552_0"@5819)
    }
    if (global.flag[293] >= 2)
    {
        global.fe = 2
        global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_557_0"@5820)
        scr_ralface(1, 9)
        global.msg[2] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_559_0"@5821)
    }
}
if (self.room == room_forest_maze_deadend2)
{
    global.fc = 1
    global.fe = 0
    global.typer = 30
    global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_568_0"@5822)
    scr_ralface(1, 6)
    global.msg[2] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_570_0"@5823)
    scr_susface(3, 2)
    global.msg[4] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_572_0"@5824)
    global.msg[5] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_573_0"@5825)
    scr_ralface(6, 8)
    global.msg[7] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_575_0"@5826)
    global.msg[8] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_576_0"@5827)
    if (self.talked >= 1)
        global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_579_0"@5828)
    if (global.flag[294] >= 2)
    {
        global.fe = 9
        global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_584_0"@5829)
        scr_ralface(1, 9)
        global.msg[2] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_586_0"@5830)
    }
}
if (self.room == room_cc_throneroom)
{
    if (global.plot < 243)
    {
        global.fc = 5
        global.fe = 3
        global.typer = 32
        global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_600_0"@5831)
        global.msg[1] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_601_0"@5832)
        scr_susface(2, 2)
        global.msg[3] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_603_0"@5833)
        scr_lanface(4, 1)
        global.msg[5] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_605_0"@5834)
        global.msg[6] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_606_0"@5835)
        scr_susface(7, 9)
        global.msg[8] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_608_0"@5836)
        global.msg[9] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_609_0"@5837)
        scr_lanface(10, 2)
        global.msg[11] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_611_0"@5838)
        global.msg[12] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_612_0"@5839)
        global.msg[13] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_613_0"@5840)
        scr_susface(14, 2)
        global.msg[15] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_615_0"@5841)
        global.msg[16] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_616_0"@5842)
        global.msg[17] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_617_0"@5843)
        scr_lanface(18, 3)
        global.msg[19] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_619_0"@5844)
        global.msg[20] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_620_0"@5845)
        global.msg[21] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_621_0"@5846)
        scr_susface(22, 3)
        global.msg[23] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_623_0"@5847)
        global.msg[24] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_624_0"@5848)
        scr_lanface(25, 3)
        global.msg[26] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_626_0"@5849)
        global.msg[27] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_627_0"@5850)
        global.plot = 243
    }
    else
    {
        global.fc = 5
        global.fe = 3
        global.typer = 32
        global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_636_0"@5851)
        scr_susface(1, 3)
        global.msg[2] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_638_0"@5852)
        scr_lanface(3, 3)
        global.msg[4] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_640_0"@5853)
    }
}
if (self.room == room_cc_kingbattle)
{
    global.typer = 31
    global.fc = 2
    global.fe = 11
    if (global.plot == 242)
    {
        global.fe = 1
        global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_656_0"@5854)
        scr_susface(1, 2)
        global.msg[2] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_658_0"@5855)
    }
    if (global.plot >= 243)
    {
        global.fe = 1
        global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_665_0"@5856)
        scr_susface(1, 2)
        global.msg[2] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_667_0"@5857)
        global.msg[3] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_668_0"@5858)
    }
    if (global.plot < 242)
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_674_0"@5859)
        scr_susface(1, 0)
        global.msg[2] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_676_0"@5860)
        global.msg[3] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_677_0"@5861)
        scr_ralface(4, 8)
        global.msg[5] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_679_0"@5862)
        global.msg[6] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_680_0"@5863)
        global.msg[7] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_681_0"@5864)
        scr_susface(8, 2)
        global.msg[9] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_683_0"@5865)
        global.plot = 242
    }
}
if (self.room == room_library)
{
    if (self.room == room_library)
    {
        if (self.x < 140)
        {
            global.fc = 12
            global.typer = 13
            global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_700_0"@5866)
            if (global.flag[256] == 1)
                global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_702_0"@5867)
            global.msg[1] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_703_0"@5868)
            global.msg[2] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_704_0"@5869)
            global.msg[3] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_705_0"@5870)
            global.msg[4] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_706_0"@5871)
            global.msg[5] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_707_0"@5872)
            if (self.talked >= 1)
            {
                global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_711_0"@5873)
                global.msg[1] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_712_0"@5874)
                global.msg[2] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_713_0"@5875)
                global.msg[3] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_714_0"@5876)
            }
            if (global.flag[255] >= 1)
                _temp_local_var_3 = (global.flag[256] == 0)
            else
                _temp_local_var_3 = 0
            if _temp_local_var_3
            {
                global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_719_0"@5877)
                global.msg[1] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_720_0"@5878)
                global.msg[2] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_721_0"@5879)
                global.msg[3] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_722_0"@5880)
                global.msg[4] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_723_0"@5881)
                global.msg[5] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_724_0"@5882)
                global.flag[256] = 1
                self.talked = -1
            }
        }
        if (self.x > 150)
            _temp_local_var_4 = (self.x < 220)
        else
            _temp_local_var_4 = 0
        if _temp_local_var_4
        {
            global.fc = 14
            global.fe = 0
            global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_739_0"@5883)
            global.msg[1] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_740_0"@5884)
            global.msg[2] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_741_0"@5885)
            scr_noface(3)
            global.msg[4] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_743_0"@5886)
            if (self.talked >= 1)
                global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_747_0"@5887)
        }
        if (self.x > 220)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_753_0"@5888)
            global.msg[1] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_754_0"@5889)
        }
    }
}
if (self.room == room_flowershop_1f)
{
    global.fc = 10
    global.fe = 1
    global.typer = 18
    global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_767_0"@5890)
    global.msg[1] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_768_0"@5891)
    global.msg[2] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_769_0"@5892)
    global.msg[3] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_770_0"@5893)
    global.msg[4] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_771_0"@5894)
    if (self.talked >= 1)
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_775_0"@5895)
        global.msg[1] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_776_0"@5896)
    }
}
if (self.room == room_flowershop_2f)
{
    global.fc = 10
    global.fe = 2
    global.typer = 18
    global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_785_0"@5897)
    global.msg[1] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_786_0"@5898)
}
if (self.room == room_alphysalley)
{
    global.fc = 11
    global.fe = 0
    global.typer = 20
    global.msc = 285
    scr_text(global.msc)
}
if (self.room == room_town_south)
{
    global.typer = 17
    global.msc = 335
    scr_text(global.msc)
}
if (self.room == room_town_mid)
{
    self.image_speed = 0
    self.image_index = 0
    global.typer = 14
    global.fc = 6
    global.fe = 0
    global.msc = 370
    if (global.flag[273] >= 1)
        global.msc = 371
    scr_text(global.msc)
    with(obj_town_event)
    {
        self.con = 70
    }
}
if (self.room == room_town_north)
{
    if (self.dtsprite == 124)
    {
        global.msc = 385
        global.typer = 12
        global.fc = 3
        global.fe = 0
        scr_text(global.msc)
    }
}
self.remanimspeed = self.image_speed
self.myinteract = 3
self.mydialoguer = instance_create(0, 0, obj_dialoguer)
self.talked = (self.talked + 1)
