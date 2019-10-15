self.CURX = 0
self.CURY = 0
self.XMAX = 0
self.YMAX = 0
self.NAME[0][0] = scr_84_get_lang_string("DEVICE_CHOICE_slash_Create_0_gml_7_0"@9489)
self.NAMEX[0][0] = 20
self.NAMEY[0][0] = 20
self.PLAYERNAMEY = 40
self.TYPE = 0
self.NAMESTRING = ""@2240
self.STRINGMAX = 12
self.xoff = 0
self.yoff = 0
self.LANGSUBTYPE = 0
if (global.lang == "ja"@1566)
    self.LANGSUBTYPE = 1
global.choice = -1
if (self.TYPE == 0)
{
    self.NAME[0][0] = scr_84_get_lang_string("DEVICE_CHOICE_slash_Create_0_gml_22_0"@9493)
    self.NAME[1][0] = scr_84_get_lang_string("DEVICE_CHOICE_slash_Create_0_gml_23_0"@9494)
    self.NAMEX[0][0] = 110
    self.NAMEX[1][0] = 190
    self.NAMEY[0][0] = 180
    self.NAMEY[1][0] = 180
    self.XMAX = 1
    self.CURX = -1
    self.IDEALX = 150
    self.IDEALY = 180
}
if (self.TYPE == 1)
{
    self.i = 0
    while(true)
    {
        if (self.i <= 7)
        {
            self.NAME[self.i][0] = string((1 + self.i))
            self.NAMEX[self.i][0] = (80 + (self.i * 20))
            self.NAMEY[self.i][0] = 180
            self.XMAX = (self.XMAX + 1)
            self.i = (self.i + 1)
            continue
        }
        break
    }
    self.NAMEY[0][0] = 180
    self.NAMEY[1][0] = 180
    self.XMAX = 7
    self.xoff = -7
}
if (self.TYPE == 2)
{
    self.i = 0
    while(true)
    {
        if (self.i <= 6)
        {
            self.NAME[0][self.i] = string((1 + self.i))
            self.NAMEX[0][self.i] = 80
            self.NAMEY[0][self.i] = (100 + (self.i * 20))
            self.YMAX = (self.YMAX + 1)
            self.i = (self.i + 1)
            continue
        }
        break
    }
    self.NAME[0][0] = scr_84_get_lang_string("DEVICE_CHOICE_slash_Create_0_gml_57_0"@9497)
    self.NAME[0][1] = scr_84_get_lang_string("DEVICE_CHOICE_slash_Create_0_gml_58_0"@9498)
    self.NAME[0][2] = scr_84_get_lang_string("DEVICE_CHOICE_slash_Create_0_gml_59_0"@9499)
    self.NAME[0][3] = scr_84_get_lang_string("DEVICE_CHOICE_slash_Create_0_gml_60_0"@9500)
    self.NAME[0][4] = scr_84_get_lang_string("DEVICE_CHOICE_slash_Create_0_gml_61_0"@9501)
    self.NAME[0][5] = scr_84_get_lang_string("DEVICE_CHOICE_slash_Create_0_gml_62_0"@9502)
    self.NAME[0][6] = scr_84_get_lang_string("DEVICE_CHOICE_slash_Create_0_gml_63_0"@9503)
    self.HEARTX = (self.NAMEX[0][0] - 20)
    self.HEARTY = self.NAMEY[0][0]
    self.XMAX = 0
    self.YMAX = 6
    self.xoff = -20
}
if (self.TYPE == 3)
{
    show_debug_message("create type 3"@9504)
    scr_84_name_input_setup()
}
self.HEARTX = self.NAMEX[0][0]
self.HEARTY = self.NAMEY[0][0]
if (self.TYPE == 0)
    self.HEARTX = 150
self.DRAWHEART = 1
self.ONEBUFFER = 0
self.TWOBUFFER = 0
self.FINISH = 0
self.fadebuffer = 10
