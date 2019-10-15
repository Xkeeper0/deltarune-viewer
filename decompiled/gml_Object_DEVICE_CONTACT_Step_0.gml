if (self.EVENT == 0)
{
    global.typer = 666
    global.fc = 0
    global.msg[0] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_5_0"@9544)
    global.msg[1] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_6_0"@9545)
    global.msg[2] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_7_0"@9546)
    global.msg[3] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_8_0"@9547)
    self.EVENT = 1
    if (global.lang == "ja"@1566)
        self.W = instance_create(100, 80, obj_writer)
    else
        self.W = instance_create(110, 80, obj_writer)
}
if (self.EVENT == 1)
    _temp_local_var_1 = (~ instance_exists(obj_writer))
else
    _temp_local_var_1 = 0
if _temp_local_var_1
{
    snd_play(AUDIO_APPEARANCE)
    self.SOUL = instance_create(150, 120, DEVICE_APPEARANCE)
    self.SOUL.momentum = 0.5
    self.EVENT = 2
    self.alarm[4] = 20
}
if (self.EVENT == 3)
{
    self.HEARTMADE = 1
    self.HSINER = 0
    self.EVENT = 4
    self.alarm[4] = 90
    if button2_h()
        self.alarm[4] = 30
}
if (self.EVENT == 5)
{
    global.msg[0] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_33_0"@9549)
    global.msg[1] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_34_0"@9550)
    global.msg[2] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_35_0"@9551)
    global.msg[3] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_36_0"@9552)
    self.W = instance_create(110, 50, obj_writer)
    self.EVENT = 5.1
}
if (self.EVENT == 5.1)
{
    if instance_exists(obj_writer)
        _temp_local_var_2 = (self.FADED == 0)
    else
        _temp_local_var_2 = 0
}
else
    _temp_local_var_2 = 0
if _temp_local_var_2
{
    if (global.flag[20] == 2)
    {
        mus_volume(global.currentsong[0], 0, 2)
        self.FADED = 1
    }
}
if (self.EVENT == 7)
{
    global.currentsong[0] = snd_init("AUDIO_ANOTHERHIM.ogg"@9553)
    snd_pitch(global.currentsong[0], 0.02)
    self.PITCH = 0.02
    mus_loop(global.currentsong[0])
    self.EVENT = 8
}
if (self.EVENT == 6.2)
    _temp_local_var_3 = (~ instance_exists(obj_writer))
else
    _temp_local_var_3 = 0
if _temp_local_var_3
{
    snd_free_all()
    self.OBMADE = 1
    self.EVENT = 7
}
if (self.EVENT == 5.1)
    _temp_local_var_4 = (~ instance_exists(obj_writer))
else
    _temp_local_var_4 = 0
if _temp_local_var_4
{
    snd_free_all()
    snd_play(AUDIO_APPEARANCE)
    self.HEARTMADE = 0
    self.SOUL.t = (self.SOUL.t - 2)
    self.SOUL.momentum = -0.5
    self.EVENT = 5.2
    self.alarm[4] = 60
}
if (self.EVENT == 8)
{
    if (self.PITCH < 0.96)
        self.PITCH = (self.PITCH + 0.02)
    else
    {
        self.EVENT = 9
        self.alarm[4] = 30
    }
    snd_pitch(global.currentsong[0], self.PITCH)
}
if (self.EVENT == 10)
{
    global.typer = 667
    global.msg[0] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_107_0"@9555)
    global.msg[1] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_111_0"@9556)
    self.W = instance_create(80, 50, obj_writer)
    self.EVENT = 16
}
if (self.EVENT == 15)
{
    with(obj_writer)
    {
        instance_destroy()
    }
}
if (self.EVENT == 16)
    _temp_local_var_5 = (~ instance_exists(obj_writer))
else
    _temp_local_var_5 = 0
if _temp_local_var_5
{
    global.typer = 667
    global.msg[0] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_125_0"@9557)
    global.msg[1] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_126_0"@9558)
    self.W = instance_create(75, 40, obj_writer)
    self.EVENT = 17
    self.alarm[4] = 30
}
if (self.EVENT == 18)
{
    self.EVENT = 19
    self.GM = instance_create(140, 120, DEVICE_GONERMAKER)
}
if (self.EVENT == 19)
{
    if (~ instance_exists(self.GM))
        self.EVENT = 19.1
    self.alarm[4] = 24
}
if (self.EVENT == 20.1)
{
    with(obj_writer)
    {
        instance_destroy()
    }
    global.msg[0] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_148_0"@9560)
    global.msg[1] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_149_0"@9561)
    global.msg[2] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_150_0"@9562)
    self.W = instance_create(75, 40, obj_writer)
    self.EVENT = 21
    self.alarm[4] = 30
}
if (self.EVENT == 22)
{
    self.GM = instance_create(140, 120, DEVICE_GONERMAKER)
    self.GM.s = 1
    self.GM.STEP = 2
    self.EVENT = 23
}
if (self.EVENT == 23)
{
    if (~ instance_exists(self.GM))
        self.EVENT = 23.1
    self.alarm[4] = 24
}
if (self.EVENT == 24.1)
{
    with(obj_writer)
    {
        instance_destroy()
    }
    global.msg[0] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_173_0"@9564)
    global.msg[1] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_174_0"@9565)
    self.W = instance_create(75, 40, obj_writer)
    self.EVENT = 25
    self.alarm[4] = 30
}
if (self.EVENT == 26)
{
    self.GM = instance_create(140, 120, DEVICE_GONERMAKER)
    self.GM.s = 2
    self.GM.STEP = 3
    self.EVENT = 27
}
if (self.EVENT == 27)
{
    if (~ instance_exists(self.GM))
        self.EVENT = 28
    self.alarm[4] = 24
}
if (self.EVENT == 29)
{
    global.typer = 667
    with(obj_writer)
    {
        instance_destroy()
    }
    self.GM = instance_create(140, 90, DEVICE_GONERMAKER)
    self.GM.CANCEL = 1
    self.GM.FINISH = -1
    self.GM.s = -1
    self.GM.STEP = 3
    global.msg[0] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_205_0"@9567)
    global.msg[1] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_206_0"@9568)
    global.msg[2] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_207_0"@9569)
    self.W = instance_create(60, 40, obj_writer)
    self.EVENT = 30
    self.alarm[4] = 110
}
if (self.EVENT == 31)
{
    self.choice = instance_create(100, 120, DEVICE_CHOICE)
    self.EVENT = 32
}
if (self.EVENT == 32)
{
    if (global.choice == 0)
        _temp_local_var_6 = 1
    else
        _temp_local_var_6 = (global.choice == 1)
    if _temp_local_var_6
    {
        self.EVENT = 33
        if (global.choice == 1)
        {
            with(self.GM)
            {
                self.FINISH = 1
            }
            self.EVENT = 15
            self.alarm[4] = 20
        }
    }
}
if (self.EVENT == 33)
{
    self.EVENT = 34
    self.alarm[4] = 26
}
if (self.EVENT == 35)
{
    with(obj_writer)
    {
        instance_destroy()
    }
    global.msg[0] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_240_0"@9570)
    global.msg[1] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_241_0"@9571)
    global.msg[2] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_242_0"@9572)
    global.msg[3] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_243_0"@9573)
    self.W = instance_create(60, 40, obj_writer)
    self.EVENT = 36
}
if (self.EVENT == 36)
    _temp_local_var_7 = (~ instance_exists(obj_writer))
else
    _temp_local_var_7 = 0
if _temp_local_var_7
{
    self.GMSINE = 0
    self.EVENT = 37
    self.alarm[4] = 30
    global.typer = 667
    global.msg[0] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_258_0"@9575)
    global.msg[1] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_259_0"@9576)
    self.W = instance_create(80, 40, obj_writer)
}
if (self.EVENT == 37)
{
    self.GMSINE = (self.GMSINE + 1)
    self.GM.initx = (self.GM.initx + (sin((self.GMSINE / 14)) * 1))
}
if (self.EVENT == 38)
{
    self.CHOICE = instance_create(0, 0, DEVICE_CHOICE)
    self.EVENT = 39
    with(self.CHOICE)
    {
        self.TYPE = 2
        self.i = 0
        while(true)
        {
            if (self.i <= 6)
            {
                self.NAME[0][self.i] = string((1 + self.i))
                self.NAMEX[0][self.i] = 80
                if (global.lang == "ja"@1566)
                    self.NAMEX[0][self.i] = (self.NAMEX[0][self.i] - 16)
                self.NAMEY[0][self.i] = (100 + (self.i * 16))
                self.YMAX = (self.YMAX + 1)
                self.i = (self.i + 1)
                continue
            }
            break
        }
        self.NAME[0][0] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_288_0"@9579)
        self.NAME[0][1] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_289_0"@9580)
        self.NAME[0][2] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_290_0"@9581)
        self.NAME[0][3] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_291_0"@9582)
        self.NAME[0][4] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_292_0"@9583)
        self.NAME[0][5] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_293_0"@9584)
        self.CURX = 0
        self.HEARTX = (self.NAMEX[0][0] - 20)
        self.HEARTY = self.NAMEY[0][0]
        self.XMAX = 0
        self.YMAX = 5
        self.xoff = -20
    }
}
if (self.EVENT == 39)
{
    if (global.choice > -1)
    {
        global.flag[903] = global.choice
        self.EVENT = 40
        self.alarm[4] = 26
    }
}
if (self.EVENT == 41)
{
    with(obj_writer)
    {
        instance_destroy()
    }
    self.EVENT = 42
    self.alarm[4] = 30
    global.typer = 667
    global.msg[0] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_323_0"@9585)
    global.msg[1] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_324_0"@9586)
    self.W = instance_create(80, 40, obj_writer)
}
if (self.EVENT == 43)
{
    self.CHOICE = instance_create(0, 0, DEVICE_CHOICE)
    self.EVENT = 44
    with(self.CHOICE)
    {
        self.TYPE = 2
        self.i = 0
        while(true)
        {
            if (self.i <= 5)
            {
                self.NAME[0][self.i] = string((1 + self.i))
                self.NAMEX[0][self.i] = 80
                self.NAMEY[0][self.i] = (100 + (self.i * 16))
                self.YMAX = (self.YMAX + 1)
                self.i = (self.i + 1)
                continue
            }
            break
        }
        self.NAME[0][0] = "A"@366
        self.NAME[0][1] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_344_0"@9587)
        self.NAME[0][2] = "B"@2529
        self.NAME[0][3] = "C"@2530
        self.NAME[0][4] = "D"@2531
        self.CURX = 0
        self.HEARTX = (self.NAMEX[0][0] - 20)
        self.HEARTY = self.NAMEY[0][0]
        self.XMAX = 0
        self.YMAX = 4
        self.xoff = -20
    }
}
if (self.EVENT == 44)
{
    if (global.choice > -1)
    {
        global.flag[904] = global.choice
        self.EVENT = 45
        self.alarm[4] = 26
    }
}
if (self.EVENT == 46)
{
    with(obj_writer)
    {
        instance_destroy()
    }
    self.EVENT = 47
    self.alarm[4] = 30
    global.typer = 667
    global.msg[0] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_381_0"@9588)
    global.msg[1] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_382_0"@9589)
    self.W = instance_create(80, 40, obj_writer)
}
if (self.EVENT == 48)
{
    self.CHOICE = instance_create(0, 0, DEVICE_CHOICE)
    self.EVENT = 49
    with(self.CHOICE)
    {
        self.TYPE = 2
        self.i = 0
        while(true)
        {
            if (self.i <= 3)
            {
                self.NAME[0][self.i] = string((1 + self.i))
                self.NAMEX[0][self.i] = 80
                if (global.lang == "ja"@1566)
                    self.NAMEX[0][self.i] = (self.NAMEX[0][self.i] - 16)
                self.NAMEY[0][self.i] = (100 + (self.i * 16))
                self.YMAX = (self.YMAX + 1)
                self.i = (self.i + 1)
                continue
            }
            break
        }
        self.NAME[0][0] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_401_0"@9590)
        self.NAME[0][1] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_402_0"@9591)
        self.NAME[0][2] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_403_0"@9592)
        self.NAME[0][3] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_404_0"@9593)
        self.CURX = 0
        self.HEARTX = (self.NAMEX[0][0] - 20)
        self.HEARTY = self.NAMEY[0][0]
        self.XMAX = 0
        self.YMAX = 3
        self.xoff = -20
    }
}
if (self.EVENT == 49)
{
    if (global.choice > -1)
    {
        global.flag[905] = global.choice
        self.EVENT = 50.5
        self.alarm[4] = 26
    }
}
if (self.EVENT == 51.5)
{
    with(obj_writer)
    {
        instance_destroy()
    }
    self.EVENT = 52.5
    self.alarm[4] = 30
    global.typer = 667
    global.msg[0] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_438_0"@9594)
    global.msg[1] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_439_0"@9595)
    self.JA_XOFF = 0
    if (global.lang == "ja"@1566)
        self.JA_XOFF = -20
    self.W = instance_create((80 + self.JA_XOFF), 30, obj_writer)
}
if (self.EVENT == 53.5)
{
    self.CHOICE = instance_create(0, 0, DEVICE_CHOICE)
    self.EVENT = 54.5
    with(self.CHOICE)
    {
        self.TYPE = 2
        self.i = 0
        while(true)
        {
            if (self.i <= 4)
            {
                self.NAME[0][self.i] = string((1 + self.i))
                self.NAMEX[0][self.i] = 80
                self.NAMEY[0][self.i] = (100 + (self.i * 16))
                self.YMAX = (self.YMAX + 1)
                self.i = (self.i + 1)
                continue
            }
            break
        }
        self.NAME[0][0] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_459_0"@9596)
        self.NAME[0][1] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_460_0"@9597)
        self.NAME[0][2] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_461_0"@9598)
        self.NAME[0][3] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_462_0"@9599)
        self.NAME[0][4] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_463_0"@9600)
        self.CURX = 0
        self.HEARTX = (self.NAMEX[0][0] - 20)
        self.HEARTY = self.NAMEY[0][0]
        self.XMAX = 0
        self.YMAX = 4
        self.xoff = -20
    }
}
if (self.EVENT == 54.5)
{
    if (global.choice > -1)
    {
        global.flag[909] = (1 - global.choice)
        self.EVENT = 50
        self.alarm[4] = 26
    }
}
if (self.EVENT == 51)
{
    with(obj_writer)
    {
        instance_destroy()
    }
    self.EVENT = 52
    self.alarm[4] = 30
    global.typer = 667
    global.msg[0] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_497_0"@9601)
    global.msg[1] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_498_0"@9602)
    self.W = instance_create(50, 20, obj_writer)
}
if (self.EVENT == 53)
{
    self.CHOICE = instance_create(0, 0, DEVICE_CHOICE)
    self.EVENT = 54
    with(self.CHOICE)
    {
        self.TYPE = 2
        self.i = 0
        while(true)
        {
            if (self.i <= 3)
            {
                self.NAME[0][self.i] = string((1 + self.i))
                self.NAMEX[0][self.i] = 80
                self.NAMEY[0][self.i] = (100 + (self.i * 16))
                self.YMAX = (self.YMAX + 1)
                self.i = (self.i + 1)
                continue
            }
            break
        }
        self.NAME[0][0] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_518_0"@9603)
        self.NAME[0][1] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_519_0"@9604)
        self.NAME[0][2] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_520_0"@9605)
        self.NAME[0][3] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_521_0"@9606)
        self.CURX = 0
        self.HEARTX = (self.NAMEX[0][0] - 20)
        self.HEARTY = self.NAMEY[0][0]
        self.XMAX = 0
        self.YMAX = 3
        self.xoff = -20
    }
}
if (self.EVENT == 54)
{
    if (global.choice > -1)
    {
        global.flag[906] = global.choice
        self.EVENT = 54.1
        self.alarm[4] = 26
    }
}
if (self.EVENT == 55.1)
{
    with(obj_writer)
    {
        instance_destroy()
    }
    self.EVENT = 56
    self.alarm[4] = 30
    global.typer = 667
    global.msg[0] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_555_0"@9607)
    global.msg[1] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_556_0"@9608)
    self.W = instance_create(65, 30, obj_writer)
}
if (self.EVENT == 57)
{
    self.CHOICE = instance_create(0, 0, DEVICE_CHOICE)
    self.EVENT = 58
    with(self.CHOICE)
    {
        self.TYPE = 2
        self.i = 0
        while(true)
        {
            if (self.i <= 1)
            {
                self.NAME[0][self.i] = string((1 + self.i))
                self.NAMEX[0][self.i] = 80
                self.NAMEY[0][self.i] = (100 + (self.i * 16))
                self.YMAX = (self.YMAX + 1)
                self.i = (self.i + 1)
                continue
            }
            break
        }
        self.NAME[0][0] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_575_0"@9609)
        self.NAME[0][1] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_576_0"@9610)
        self.CURX = 0
        self.HEARTX = (self.NAMEX[0][0] - 20)
        self.HEARTY = self.NAMEY[0][0]
        self.XMAX = 0
        self.YMAX = 1
        self.xoff = -20
    }
}
if (self.EVENT == 58)
{
    if (global.choice > -1)
    {
        global.flag[907] = global.choice
        self.EVENT = 59
        self.alarm[4] = 26
    }
}
if (self.EVENT == 60)
{
    with(obj_writer)
    {
        instance_destroy()
    }
    self.EVENT = 61
    self.alarm[4] = 30
    global.typer = 667
    global.msg[0] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_611_0"@9611)
    global.msg[1] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_612_0"@9612)
    self.W = instance_create(60, 20, obj_writer)
}
if (self.EVENT == 62)
{
    self.CHOICE = instance_create(0, 0, DEVICE_CHOICE)
    self.EVENT = 63
    with(self.CHOICE)
    {
        self.TYPE = 2
        self.i = 0
        while(true)
        {
            if (self.i <= 1)
            {
                self.NAME[0][self.i] = string((1 + self.i))
                self.NAMEX[0][self.i] = 80
                self.NAMEY[0][self.i] = (100 + (self.i * 16))
                self.YMAX = (self.YMAX + 1)
                self.i = (self.i + 1)
                continue
            }
            break
        }
        self.NAME[0][0] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_631_0"@9613)
        self.NAME[0][1] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_632_0"@9614)
        self.CURX = 0
        self.HEARTX = (self.NAMEX[0][0] - 20)
        self.HEARTY = self.NAMEY[0][0]
        self.XMAX = 0
        self.YMAX = 1
        self.xoff = -20
    }
}
if (self.EVENT == 63)
{
    if (global.choice > -1)
    {
        global.flag[908] = global.choice
        self.EVENT = 64
        self.alarm[4] = 26
    }
}
if (self.EVENT == 65)
{
    with(obj_writer)
    {
        instance_destroy()
    }
    global.msg[0] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_664_0"@9615)
    self.W = instance_create(90, 50, obj_writer)
    self.EVENT = 65.5
    self.alarm[4] = 32
    if instance_exists(DEVICE_GONERMAKER)
    {
        self.gmx = self.GM.initx
        self.gmy = self.GM.inity
    }
}
if (self.EVENT == 65.5)
{
    if instance_exists(DEVICE_GONERMAKER)
    {
        if (self.GM.initx > (self.gmx - 24))
            self.GM.initx = (self.GM.initx - 1)
        if (self.GM.inity < (self.gmy + 56))
            self.GM.inity = (self.GM.inity + 2)
    }
}
if (self.EVENT == 66.5)
    _temp_local_var_8 = (instance_exists(obj_writer) == 0)
else
    _temp_local_var_8 = 0
if _temp_local_var_8
{
    self.JA_XOFF = 0
    if (global.lang == "ja"@1566)
        self.JA_XOFF = 30
    with(obj_writer)
    {
        instance_destroy()
    }
    global.msg[0] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_697_0"@9619)
    global.msg[1] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_698_0"@9620)
    self.W = instance_create((68 + self.JA_XOFF), 20, obj_writer)
    self.CHOICE = instance_create(0, 0, DEVICE_CHOICE)
    self.EVENT = 67
    with(self.CHOICE)
    {
        event_user(0)
    }
    with(self.CHOICE)
    {
        self.STRINGMAX = 9
        if (global.lang == "ja"@1566)
            self.STRINGMAX = 7
    }
}
if (self.EVENT == 67)
{
    if instance_exists(self.CHOICE)
    {
        global.name = self.CHOICE.NAMESTRING
        self.FN_2 = global.name
        if (global.lang == "ja"@1566)
        {
            if (self.FN_2 == "ＧＡＳＴＥＲ"@9622)
                game_restart()
            self.FN_2 = string_to_hiragana(self.FN_2)
        }
        if (self.FN_2 == scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_714_0"@9624))
            game_restart()
    }
    else
    {
        self.EVENT = 68
        self.alarm[4] = 26
    }
}
if (self.EVENT == 69)
{
    with(obj_writer)
    {
        instance_destroy()
    }
    self.FOUND = 0
    self.FN = global.name
    event_user(0)
    global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_729_0"@9627), global.name)
    global.msg[1] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_730_0"@9628)
    if (self.FOUND == 1)
        _temp_local_var_9 = 1
    else
        _temp_local_var_9 = (self.FOUND == 2)
    if _temp_local_var_9
    {
        global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_734_0"@9629), global.name)
        global.msg[1] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_735_0"@9630)
        global.msg[2] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_736_0"@9631)
    }
    self.W = instance_create(80, 50, obj_writer)
    self.EVENT = 70
}
if (self.EVENT == 70)
    _temp_local_var_10 = (instance_exists(obj_writer) == 0)
else
    _temp_local_var_10 = 0
if _temp_local_var_10
{
    self.JA_XOFF = 0
    if (global.lang == "ja"@1566)
        self.JA_XOFF = -32
    with(obj_writer)
    {
        instance_destroy()
    }
    global.msg[0] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_755_0"@9632)
    global.msg[1] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_756_0"@9633)
    self.W = instance_create((88 + self.JA_XOFF), 20, obj_writer)
    self.CHOICE = instance_create(0, 0, DEVICE_CHOICE)
    self.EVENT = 71
    with(self.CHOICE)
    {
        event_user(0)
    }
    with(self.CHOICE)
    {
        if (global.lang == "ja"@1566)
            self.STRINGMAX = 7
    }
}
if (self.EVENT == 71)
{
    if instance_exists(self.CHOICE)
    {
        global.truename = self.CHOICE.NAMESTRING
        self.FN_3 = global.truename
        if (global.lang == "ja"@1566)
            self.FN_3 = string_to_hiragana(self.FN_3)
        if (self.FN_3 == scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_770_0"@9635))
            _temp_local_var_11 = 1
        else
            _temp_local_var_11 = (self.FN_3 == "ＧＡＳＴＥＲ"@9622)
        if _temp_local_var_11
            game_end()
    }
    else
    {
        self.EVENT = 72
        self.alarm[4] = 26
    }
}
if (self.EVENT == 73)
{
    with(obj_writer)
    {
        instance_destroy()
    }
    self.FOUND = 0
    self.FN = global.truename
    event_user(0)
    global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_785_0"@9636), global.truename)
    global.msg[1] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_786_0"@9637)
    global.msg[2] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_787_0"@9638)
    if (self.FOUND == 1)
        global.msg[1] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_790_0"@9639)
    if (self.FOUND == 2)
    {
        global.msg[1] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_794_0"@9640)
        global.msg[2] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_795_0"@9641)
    }
    if (global.name == global.truename)
    {
        global.msg[1] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_800_0"@9642)
        global.msg[2] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_801_0"@9643)
    }
    self.W = instance_create(80, 50, obj_writer)
    self.EVENT = 74
}
if (self.EVENT == 74)
    _temp_local_var_12 = (~ instance_exists(obj_writer))
else
    _temp_local_var_12 = 0
if _temp_local_var_12
{
    global.othername[0] = global.name
    global.typer = 667
    global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_816_0"@9644), global.truename)
    global.msg[1] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_817_0"@9645)
    global.msg[2] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_818_0"@9646)
    global.msg[3] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_819_0"@9647)
    self.W = instance_create(80, 50, obj_writer)
    self.EVENT = 75
}
if (self.EVENT == 75)
    _temp_local_var_13 = (~ instance_exists(obj_writer))
else
    _temp_local_var_13 = 0
if _temp_local_var_13
{
    snd_free_all()
    snd_play(snd_text)
    with(DEVICE_GONERMAKER)
    {
        instance_destroy()
    }
    with(DEVICE_OBACK_4)
    {
        instance_destroy()
    }
    self.OBMADE = 0
    self.EVENT = 76
    scr_windowcaption(" "@24)
    self.alarm[4] = 30
}
if (self.EVENT == 77)
{
    global.typer = 2
    global.msg[0] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_839_0"@9648)
    global.msg[1] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_840_0"@9649)
    self.JA_XOFF = 0
    if (global.lang == "ja"@1566)
        self.JA_XOFF = -10
    self.W = instance_create((100 + self.JA_XOFF), 50, obj_writer)
    self.EVENT = 78
}
if (self.EVENT == 78)
    _temp_local_var_14 = (~ instance_exists(obj_writer))
else
    _temp_local_var_14 = 0
if _temp_local_var_14
{
    global.typer = 2
    if (global.lang == "ja"@1566)
        global.typer = 60
    global.currentsong[0] = snd_init("w.ogg"@9650)
    self.loop1 = mus_loop(global.currentsong[0])
    self.loop2 = mus_loop(global.currentsong[0])
    snd_pitch(self.loop1, 0)
    snd_pitch(self.loop2, 0)
    self.p = 0
    global.msg[0] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_854_0"@9653)
    self.JA_XOFF = 0
    if (global.lang == "ja"@1566)
        self.JA_XOFF = -15
    self.W = instance_create((145 + self.JA_XOFF), 50, obj_writer)
    self.EVENT = 98
    self.WHITEFADE = 1
    self.FADEUP = 0.008
    self.FADEFACTOR = -0.1
    self.depth = -20
}
if (self.EVENT == 99)
{
    global.flag[6] = 0
    room_goto(room_krisroom)
}
if (self.EVENT == 98)
{
    self.p = (self.p + 0.008)
    snd_pitch(self.loop1, self.p)
    snd_pitch(self.loop2, (self.p * 1.2))
    if (self.p >= 1.5)
    {
        self.EVENT = 99
        snd_free_all()
    }
}
if (self.EVENT == 100)
    _temp_local_var_15 = (~ instance_exists(obj_writer))
else
    _temp_local_var_15 = 0
if _temp_local_var_15
{
    global.currentsong[0] = snd_init("w.ogg"@9650)
    mus_loop(global.currentsong[0])
    self.EVENT = 101
    global.typer = 999
    global.msg[0] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_889_0"@9654)
    global.msg[1] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_890_0"@9655)
    global.msg[2] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_891_0"@9656)
    self.alarm[4] = 350
    instance_create(125, 90, obj_writer)
}
if (self.EVENT == 102)
    room_goto(room_krisroom)
if (self.EVENT == 900)
{
    global.typer = 667
    global.msg[0] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_928_0"@9657)
    global.msg[1] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_929_0"@9658)
    global.msg[2] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_930_0"@9659)
    self.W = instance_create(80, 50, obj_writer)
    self.EVENT = 919
    self.alarm[4] = 100
}
if (self.EVENT == 920)
{
    self.choice = instance_create(100, 100, DEVICE_CHOICE)
    self.EVENT = 930
}
if (self.EVENT == 930)
{
    if (global.choice == 1)
        _temp_local_var_16 = 1
    else
        _temp_local_var_16 = (global.choice == 0)
    if _temp_local_var_16
        self.EVENT = 940
    self.alarm[4] = 60
}
if (self.HEARTMADE == 1)
{
    self.HSINER = (self.HSINER + 1)
    self.SOUL.y = (self.SOUL.ystart + (sin((self.HSINER / 16)) * 2))
}
if (global.flag[20] == 0)
{
    with(obj_writer)
    {
        self.specfade = 1
    }
}
if (global.flag[20] == 1)
{
    with(obj_writer)
    {
        self.specfade = (self.specfade - 0.025)
    }
    if (self.EVENT >= 16)
    {
        with(obj_writer)
        {
            self.specfade = (self.specfade - 0.01)
        }
    }
}
if (self.OBMADE == 1)
{
    self.OB_DEPTH = (self.OB_DEPTH + 1)
    self.obacktimer = (self.obacktimer + self.OBM)
    if (self.obacktimer >= 20)
    {
        self.DV = instance_create(0, 0, DEVICE_OBACK_4)
        self.DV.depth = (5 + self.OB_DEPTH)
        self.DV.OBSPEED = (0.01 * self.OBM)
        if (self.OB_DEPTH >= 60000)
            self.OB_DEPTH = 0
        self.obacktimer = 0
    }
}
self.SKIPBUFFER = (self.SKIPBUFFER - 1)
if (self.ALREADY == 1)
{
    if (button2_h() == 1)
    {
        if (self.SKIPBUFFER < 0)
            _temp_local_var_17 = (self.EVENT <= 75)
        else
            _temp_local_var_17 = 0
    }
    else
        _temp_local_var_17 = 0
    if _temp_local_var_17
    {
        with(obj_writer)
        {
            if (self.pos < (self.length - 3))
                self.pos = (self.pos + 2)
            if (self.alarm[0] >= 10)
                self.alarm[0] = 10
            if (self.specfade <= 0.9)
                self.specfade = (self.specfade - 0.1)
            if (self.rate <= 1)
                self.rate = 1
        }
        if (self.EVENT >= 15)
        {
            if (self.alarm[4] >= 6)
                self.alarm[4] = 6
        }
        self.SKIPBUFFER = 1
    }
}
if scr_debug()
{
    if keyboard_check_pressed(vk_backspace)
    {
        global.flag[6] = 0
        snd_free_all()
        room_goto(room_krisroom)
    }
}
