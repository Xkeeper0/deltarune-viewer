self.xx = __view_get(0, 0)
self.yy = __view_get(1, 0)
for (self.i = 0; self.i < 3; self.i += 1)
{
    global.heromakex[self.i] = (self.xx + 80)
    global.heromakey[self.i] = ((self.yy + 50) + (80 * self.i))
    global.monsterinstancetype[self.i] = 278
    global.monstertype[self.i] = 1
    global.monstermakex[self.i] = (self.xx + 540)
    global.monstermakey[self.i] = ((self.yy + 160) + (80 * self.i))
}
if ((global.char[0] != 0) && ((global.char[1] == 0) && (global.char[2] == 0)))
    global.heromakey[0] = (self.yy + 140)
if ((global.char[0] != 0) && ((global.char[1] != 0) && (global.char[2] == 0)))
{
    global.heromakey[0] = (self.yy + 100)
    global.heromakey[1] = (self.yy + 180)
}
switch self.argument0
{
    case 0:
        break
    case 1:
        global.monsterinstancetype[0] = 238
        global.monstertype[0] = 1
        global.monstermakex[0] = (self.xx + 480)
        global.monstermakey[0] = (self.yy + 110)
        global.monsterinstancetype[1] = 238
        global.monstertype[1] = 1
        global.monstermakex[1] = (self.xx + 500)
        global.monstermakey[1] = (self.yy + 200)
        global.monstertype[2] = 0
        break
    case 2:
        global.monsterinstancetype[0] = 278
        global.monstertype[0] = 2
        global.monstermakex[0] = (self.xx + 540)
        global.monstermakey[0] = (self.yy + 200)
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        break
    case 3:
        global.monsterinstancetype[0] = 236
        global.monstertype[0] = 3
        global.monstermakex[0] = (self.xx + 500)
        global.monstermakey[0] = (self.yy + 160)
        if instance_exists(obj_npc_room)
        {
            global.monstermakex[0] = obj_npc_room.xstart
            global.monstermakey[0] = obj_npc_room.ystart
        }
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        break
    case 4:
        global.monsterinstancetype[0] = 280
        global.monstertype[0] = 5
        global.monstermakex[0] = (self.xx + 480)
        global.monstermakey[0] = (self.yy + 140)
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.battlemsg[0] = scr_84_get_lang_string("scr_encountersetup_slash_scr_encountersetup_gml_82_0")
        if (global.flag[500] >= 1)
            global.battlemsg[0] = scr_84_get_lang_string("scr_encountersetup_slash_scr_encountersetup_gml_83_0")
        if (global.flag[500] == 2)
            global.battlemsg[0] = scr_84_get_lang_string("scr_encountersetup_slash_scr_encountersetup_gml_84_0")
        break
    case 5:
        global.monsterinstancetype[0] = 280
        global.monstertype[0] = 5
        global.monstermakex[0] = (self.xx + 480)
        global.monstermakey[0] = (self.yy + 110)
        global.monsterinstancetype[1] = 280
        global.monstertype[1] = 5
        global.monstermakex[1] = (self.xx + 500)
        global.monstermakey[1] = (self.yy + 200)
        global.monstertype[2] = 0
        global.battlemsg[0] = scr_84_get_lang_string("scr_encountersetup_slash_scr_encountersetup_gml_100_0")
        break
    case 6:
        global.monsterinstancetype[0] = 280
        global.monstertype[0] = 5
        global.monstermakex[0] = (self.xx + 480)
        global.monstermakey[0] = (self.yy + 110)
        global.monsterinstancetype[1] = 287
        global.monstertype[1] = 6
        global.monstermakex[1] = (self.xx + 500)
        global.monstermakey[1] = (self.yy + 200)
        global.monstertype[2] = 0
        global.battlemsg[0] = scr_84_get_lang_string("scr_encountersetup_slash_scr_encountersetup_gml_116_0")
        break
    case 7:
        global.monsterinstancetype[0] = 289
        global.monstertype[0] = 9
        global.monstermakex[0] = (self.xx + 440)
        global.monstermakey[0] = (self.yy + 150)
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.battlemsg[0] = scr_84_get_lang_string("scr_encountersetup_slash_scr_encountersetup_gml_128_0")
        break
    case 8:
        global.monsterinstancetype[0] = 285
        global.monstertype[0] = 16
        global.monstermakex[0] = (self.xx + 400)
        global.monstermakey[0] = (self.yy + 120)
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.battlemsg[0] = scr_84_get_lang_string("scr_encountersetup_slash_scr_encountersetup_gml_139_0")
        break
    case 9:
        global.monsterinstancetype[0] = 287
        global.monstertype[0] = 6
        global.monstermakex[0] = (self.xx + 480)
        global.monstermakey[0] = (self.yy + 20)
        global.monsterinstancetype[1] = 287
        global.monstertype[1] = 6
        global.monstermakex[1] = (self.xx + 500)
        global.monstermakey[1] = (self.yy + 120)
        global.monsterinstancetype[2] = 287
        global.monstertype[2] = 6
        global.monstermakex[2] = (self.xx + 460)
        global.monstermakey[2] = (self.yy + 220)
        global.battlemsg[0] = scr_84_get_lang_string("scr_encountersetup_slash_scr_encountersetup_gml_158_0")
        break
    case 12:
        global.monsterinstancetype[0] = 253
        global.monstertype[0] = 10
        global.monstermakex[0] = (self.xx + 480)
        global.monstermakey[0] = (self.yy + 120)
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.battlemsg[0] = scr_84_get_lang_string("scr_encountersetup_slash_scr_encountersetup_gml_172_0")
        break
    case 13:
        global.monsterinstancetype[0] = 260
        global.monstertype[0] = 11
        global.monstermakex[0] = (self.xx + 480)
        global.monstermakey[0] = (self.yy + 110)
        global.monsterinstancetype[1] = 260
        global.monstertype[1] = 11
        global.monstermakex[1] = (self.xx + 500)
        global.monstermakey[1] = (self.yy + 200)
        global.battlemsg[0] = scr_84_get_lang_string("scr_encountersetup_slash_scr_encountersetup_gml_185_0")
        global.monstertype[2] = 0
        break
    case 14:
        global.monsterinstancetype[0] = 260
        global.monstertype[0] = 11
        global.monstermakex[0] = (self.xx + 480)
        global.monstermakey[0] = (self.yy + 20)
        global.monsterinstancetype[1] = 260
        global.monstertype[1] = 11
        global.monstermakex[1] = (self.xx + 500)
        global.monstermakey[1] = (self.yy + 120)
        global.monsterinstancetype[2] = 260
        global.monstertype[2] = 11
        global.monstermakex[2] = (self.xx + 460)
        global.monstermakey[2] = (self.yy + 220)
        global.battlemsg[0] = scr_84_get_lang_string("scr_encountersetup_slash_scr_encountersetup_gml_206_0")
        break
    case 15:
        global.monsterinstancetype[0] = 285
        global.monstertype[0] = 7
        global.monstermakex[0] = (self.xx + 400)
        global.monstermakey[0] = (self.yy + 30)
        global.monsterinstancetype[1] = 287
        global.monstertype[1] = 6
        global.monstermakex[1] = (self.xx + 420)
        global.monstermakey[1] = (self.yy + 200)
        global.monstertype[2] = 0
        global.battlemsg[0] = scr_84_get_lang_string("scr_encountersetup_slash_scr_encountersetup_gml_223_0")
        break
    case 16:
        global.monsterinstancetype[0] = 273
        global.monstertype[0] = 13
        global.monstermakex[0] = (self.xx + 480)
        global.monstermakey[0] = (self.yy + 140)
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.battlemsg[0] = scr_84_get_lang_string("scr_encountersetup_slash_scr_encountersetup_gml_234_0")
        break
    case 17:
        global.monsterinstancetype[0] = 273
        global.monstertype[0] = 13
        global.monstermakex[0] = (self.xx + 480)
        global.monstermakey[0] = (self.yy + 60)
        global.monsterinstancetype[1] = 273
        global.monstertype[1] = 13
        global.monstermakex[1] = (self.xx + 460)
        global.monstermakey[1] = (self.yy + 180)
        global.monstertype[2] = 0
        global.battlemsg[0] = scr_84_get_lang_string("scr_encountersetup_slash_scr_encountersetup_gml_250_0")
        break
    case 18:
        global.monsterinstancetype[0] = 275
        global.monstertype[0] = 14
        global.monstermakex[0] = (self.xx + 480)
        global.monstermakey[0] = (self.yy + 140)
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.battlemsg[0] = scr_84_get_lang_string("scr_encountersetup_slash_scr_encountersetup_gml_261_0")
        break
    case 19:
        global.monsterinstancetype[0] = 275
        global.monstertype[0] = 14
        global.monstermakex[0] = (self.xx + 480)
        global.monstermakey[0] = (self.yy + 60)
        global.monsterinstancetype[1] = 275
        global.monstertype[1] = 14
        global.monstermakex[1] = (self.xx + 460)
        global.monstermakey[1] = (self.yy + 180)
        global.monstertype[2] = 0
        global.battlemsg[0] = scr_84_get_lang_string("scr_encountersetup_slash_scr_encountersetup_gml_277_0")
        break
    case 20:
        global.monsterinstancetype[0] = 279
        global.monstertype[0] = 12
        global.heromakex[0] = (self.xx + 120)
        global.monstermakex[0] = (self.xx + 480)
        global.monstermakey[0] = (self.yy + 160)
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.battlemsg[0] = scr_84_get_lang_string("scr_encountersetup_slash_scr_encountersetup_gml_292_0")
        break
    case 21:
        global.monsterinstancetype[0] = 252
        global.monstertype[0] = 15
        global.monstermakex[0] = (self.xx + 480)
        global.monstermakey[0] = (self.yy + 140)
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.battlemsg[0] = scr_84_get_lang_string("scr_encountersetup_slash_scr_encountersetup_gml_303_0")
        if (global.flag[500] >= 1)
            global.battlemsg[0] = scr_84_get_lang_string("scr_encountersetup_slash_scr_encountersetup_gml_304_0")
        if (global.flag[500] == 2)
            global.battlemsg[0] = scr_84_get_lang_string("scr_encountersetup_slash_scr_encountersetup_gml_305_0")
        break
    case 22:
        global.monsterinstancetype[0] = 252
        global.monstertype[0] = 15
        global.monstermakex[0] = (self.xx + 480)
        global.monstermakey[0] = (self.yy + 20)
        global.monsterinstancetype[1] = 252
        global.monstertype[1] = 15
        global.monstermakex[1] = (self.xx + 500)
        global.monstermakey[1] = (self.yy + 120)
        global.monsterinstancetype[2] = 252
        global.monstertype[2] = 15
        global.monstermakex[2] = (self.xx + 460)
        global.monstermakey[2] = (self.yy + 220)
        global.battlemsg[0] = scr_84_get_lang_string("scr_encountersetup_slash_scr_encountersetup_gml_324_0")
        break
    case 23:
        global.monsterinstancetype[0] = 252
        global.monstertype[0] = 15
        global.monstermakex[0] = (self.xx + 480)
        global.monstermakey[0] = (self.yy + 20)
        global.monsterinstancetype[1] = 280
        global.monstertype[1] = 5
        global.monstermakex[1] = (self.xx + 500)
        global.monstermakey[1] = (self.yy + 120)
        global.monsterinstancetype[2] = 287
        global.monstertype[2] = 6
        global.monstermakex[2] = (self.xx + 460)
        global.monstermakey[2] = (self.yy + 220)
        global.battlemsg[0] = scr_84_get_lang_string("scr_encountersetup_slash_scr_encountersetup_gml_343_0")
        break
    case 24:
        global.monsterinstancetype[0] = 273
        global.monstertype[0] = 13
        global.monstermakex[0] = (self.xx + 480)
        global.monstermakey[0] = (self.yy + 60)
        global.monsterinstancetype[1] = 280
        global.monstertype[1] = 5
        global.monstermakex[1] = (self.xx + 460)
        global.monstermakey[1] = (self.yy + 180)
        global.monstertype[2] = 0
        global.battlemsg[0] = scr_84_get_lang_string("scr_encountersetup_slash_scr_encountersetup_gml_358_0")
        break
    case 25:
        global.heromakex[0] = (self.xx + 80)
        global.heromakey[0] = (self.yy + 100)
        global.heromakex[1] = (self.xx + 90)
        global.heromakey[1] = (self.yy + 150)
        global.heromakex[2] = (self.xx + 100)
        global.heromakey[2] = (self.yy + 210)
        global.monsterinstancetype[0] = 284
        global.monstertype[0] = 20
        global.monstermakex[0] = (self.xx + 500)
        global.monstermakey[0] = (self.yy + 160)
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.battlemsg[0] = scr_84_get_lang_string("scr_encountersetup_slash_scr_encountersetup_gml_384_0")
        break
    case 27:
        global.monsterinstancetype[0] = 253
        global.monstertype[0] = 21
        global.monstermakex[0] = (self.xx + 480)
        global.monstermakey[0] = (self.yy + 120)
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.battlemsg[0] = scr_84_get_lang_string("scr_encountersetup_slash_scr_encountersetup_gml_397_0")
        global.heromakey[0] = (self.yy + 65)
        break
    case 28:
        global.monsterinstancetype[0] = 250
        global.monstertype[0] = 22
        global.monstermakex[0] = (self.xx + 480)
        global.monstermakey[0] = (self.yy + 110)
        global.monsterinstancetype[1] = 250
        global.monstertype[1] = 22
        global.monstermakex[1] = (self.xx + 500)
        global.monstermakey[1] = (self.yy + 200)
        global.monstertype[2] = 0
        global.battlemsg[0] = scr_84_get_lang_string("scr_encountersetup_slash_scr_encountersetup_gml_414_0")
        break
    case 29:
        global.monsterinstancetype[0] = 288
        global.monstertype[0] = 23
        global.monstermakex[0] = (self.xx + 480)
        global.monstermakey[0] = (self.yy + 110)
        global.monsterinstancetype[1] = 288
        global.monstertype[1] = 23
        global.monstermakex[1] = (self.xx + 500)
        global.monstermakey[1] = (self.yy + 200)
        global.monstertype[2] = 0
        global.battlemsg[0] = scr_84_get_lang_string("scr_encountersetup_slash_scr_encountersetup_gml_430_0")
        break
    case 30:
        global.monsterinstancetype[0] = 288
        global.monstertype[0] = 23
        global.monstermakex[0] = (self.xx + 480)
        global.monstermakey[0] = (self.yy + 20)
        global.monsterinstancetype[1] = 288
        global.monstertype[1] = 23
        global.monstermakex[1] = (self.xx + 500)
        global.monstermakey[1] = (self.yy + 120)
        global.monsterinstancetype[2] = 288
        global.monstertype[2] = 23
        global.monstermakex[2] = (self.xx + 460)
        global.monstermakey[2] = (self.yy + 220)
        global.battlemsg[0] = scr_84_get_lang_string("scr_encountersetup_slash_scr_encountersetup_gml_449_0")
        break
    case 31:
        global.monsterinstancetype[0] = 281
        global.monstertype[0] = 19
        global.monstermakex[0] = (self.xx + 520)
        global.monstermakey[0] = (self.yy + 80)
        global.monsterinstancetype[1] = 282
        global.monstertype[1] = 18
        global.monstermakex[1] = (self.xx + 540)
        global.monstermakey[1] = (self.yy + 240)
        global.monstertype[2] = 0
        global.battlemsg[0] = scr_84_get_lang_string("scr_encountersetup_slash_scr_encountersetup_gml_463_0")
        break
    case 32:
        global.monsterinstancetype[0] = 273
        global.monstertype[0] = 13
        global.monstermakex[0] = (self.xx + 480)
        global.monstermakey[0] = (self.yy + 20)
        global.monsterinstancetype[1] = 273
        global.monstertype[1] = 13
        global.monstermakex[1] = (self.xx + 500)
        global.monstermakey[1] = (self.yy + 120)
        global.monsterinstancetype[2] = 273
        global.monstertype[2] = 13
        global.monstermakex[2] = (self.xx + 460)
        global.monstermakey[2] = (self.yy + 220)
        global.battlemsg[0] = scr_84_get_lang_string("scr_encountersetup_slash_scr_encountersetup_gml_484_0")
        break
    case 33:
        global.monsterinstancetype[0] = 280
        global.monstertype[0] = 5
        global.monstermakex[0] = (self.xx + 480)
        global.monstermakey[0] = (self.yy + 20)
        global.monsterinstancetype[1] = 287
        global.monstertype[1] = 6
        global.monstermakex[1] = (self.xx + 500)
        global.monstermakey[1] = (self.yy + 120)
        global.monsterinstancetype[2] = 280
        global.monstertype[2] = 5
        global.monstermakex[2] = (self.xx + 460)
        global.monstermakey[2] = (self.yy + 220)
        global.battlemsg[0] = scr_84_get_lang_string("scr_encountersetup_slash_scr_encountersetup_gml_505_0")
        break
    case 40:
        global.monsterinstancetype[0] = 283
        global.monstertype[0] = 25
        global.monstermakex[0] = (self.xx + 460)
        global.monstermakey[0] = (self.yy + 70)
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.battlemsg[0] = scr_84_get_lang_string("scr_encountersetup_slash_scr_encountersetup_gml_517_0")
        break
    default:
    
}

