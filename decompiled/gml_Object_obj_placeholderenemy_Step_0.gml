if (global.monster[self.myself] == 1)
{
    if (global.mnfight == 1)
        _temp_local_var_1 = (self.talked == 0)
    else
        _temp_local_var_1 = 0
    if _temp_local_var_1
    {
        scr_randomtarget()
        if (~ instance_exists(obj_darkener))
            instance_create(0, 0, obj_darkener)
        global.typer = 50
        self.rr = choose(0, 1, 2, 3)
        if (self.rr == 0)
            global.msg[0] = scr_84_get_lang_string("obj_placeholderenemy_slash_Step_0_gml_11_0"@7938)
        if (self.rr == 1)
            global.msg[0] = scr_84_get_lang_string("obj_placeholderenemy_slash_Step_0_gml_12_0"@7939)
        if (self.rr == 2)
            global.msg[0] = scr_84_get_lang_string("obj_placeholderenemy_slash_Step_0_gml_13_0"@7940)
        if (self.rr == 3)
            global.msg[0] = scr_84_get_lang_string("obj_placeholderenemy_slash_Step_0_gml_14_0"@7941)
        global.msg[0] = scr_84_get_lang_string("obj_placeholderenemy_slash_Step_0_gml_16_0"@7942)
        scr_enemyblcon((self.x - 160), self.y, 3)
        self.talked = 1
        self.talktimer = 0
    }
    if (self.talked == 1)
        _temp_local_var_2 = (global.mnfight == 1)
    else
        _temp_local_var_2 = 0
    if _temp_local_var_2
    {
        self.rtimer = 0
        scr_blconskip(15)
        if (global.mnfight == 2)
        {
            if (~ instance_exists(obj_moveheart))
                scr_moveheart()
            if (~ instance_exists(obj_growtangle))
                instance_create((__view_get(e__VW.XView, 0) + 320), (__view_get(e__VW.YView, 0) + 170), obj_growtangle)
        }
    }
    if (global.mnfight == 2)
        _temp_local_var_3 = (self.attacked == 0)
    else
        _temp_local_var_3 = 0
    if _temp_local_var_3
    {
        self.rtimer = (self.rtimer + 1)
        if (self.rtimer == 12)
        {
            self.rr = choose(0, 1)
            if (self.rr == 0)
            {
                self.dc = instance_create(self.x, self.y, obj_dbulletcontroller)
                self.dc.type = 0
                self.dc.damage = (global.monsterat[self.myself] * 5)
                self.dc.target = self.mytarget
            }
            else
            {
                self.dc = instance_create(self.x, self.y, obj_dbulletcontroller)
                self.dc.type = 1
                self.dc.damage = (global.monsterat[self.myself] * 5)
                self.dc.target = self.mytarget
            }
            self.turns = (self.turns + 1)
            global.turntimer = 140
            self.attacked = 1
            global.typer = 6
            global.fc = 0
            self.rr = choose(0, 1, 2, 3)
            if (self.rr == 0)
                global.battlemsg[0] = scr_84_get_lang_string("obj_placeholderenemy_slash_Step_0_gml_63_0"@7944)
            if (self.rr == 1)
                global.battlemsg[0] = scr_84_get_lang_string("obj_placeholderenemy_slash_Step_0_gml_64_0"@7945)
            if (self.rr == 2)
                global.battlemsg[0] = scr_84_get_lang_string("obj_placeholderenemy_slash_Step_0_gml_65_0"@7946)
            if (self.rr == 3)
                global.battlemsg[0] = scr_84_get_lang_string("obj_placeholderenemy_slash_Step_0_gml_66_0"@7947)
        }
        else
            global.turntimer = 120
    }
    if (global.mnfight == 2)
    {
        if (global.turntimer <= 1)
        {
            if (self.battlecancel == 1)
                global.mercymod[self.myself] = 999
            if (self.battlecancel == 2)
            {
                with(obj_battlecontroller)
                {
                    self.noreturn = 1
                }
                self.con = 1
                self.battlecancel = 3
            }
        }
    }
}
if (self.con == 1)
{
    self.con = 2
    self.alarm[4] = 10
}
if (self.con == 3)
{
    global.typer = 50
    global.msg[0] = scr_84_get_lang_string("obj_placeholderenemy_slash_Step_0_gml_99_0"@7948)
    scr_enemyblcon((self.x - 160), self.y, 3)
    self.con = 4
}
if (self.con == 4)
    _temp_local_var_4 = (~ instance_exists(obj_writer))
else
    _temp_local_var_4 = 0
if _temp_local_var_4
{
    self.hspeed = 15
    self.con = 5
    self.alarm[4] = 15
    with(obj_battlecontroller)
    {
        self.alarm[2] = 17
    }
}
if (self.con == 6)
{
    with(obj_battlecontroller)
    {
        self.noreturn = 0
    }
    scr_monsterdefeat()
    instance_destroy()
    self.con = 7
}
if (global.myfight == 3)
{
    self.xx = __view_get(e__VW.XView, 0)
    self.yy = __view_get(e__VW.YView, 0)
    if (self.acting == 1)
        _temp_local_var_5 = (self.actcon == 0)
    else
        _temp_local_var_5 = 0
    if _temp_local_var_5
    {
        self.actcon = 1
        global.msg[0] = scr_84_get_lang_string("obj_placeholderenemy_slash_Step_0_gml_135_0"@7949)
        scr_battletext_default()
    }
    if (self.acting == 2)
        _temp_local_var_6 = (self.actcon == 0)
    else
        _temp_local_var_6 = 0
    if _temp_local_var_6
    {
        self.actcon = 1
        if (global.automiss[self.myself] == 0)
        {
            global.msg[0] = scr_84_get_lang_string("obj_placeholderenemy_slash_Step_0_gml_146_0"@7950)
            global.monstercomment[self.myself] = scr_84_get_lang_string("obj_placeholderenemy_slash_Step_0_gml_147_0"@7951)
            global.automiss[self.myself] = 1
        }
        scr_battletext_default()
    }
    if (self.acting == 3)
        _temp_local_var_7 = (self.actcon == 0)
    else
        _temp_local_var_7 = 0
    if _temp_local_var_7
    {
        global.msg[0] = scr_84_get_lang_string("obj_placeholderenemy_slash_Step_0_gml_156_0"@7952)
        global.mercymod[self.myself] = (global.mercymod[self.myself] + 200)
        scr_battletext_default()
        self.actcon = 1
    }
    if (self.acting == 4)
        _temp_local_var_8 = (self.actcon == 0)
    else
        _temp_local_var_8 = 0
    if _temp_local_var_8
    {
        global.msg[0] = scr_84_get_lang_string("obj_placeholderenemy_slash_Step_0_gml_164_0"@7953)
        self.battlecancel = 1
        scr_battletext_default()
        self.actcon = 1
    }
    if (self.acting == 5)
        _temp_local_var_9 = (self.actcon == 0)
    else
        _temp_local_var_9 = 0
    if _temp_local_var_9
    {
        global.msg[0] = scr_84_get_lang_string("obj_placeholderenemy_slash_Step_0_gml_172_0"@7954)
        self.battlecancel = 2
        scr_battletext_default()
        self.actcon = 1
    }
    if (self.acting == 6)
        _temp_local_var_10 = (self.actcon == 0)
    else
        _temp_local_var_10 = 0
    if _temp_local_var_10
    {
        global.msg[0] = scr_84_get_lang_string("obj_placeholderenemy_slash_Step_0_gml_180_0"@7955)
        global.monstercomment[self.myself] = scr_84_get_lang_string("obj_placeholderenemy_slash_Step_0_gml_181_0"@7956)
        global.monsterstatus[self.myself] = 1
        scr_battletext_default()
        self.actcon = 1
    }
    if (self.actcon == 1)
        _temp_local_var_11 = (~ instance_exists(obj_writer))
    else
        _temp_local_var_11 = 0
    if _temp_local_var_11
    {
        self.actcon = 0
        scr_attackphase()
    }
}
if (global.myfight == 7)
    self.hspeed = 15
