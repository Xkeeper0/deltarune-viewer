global.darkzone = 0
global.filechoice = 0
global.plot = 0
global.truename = ""
global.othername[0] = ""
global.othername[1] = ""
global.othername[2] = ""
global.othername[3] = ""
global.othername[4] = ""
global.othername[5] = ""
global.othername[6] = ""
global.time = 0
global.fighting = 0
global.char[0] = 1
global.char[1] = 0
global.char[2] = 0
global.gold = 0
global.xp = 0
global.lv = 1
global.inv = 0
global.invc = 1
global.charselect = -1
global.encounterno = 1
global.specialbattle = 0
for (self.i = 0; self.i < 3; self.i += 1)
{
    global.heromakex[self.i] = 100
    global.heromakey[self.i] = 200
    global.charauto[self.i] = 0
    global.charmove[self.i] = 0
    global.charcantarget[self.i] = 0
    global.chardead[self.i] = 0
    global.invincible[self.i] = 1
    global.charaction[self.i] = 0
    global.faceaction[self.i] = 0
    global.charcond[self.i] = 0
}
global.charauto[0] = 0
global.charauto[1] = 0
global.charauto[2] = 1
global.charauto[3] = 0
for (self.i = 0; self.i < 4; self.i += 1)
{
    global.hp[self.i] = 200
    global.maxhp[self.i] = 250
    global.at[self.i] = 10
    global.df[self.i] = 2
    global.mag[self.i] = 0
    global.guts[self.i] = 0
    global.charweapon[self.i] = 1
    global.chararmor1[self.i] = 0
    global.chararmor2[self.i] = 0
    global.weaponstyle[self.i] = scr_84_get_lang_string("scr_gamestart_slash_scr_gamestart_gml_69_0")
    for (self.q = 0; self.q < 4; self.q += 1)
    {
        global.itemat[self.i, self.q] = 0
        global.itemdf[self.i, self.q] = 0
        global.itemmag[self.i, self.q] = 0
        global.itembolts[self.i, self.q] = 0
        global.itemgrazeamt[self.i, self.q] = 0
        global.itemgrazesize[self.i, self.q] = 0
        global.itemboltspeed[self.i, self.q] = 0
        global.itemspecial[self.i, self.q] = 0
    }
    for (self.j = 0; self.j < 12; self.j += 1)
        global.spell[self.i, self.j] = 0
}
global.boltspeed = 100
global.grazeamt = 100
global.grazesize = 100
global.charname[0] = " "
global.charname[1] = scr_84_get_lang_string("scr_gamestart_slash_scr_gamestart_gml_98_0")
global.charname[2] = scr_84_get_lang_string("scr_gamestart_slash_scr_gamestart_gml_99_0")
global.charname[3] = scr_84_get_lang_string("scr_gamestart_slash_scr_gamestart_gml_100_0")
global.charweapon[0] = 0
global.chararmor1[0] = 0
global.chararmor2[0] = 0
global.hp[0] = 0
global.maxhp[0] = 0
global.hp[1] = 90
global.maxhp[1] = 90
global.at[1] = 10
global.charweapon[2] = 2
global.hp[2] = 110
global.maxhp[2] = 110
global.at[2] = 14
global.mag[2] = 1
global.charweapon[3] = 3
global.hp[3] = 70
global.maxhp[3] = 70
global.at[3] = 8
global.mag[3] = 7
global.spell[1, 0] = 7
global.spell[2, 0] = 4
global.spell[3, 0] = 3
global.spell[3, 1] = 2
scr_spellinfo_all()
global.item[0] = 0
global.item[1] = 0
global.item[2] = 0
global.item[3] = 0
global.item[4] = 0
global.item[5] = 0
global.item[6] = 0
global.item[7] = 0
global.item[8] = 0
global.item[9] = 0
global.item[10] = 0
global.item[11] = 0
global.item[12] = 0
global.keyitem[0] = 1
global.keyitem[1] = 0
global.keyitem[2] = 0
global.keyitem[3] = 0
global.keyitem[4] = 0
global.keyitem[5] = 0
global.keyitem[6] = 0
global.keyitem[7] = 0
global.keyitem[8] = 0
global.keyitem[9] = 0
global.keyitem[10] = 0
global.keyitem[11] = 0
global.keyitem[12] = 0
global.weapon[0] = 0
global.weapon[1] = 0
global.weapon[2] = 0
global.weapon[3] = 0
global.weapon[4] = 0
global.weapon[5] = 0
global.weapon[6] = 0
global.weapon[7] = 0
global.weapon[8] = 0
global.weapon[9] = 0
global.weapon[10] = 0
global.weapon[11] = 0
global.weapon[12] = 0
global.armor[0] = 0
global.armor[1] = 0
global.armor[2] = 0
global.armor[3] = 0
global.armor[4] = 0
global.armor[5] = 0
global.armor[6] = 0
global.armor[7] = 0
global.armor[8] = 0
global.armor[9] = 0
global.armor[10] = 0
global.armor[11] = 0
global.armor[12] = 0
scr_iteminfo_all()
global.tension = 0
global.maxtension = 250
global.grazetotal = 0
global.grazeturn = 0
for (self.i = 0; self.i < 3; self.i += 1)
{
    global.monstermakex[self.i] = 500
    global.monstermakey[self.i] = 240
    global.monsterinstancetype[self.i] = 2283728
    global.monster[self.i] = 1
    global.monstername[self.i] = scr_84_get_lang_string("scr_gamestart_slash_scr_gamestart_gml_206_0")
    global.monstertype[self.i] = 1
    global.monsterat[self.i] = 3
    global.monsterdf[self.i] = 2
    global.monsterhp[self.i] = 20
    global.monstermaxhp[self.i] = 20
    global.sparepoint[self.i] = 0
}
global.bmenuno = 0
for (self.i = 0; self.i < 20; self.i += 1)
{
    for (self.j = 0; self.j < 20; self.j += 1)
        global.bmenucoord[self.i, self.j] = 0
}
global.myfight = 0
global.mnfight = 0
draw_set_color(0x00FFFFFF)
global.fc = 0
global.fe = 0
global.typer = 5
global.msg = " "
global.msc = 0
for (self.i = 0; self.i < 10; self.i += 1)
{
    global.writersnd[self.i] = 38
    global.writerimg[self.i] = scr_84_get_sprite("spr_btact")
    global.smdir[self.i] = 90
    global.smspeed[self.i] = 2
    global.smface[self.i] = 505050
    global.smsprite[self.i] = 79
    global.smalarm[self.i] = 20
    global.smtype[self.i] = 0
    global.smxx[self.i] = 100
    global.smyy[self.i] = 110
    global.smcolor[self.i] = 8388736
    global.smstring[self.i] = " "
}
global.smalarm[1] = 15
global.smyy[1] = 70
global.smxx[1] = 700
global.smdir[1] = 180
global.smspeed[1] = 40
global.smtype[1] = 3
global.smsprite[1] = 78
global.smcolor[1] = 16777215
global.smstring[1] = " "
for (self.i = 0; self.i < 100; self.i += 1)
    global.msg[self.i] = "%%"
global.msg[0] = " "
global.msg[1] = " "
global.msg[2] = " "
global.msg[3] = " "
global.msg[4] = " "
global.currentsong[0] = 148
global.currentsong[1] = 148
global.batmusic[0] = 148
global.batmusic[1] = 148
global.debug = 0
global.fc = 0
global.fe = 0
global.choice = -1
global.seriousbattle = 0
global.interact = 0
global.entrance = 0
for (self.i = 0; self.i < 9; self.i += 1)
{
    global.litem[self.i] = 0
    global.litemname[self.i] = ""
    global.phone[self.i] = 0
    global.phonename[self.i] = ""
}
for (self.i = 0; self.i < 20; self.i += 1)
    global.menucoord[self.i] = 0
for (self.i = 0; self.i < 100; self.i += 1)
    global.msg[self.i] = " "
global.choicemsg[0] = scr_84_get_lang_string("scr_gamestart_slash_scr_gamestart_gml_325_0")
global.choicemsg[1] = scr_84_get_lang_string("scr_gamestart_slash_scr_gamestart_gml_326_0")
global.choicemsg[2] = scr_84_get_lang_string("scr_gamestart_slash_scr_gamestart_gml_327_0")
global.choicemsg[3] = scr_84_get_lang_string("scr_gamestart_slash_scr_gamestart_gml_328_0")
for (self.i = 0; self.i < 9999; self.i += 1)
    global.flag[self.i] = 0
global.litem[0] = 0
global.litemname[0] = " "
global.phone[0] = 201
global.phonename[0] = scr_84_get_lang_string("scr_gamestart_slash_scr_gamestart_gml_343_0")
global.lcharname = scr_84_get_lang_string("scr_gamestart_slash_scr_gamestart_gml_345_0")
global.lweapon = 2
global.larmor = 3
global.lxp = 0
global.llv = 1
global.lgold = 2
global.lhp = 20
global.lmaxhp = 20
global.lat = 10
global.ldf = 10
global.lwstrength = 1
global.ladef = 0
global.facing = 0
global.flag[15] = 1
global.flag[16] = 1
global.flag[17] = 1
for (self.i = 0; self.i < 10; self.i += 1)
{
    global.input_pressed[self.i] = 0
    global.input_held[self.i] = 0
    global.input_released[self.i] = 0
}
