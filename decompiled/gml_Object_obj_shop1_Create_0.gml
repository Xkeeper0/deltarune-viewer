self.idletimer = 0
self.idlefacer = 0
self.talkfacer = 0
self.talkbuffer = 0
self.menu = 0
self.submenu = 0
global.typer = 6
draw_set_color(0x00FFFFFF)
scr_84_set_draw_font("mainbig")
self.talktimer = 0
self.cur_jewel = 0
self.shopcharx = 0
self.siner = 0
for (self.i = 0; self.i < 20; self.i += 1)
{
    self.menuc[self.i] = 0
    self.submenuc[self.i] = 0
}
self.onebuffer = 0
self.twobuffer = 0
self.upbuffer = 0
self.downbuffer = 0
self.hold_up = 0
self.hold_down = 0
self._up_pressed = 0
self._down_pressed = 0
self.murder = 0
self.moff = 415
global.currentsong[0] = snd_init("shop1.ogg")
global.currentsong[1] = mus_loop_ext(global.currentsong[0], 1, 0.95)
self.menu = 0
self.menuc[0] = 0
self.menuc[1] = 0
self.menuc[2] = 0
self.menuc[3] = 0
self.menuc[4] = 0
self.item0pic = 908
self.item1pic = 908
self.item2pic = 908
self.item3pic = 908
self.itemtotal = 4
self.item[0] = 1
self.item[1] = 8
self.item[2] = 1
self.item[3] = 5
self.item[4] = 0
self.item[5] = 0
self.item[6] = 0
self.itemtype[0] = "item"
self.itemtype[1] = "item"
self.itemtype[2] = "armor"
self.itemtype[3] = "weapon"
self.itemtype[4] = "item"
self.itemtype[5] = "item"
self.itemtype[6] = "item"
self.shopdesc[0] = scr_84_get_lang_string("obj_shop1_slash_Create_0_gml_74_0")
self.shopdesc[1] = scr_84_get_lang_string("obj_shop1_slash_Create_0_gml_75_0")
self.shopdesc[2] = scr_84_get_lang_string("obj_shop1_slash_Create_0_gml_76_0")
self.shopdesc[3] = scr_84_get_lang_string("obj_shop1_slash_Create_0_gml_77_0")
for (self.i = 0; self.i < self.itemtotal; self.i += 1)
{
    self.itematk[self.i] = 0
    self.itemdef[self.i] = 0
    self.itemmagic[self.i] = 0
    self.canequip[self.i, 1] = 0
    self.canequip[self.i, 2] = 0
    self.canequip[self.i, 3] = 0
    if (self.itemtype[self.i] == "item")
    {
        scr_iteminfo(self.item[self.i])
        self.shopitemname[self.i] = self.itemnameb
        self.buyvalue[self.i] = self.value
    }
    if (self.itemtype[self.i] == "armor")
    {
        scr_armorinfo(self.item[self.i])
        self.shopitemname[self.i] = self.armornametemp
        self.buyvalue[self.i] = self.value
        self.itemdef[self.i] = self.armordftemp
        self.canequip[self.i, 1] = self.armorchar1temp
        self.canequip[self.i, 2] = self.armorchar2temp
        self.canequip[self.i, 3] = self.armorchar3temp
    }
    if (self.itemtype[self.i] == "weapon")
    {
        scr_weaponinfo(self.item[self.i])
        self.itematk[self.i] = self.weaponattemp
        self.itemmagic[self.i] = self.weaponmagtemp
        self.shopitemname[self.i] = self.weaponnametemp
        self.canequip[self.i, 1] = self.weaponchar1temp
        self.canequip[self.i, 2] = self.weaponchar2temp
        self.canequip[self.i, 3] = self.weaponchar3temp
        self.buyvalue[self.i] = self.value
    }
}
self.buyvalue[0] = 40
self.sell = 0
self.bought = 0
self.mainmessage = 0
self.minimenuy = 220
global.typer = 23
scr_84_set_draw_font("mainbig")
self.sidemessage = 0
self.selling = 0
global.msc = 0
self.glow = 0
self.shx = 130
self.soldo = 0
global.faceemotion = 0
self.an = 0
