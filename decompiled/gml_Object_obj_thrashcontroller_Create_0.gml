global.flag[220] = -1
global.flag[221] = -1
global.flag[222] = -1
global.flag[223] = 0
global.flag[224] = 0
global.flag[225] = 0
self.i = 0
while(true)
{
    if (self.i < 32)
    {
        self.precolor[self.i] = make_color_hsv((self.i * 8), 255, 255)
        self.i = (self.i + 1)
        continue
    }
    break
}
self.statcolor[0] = merge_color(0x00FF00, 0xFFFFFF, 0.5)
self.statcolor[1] = merge_color(0x00FFFF, 0xFFFFFF, 0.5)
self.statcolor[2] = merge_color(0xFF00FF, 0xFFFFFF, 0.6)
self.statcolor[3] = merge_color(0x0000FF, 0xFFFFFF, 0.3)
self.statcolor[4] = merge_color(0xFF0000, 0xFFFFFF, 0.5)
self.statcolor[5] = merge_color(0x800080, 0xFFFFFF, 0.4)
self.logocon = 1
self.logoalpha = 0
self.introtimer = 0
self.textalpha1 = 0
self.textalpha2 = 0
self.malpha = 0
self.buffer1 = 0
self.buffer2 = 0
self.con = 0
self.menu = 0
self.ended = 0
self.colorchange = 0
self.colorbuffer = 0
self.i = 0
while(true)
{
    if (self.i < 6)
    {
        self.stat[self.i] = 0
        self.i = (self.i + 1)
        continue
    }
    break
}
self.menutext1[0][0] = scr_84_get_lang_string("obj_thrashcontroller_slash_Create_0_gml_49_0"@4515)
self.menutext1[0][1] = scr_84_get_lang_string("obj_thrashcontroller_slash_Create_0_gml_50_0"@4517)
self.menutext1[0][2] = scr_84_get_lang_string("obj_thrashcontroller_slash_Create_0_gml_51_0"@4518)
self.menutext1[0][3] = scr_84_get_lang_string("obj_thrashcontroller_slash_Create_0_gml_52_0"@4519)
self.menutext1[1][0] = scr_84_get_lang_string("obj_thrashcontroller_slash_Create_0_gml_53_0"@4520)
self.menutext1[1][1] = scr_84_get_lang_string("obj_thrashcontroller_slash_Create_0_gml_54_0"@4521)
self.menutext1[1][2] = scr_84_get_lang_string("obj_thrashcontroller_slash_Create_0_gml_55_0"@4522)
self.menutext1[1][3] = " "@24
self.menutext2[0][0] = scr_84_get_lang_string("obj_thrashcontroller_slash_Create_0_gml_59_0"@4523)
self.stat1[0][0] = 5
self.stat2[0][0] = 4
self.menutext2[0][1] = scr_84_get_lang_string("obj_thrashcontroller_slash_Create_0_gml_61_0"@4527)
self.stat1[0][1] = 1
self.stat2[0][1] = 0
self.menutext2[0][2] = scr_84_get_lang_string("obj_thrashcontroller_slash_Create_0_gml_63_0"@4528)
self.stat1[0][2] = 2
self.stat2[0][2] = 3
self.menutext2[0][3] = scr_84_get_lang_string("obj_thrashcontroller_slash_Create_0_gml_65_0"@4529)
self.stat1[0][3] = 6
self.stat2[0][3] = 6
self.menutext2[1][0] = scr_84_get_lang_string("obj_thrashcontroller_slash_Create_0_gml_68_0"@4530)
self.stat1[1][0] = 0
self.stat2[1][0] = 2
self.menutext2[1][1] = scr_84_get_lang_string("obj_thrashcontroller_slash_Create_0_gml_70_0"@4531)
self.stat1[1][1] = 4
self.stat2[1][1] = 1
self.menutext2[1][2] = scr_84_get_lang_string("obj_thrashcontroller_slash_Create_0_gml_72_0"@4532)
self.stat1[1][2] = 3
self.stat2[1][2] = 5
self.menutext2[1][3] = scr_84_get_lang_string("obj_thrashcontroller_slash_Create_0_gml_74_0"@4533)
self.stat1[1][3] = 6
self.stat2[1][3] = 6
self.menutext2[2][0] = scr_84_get_lang_string("obj_thrashcontroller_slash_Create_0_gml_77_0"@4534)
self.stat1[2][0] = 1
self.stat2[2][0] = 2
self.menutext2[2][1] = scr_84_get_lang_string("obj_thrashcontroller_slash_Create_0_gml_79_0"@4535)
self.stat1[2][1] = 3
self.stat2[2][1] = 4
self.menutext2[2][2] = scr_84_get_lang_string("obj_thrashcontroller_slash_Create_0_gml_81_0"@4536)
self.stat1[2][2] = 0
self.stat2[2][2] = 5
self.menutext2[2][3] = scr_84_get_lang_string("obj_thrashcontroller_slash_Create_0_gml_83_0"@4537)
self.stat1[2][3] = 6
self.stat2[2][3] = 6
self.assetdesc[0][0] = scr_84_get_lang_string("obj_thrashcontroller_slash_Create_0_gml_88_0"@4538)
self.assetdesc[0][1] = scr_84_get_lang_string("obj_thrashcontroller_slash_Create_0_gml_89_0"@4540)
self.assetdesc[0][2] = scr_84_get_lang_string("obj_thrashcontroller_slash_Create_0_gml_90_0"@4541)
self.assetdesc[0][3] = scr_84_get_lang_string("obj_thrashcontroller_slash_Create_0_gml_91_0"@4542)
self.assetdesc[1][0] = scr_84_get_lang_string("obj_thrashcontroller_slash_Create_0_gml_93_0"@4543)
self.assetdesc[1][1] = scr_84_get_lang_string("obj_thrashcontroller_slash_Create_0_gml_94_0"@4544)
self.assetdesc[1][2] = scr_84_get_lang_string("obj_thrashcontroller_slash_Create_0_gml_95_0"@4545)
self.assetdesc[1][3] = scr_84_get_lang_string("obj_thrashcontroller_slash_Create_0_gml_96_0"@4546)
self.assetdesc[2][0] = scr_84_get_lang_string("obj_thrashcontroller_slash_Create_0_gml_99_0"@4547)
self.assetdesc[2][1] = scr_84_get_lang_string("obj_thrashcontroller_slash_Create_0_gml_100_0"@4548)
self.assetdesc[2][2] = scr_84_get_lang_string("obj_thrashcontroller_slash_Create_0_gml_101_0"@4549)
self.assetdesc[2][3] = scr_84_get_lang_string("obj_thrashcontroller_slash_Create_0_gml_102_0"@4550)
self.menucoord1y = 0
self.menucoord1x = 0
self.menucoord2[0] = 0
self.menucoord2[1] = 0
self.menucoord2[2] = 0
self.endcoord = 0
self.xx = __view_get(e__VW.XView, 0)
self.yy = __view_get(e__VW.YView, 0)
self.ww = __view_get(e__VW.WView, 0)
self.hh = __view_get(e__VW.HView, 0)
self.thrash = instance_create((self.xx + (self.ww / 2.5)), (self.yy + (self.hh / 3)), obj_thrashmachine)
with(self.thrash)
{
    self.a = 0
}
