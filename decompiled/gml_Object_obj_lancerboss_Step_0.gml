if (global.monster[self.myself] == 1)
{
    if ((global.mnfight == 1) && (self.talked == 0))
    {
        scr_randomtarget()
        global.flag[(51 + self.myself)] = 4
        global.targeted[self.mytarget] = 1
        if (!instance_exists(obj_darkener))
            instance_create(0, 0, obj_darkener)
        global.typer = 50
        if (self.turns == 0)
            global.msg[0] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_17_0")
        if (self.turns == 1)
            global.msg[0] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_18_0")
        if (self.turns == 2)
            global.msg[0] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_19_0")
        if (self.turns >= 3)
            global.msg[0] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_20_0")
        if (self.compliment_just == 1)
        {
            if (self.compliment == 1)
                global.msg[0] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_26_0")
            if (self.compliment == 2)
                global.msg[0] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_30_0")
            if (self.compliment == 3)
                global.msg[0] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_34_0")
            self.compliment_just = 0
        }
        scr_enemyblcon((self.x - 235), (self.y - 65), 3)
        self.talked = 1
        self.talktimer = 0
    }
    if ((self.talked == 1) && (global.mnfight == 1))
    {
        if (button1_p() && (self.talktimer > 15))
            self.talktimer = self.talkmax
        self.talktimer += 1
        if (self.talktimer >= self.talkmax)
        {
            if (!instance_exists(obj_moveheart))
                scr_moveheart()
            if (!instance_exists(obj_growtangle))
                instance_create((__view_get(0, 0) + 320), (__view_get(1, 0) + 170), obj_growtangle)
            with (obj_writer)
                instance_destroy()
            global.mnfight = 2
        }
    }
    if ((global.mnfight == 2) && (self.attacked == 0))
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
        self.turns += 1
        global.turntimer = 999
        self.attacked = 1
        self.rr = floor(random(5))
        global.typer = 6
        global.fc = 0
        if (self.rr == 0)
            global.battlemsg[0] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_90_0")
        if (self.rr == 1)
            global.battlemsg[0] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_91_0")
        if (self.rr == 2)
            global.battlemsg[0] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_92_0")
        if (self.rr == 3)
            global.battlemsg[0] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_93_0")
        if (self.rr == 4)
            global.battlemsg[0] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_94_0")
        if (self.turns == 1)
        {
            global.typer = 47
            global.fc = 1
            global.fe = 2
            global.battlemsg[0] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_100_0")
        }
    }
}
if (global.myfight == 3)
{
    self.xx = __view_get(0, 0)
    self.yy = __view_get(1, 0)
    if ((self.acting == 1) && (self.actcon == 0))
    {
        self.actcon = 1
        global.msg[0] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_118_0")
        global.msg[1] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_119_0")
        scr_battletext_default()
    }
    if ((self.acting == 2) && (self.actcon == 0))
    {
        self.actcon = 1
        if (global.automiss[self.myself] == 0)
        {
            global.msg[0] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_130_0")
            global.automiss[self.myself] = 1
        }
        else
            global.msg[0] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_135_0")
        scr_battletext_default()
    }
    if ((self.acting == 3) && (self.actcon == 0))
    {
        if (self.compliment >= 3)
            global.msg[0] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_145_0")
        if (self.compliment == 2)
        {
            global.msg[0] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_150_0")
            global.msg[1] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_151_0")
            scr_mercyadd(self.myself, 20)
        }
        if (self.compliment == 1)
        {
            global.msg[0] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_157_0")
            global.msg[1] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_158_0")
            scr_mercyadd(self.myself, 20)
            global.monsterat[self.myself] += 1
        }
        if (self.compliment == 0)
        {
            global.msg[0] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_164_0")
            global.msg[1] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_165_0")
            scr_mercyadd(self.myself, 20)
            global.monsterat[self.myself] -= 1
        }
        self.compliment_just = 1
        self.compliment += 1
        scr_battletext_default()
        self.actcon = 1
    }
    if ((self.actcon == 1) && (!instance_exists(obj_writer)))
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
    global.msg[0] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_196_0")
    global.msg[1] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_197_0")
    global.msg[2] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_198_0")
    global.msg[3] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_199_0")
    global.msg[4] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_200_0")
    global.msg[5] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_201_0")
    global.msg[6] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_202_0")
    self.con = 4
    scr_enemyblcon((self.x - 235), (self.y - 65), 3)
}
if ((self.con == 4) && (!instance_exists(obj_writer)))
{
    self.hspeed = 20
    self.con = 5
    self.alarm[4] = 15
    with (obj_battlecontroller)
    {
        self.noreturn = 0
        self.alarm[2] = 17
    }
}
if (self.con == 6)
{
    global.monsterexp[self.myself] -= 0
    global.monstergold[self.myself] += 10
    if (global.plot < 22)
        global.plot = 22
    scr_monsterdefeat()
    instance_destroy()
    self.con = 7
}
