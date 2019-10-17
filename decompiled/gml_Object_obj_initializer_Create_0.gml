global.damagefont = font_add_sprite_ext(spr_numbersfontbig, "0123456789", 20, 0)
global.fighting = 0
global.char[0] = 1
global.char[1] = 2
global.char[2] = 0
global.gold = 0
global.xp = 0
global.inv = 0
global.invc = 1
for (self.i = 0; self.i < 3; self.i += 1)
{
    global.charauto[self.i] = 0
    global.charmove[self.i] = 0
    global.charcantarget[self.i] = 0
    global.chardead[self.i] = 0
    global.invincible[self.i] = 1
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
    global.df[self.i] = 0
    global.mag[self.i] = 0
    for (self.j = 0; self.j < 12; self.j += 1)
        global.spell[self.i, self.j] = 0
}
global.charname[0] = " "
global.charname[1] = scr_84_get_lang_string("obj_initializer_slash_Create_0_gml_48_0")
global.charname[2] = scr_84_get_lang_string("obj_initializer_slash_Create_0_gml_49_0")
global.charname[3] = scr_84_get_lang_string("obj_initializer_slash_Create_0_gml_50_0")
global.hp[0] = 0
global.maxhp[0] = 0
global.hp[1] = 90
global.maxhp[1] = 90
global.at[1] = 10
global.hp[2] = 120
global.maxhp[2] = 120
global.at[2] = 14
global.mag[2] = 1
global.hp[3] = 70
global.maxhp[3] = 70
global.at[3] = 8
global.mag[3] = 12
global.spell[2, 0] = 4
global.spell[3, 0] = 2
scr_spellinfo_all()
global.item[0] = 1
global.item[1] = 1
global.item[2] = 1
global.item[3] = 1
global.item[4] = 1
global.item[5] = 1
global.item[6] = 1
global.item[7] = 1
global.item[8] = 1
global.item[9] = 1
global.item[10] = 1
global.item[11] = 1
global.item[12] = 0
scr_iteminfo_all()
global.l_item[0] = 1
global.l_item[1] = 1
global.l_item[2] = 2
global.l_item[3] = 2
global.l_item[4] = 1
global.l_item[5] = 1
global.l_item[6] = 2
global.l_item[7] = 2
global.l_item[8] = 1
global.l_item[9] = 1
global.l_item[10] = 2
global.l_item[11] = 1
global.l_item[12] = 0
global.tension = 500
global.maxtension = 1000
global.grazetotal = 0
global.grazeturn = 0
for (self.i = 0; self.i < 3; self.i += 1)
{
    global.monster[self.i] = 1
    global.monstername[self.i] = scr_84_get_lang_string("obj_initializer_slash_Create_0_gml_114_0")
    global.monstertype[self.i] = 1
    global.monsterat[self.i] = 3
    global.monsterdf[self.i] = 2
    global.monsterhp[self.i] = 20
    global.monstermaxhp[self.i] = 20
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
global.fc = 2
global.fe = 0
global.typer = 3
global.msg = " "
global.msc = 0
global.darkzone = 1
for (self.i = 0; self.i < 10; self.i += 1)
{
    global.smdir[self.i] = 90
    global.smspeed[self.i] = 2
    global.smface[self.i] = 505050
    global.smsprite[self.i] = 79
    global.smalarm[self.i] = 20
    global.smtype[self.i] = 0
    global.smxx[self.i] = 100
    global.smyy[self.i] = 110
    global.smcolor[self.i] = 8388736
    global.smstring[self.i] = scr_84_get_lang_string("obj_initializer_slash_Create_0_gml_158_0")
}
global.smalarm[1] = 15
global.smyy[1] = 70
global.smxx[1] = 700
global.smdir[1] = 180
global.smspeed[1] = 40
global.smtype[1] = 3
global.smsprite[1] = 78
global.smcolor[1] = 16777215
global.smstring[1] = scr_84_get_lang_string("obj_initializer_slash_Create_0_gml_169_0")
for (self.i = 0; self.i < 100; self.i += 1)
    global.msg[self.i] = "%%"
global.msg[0] = scr_84_get_lang_string("obj_initializer_slash_Create_0_gml_176_0")
global.msg[1] = scr_84_get_lang_string("obj_initializer_slash_Create_0_gml_179_0")
global.msg[2] = "%%"
global.msg[3] = scr_84_get_lang_string("obj_initializer_slash_Create_0_gml_182_0")
global.msg[4] = scr_84_get_lang_string("obj_initializer_slash_Create_0_gml_183_0")
