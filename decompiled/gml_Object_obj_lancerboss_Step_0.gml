if (global.monster[self.myself] == 1)
{
    if (global.mnfight == 1)
        _temp_local_var_1 = (self.talked == 0)
    else
        _temp_local_var_1 = 0
    if _temp_local_var_1
    {
        scr_randomtarget()
        global.flag[(51 + self.myself)] = 4
        global.targeted[self.mytarget] = 1
        if (~ instance_exists(obj_darkener))
            instance_create(0, 0, obj_darkener)
        global.typer = 50
        if (self.turns == 0)
            global.msg[0] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_17_0"@8562)
        if (self.turns == 1)
            global.msg[0] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_18_0"@8563)
        if (self.turns == 2)
            global.msg[0] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_19_0"@8564)
        if (self.turns >= 3)
            global.msg[0] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_20_0"@8565)
        if (self.compliment_just == 1)
        {
            if (self.compliment == 1)
                global.msg[0] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_26_0"@8566)
            if (self.compliment == 2)
                global.msg[0] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_30_0"@8567)
            if (self.compliment == 3)
                global.msg[0] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_34_0"@8568)
            self.compliment_just = 0
        }
        scr_enemyblcon((self.x - 235), (self.y - 65), 3)
        self.talked = 1
        self.talktimer = 0
    }
    if (self.talked == 1)
        _temp_local_var_2 = (global.mnfight == 1)
    else
        _temp_local_var_2 = 0
    if _temp_local_var_2
    {
        if button1_p()
            _temp_local_var_3 = (self.talktimer > 15)
        else
            _temp_local_var_3 = 0
        if _temp_local_var_3
            self.talktimer = self.talkmax
        self.talktimer = (self.talktimer + 1)
        if (self.talktimer >= self.talkmax)
        {
            if (~ instance_exists(obj_moveheart))
                scr_moveheart()
            if (~ instance_exists(obj_growtangle))
                instance_create((__view_get(e__VW.XView, 0) + 320), (__view_get(e__VW.YView, 0) + 170), obj_growtangle)
            with(obj_writer)
            {
                instance_destroy()
            }
            global.mnfight = 2
        }
    }
    if (global.mnfight == 2)
        _temp_local_var_4 = (self.attacked == 0)
    else
        _temp_local_var_4 = 0
    if _temp_local_var_4
    {
        if (self.attacks == 0)
        {
            self.bike = instance_create(self.x, self.y, obj_lancerbike)
            self.visible = 0
            self.bike.racecon = 1
            self.bike.target = self.mytarget
            self.bike.damage = (global.monsterat[self.myself] * 5)
            self.attacks = 1
        }
        else
        {
            self.bike = instance_create(self.x, self.y, obj_lancerbike)
            self.visible = 0
            self.bike.lcon = 1
            self.bike.target = self.mytarget
            self.bike.damage = (global.monsterat[self.myself] * 5)
            self.attacks = 0
        }
        self.turns = (self.turns + 1)
        global.turntimer = 999
        self.attacked = 1
        self.rr = floor(random(5))
        global.typer = 6
        global.fc = 0
        if (self.rr == 0)
            global.battlemsg[0] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_90_0"@8570)
        if (self.rr == 1)
            global.battlemsg[0] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_91_0"@8571)
        if (self.rr == 2)
            global.battlemsg[0] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_92_0"@8572)
        if (self.rr == 3)
            global.battlemsg[0] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_93_0"@8573)
        if (self.rr == 4)
            global.battlemsg[0] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_94_0"@8574)
        if (self.turns == 1)
        {
            global.typer = 47
            global.fc = 1
            global.fe = 2
            global.battlemsg[0] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_100_0"@8575)
        }
    }
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
        global.msg[0] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_118_0"@8576)
        global.msg[1] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_119_0"@8577)
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
            global.msg[0] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_130_0"@8578)
            global.automiss[self.myself] = 1
        }
        else
            global.msg[0] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_135_0"@8579)
        scr_battletext_default()
    }
    if (self.acting == 3)
        _temp_local_var_7 = (self.actcon == 0)
    else
        _temp_local_var_7 = 0
    if _temp_local_var_7
    {
        if (self.compliment >= 3)
            global.msg[0] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_145_0"@8580)
        if (self.compliment == 2)
        {
            global.msg[0] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_150_0"@8581)
            global.msg[1] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_151_0"@8582)
            scr_mercyadd(self.myself, 20)
        }
        if (self.compliment == 1)
        {
            global.msg[0] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_157_0"@8583)
            global.msg[1] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_158_0"@8584)
            scr_mercyadd(self.myself, 20)
            global.monsterat[self.myself] = (global.monsterat[self.myself] + 1)
        }
        if (self.compliment == 0)
        {
            global.msg[0] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_164_0"@8585)
            global.msg[1] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_165_0"@8586)
            scr_mercyadd(self.myself, 20)
            global.monsterat[self.myself] = (global.monsterat[self.myself] - 1)
        }
        self.compliment_just = 1
        self.compliment = (self.compliment + 1)
        scr_battletext_default()
        self.actcon = 1
    }
    if (self.actcon == 1)
        _temp_local_var_8 = (~ instance_exists(obj_writer))
    else
        _temp_local_var_8 = 0
    if _temp_local_var_8
    {
        self.actcon = 0
        scr_attackphase()
    }
}
if (self.con == 1)
{
    self.alarm[4] = 5
    self.con = 2
}
if (self.con == 3)
{
    global.typer = 50
    global.msg[0] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_196_0"@8587)
    global.msg[1] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_197_0"@8588)
    global.msg[2] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_198_0"@8589)
    global.msg[3] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_199_0"@8590)
    global.msg[4] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_200_0"@8591)
    global.msg[5] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_201_0"@8592)
    global.msg[6] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_202_0"@8593)
    self.con = 4
    scr_enemyblcon((self.x - 235), (self.y - 65), 3)
}
if (self.con == 4)
    _temp_local_var_9 = (~ instance_exists(obj_writer))
else
    _temp_local_var_9 = 0
if _temp_local_var_9
{
    self.hspeed = 20
    self.con = 5
    self.alarm[4] = 15
    with(obj_battlecontroller)
    {
        self.noreturn = 0
        self.alarm[2] = 17
    }
}
if (self.con == 6)
{
    global.monsterexp[self.myself] = (global.monsterexp[self.myself] - 0)
    global.monstergold[self.myself] = (global.monstergold[self.myself] + 10)
    if (global.plot < 22)
        global.plot = 22
    scr_monsterdefeat()
    instance_destroy()
    self.con = 7
}
