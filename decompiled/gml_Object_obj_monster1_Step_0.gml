if (global.monster[self.myself] == 1)
{
    if (global.mnfight == 1)
        _temp_local_var_1 = (self.talked == 0)
    else
        _temp_local_var_1 = 0
    if _temp_local_var_1
    {
        self.abletotarget = 1
        if (global.charcantarget[0] == 0)
        {
            if (global.charcantarget[1] == 0)
                _temp_local_var_2 = (global.charcantarget[2] == 0)
            else
                _temp_local_var_2 = 0
        }
        else
            _temp_local_var_2 = 0
        if _temp_local_var_2
            self.abletotarget = 0
        self.mytarget = choose(0, 1, 2)
        if (self.abletotarget == 1)
        {
            while(true)
            {
                if (global.charcantarget[self.mytarget] == 0)
                {
                    self.mytarget = choose(0, 1, 2)
                    continue
                }
                break
            }
        }
        else
            self.target = 3
        global.targeted[self.mytarget] = 1
        instance_create(0, 0, obj_darkener)
        global.typer = 7
        global.msg[0] = scr_84_get_lang_string("obj_monster1_slash_Step_0_gml_25_0"@7416)
        if (global.mercymod[self.myself] >= global.mercymax[self.myself])
            global.msg[0] = scr_84_get_lang_string("obj_monster1_slash_Step_0_gml_26_0"@7417)
        self.mywriter = instance_create((self.x - 60), (self.y - 30), obj_writer)
        self.talked = 1
        self.talktimer = 0
    }
    if (self.talked == 1)
        _temp_local_var_3 = (global.mnfight == 1)
    else
        _temp_local_var_3 = 0
    if _temp_local_var_3
    {
        if button1_p()
            _temp_local_var_4 = (self.talktimer > 15)
        else
            _temp_local_var_4 = 0
        if _temp_local_var_4
            self.talktimer = self.talkmax
        self.talktimer = (self.talktimer + 1)
        if (self.talktimer >= self.talkmax)
        {
            with(obj_writer)
            {
                instance_destroy()
            }
            global.mnfight = 2
        }
    }
    if (global.mnfight == 2)
        _temp_local_var_5 = (self.attacked == 0)
    else
        _temp_local_var_5 = 0
    if _temp_local_var_5
    {
        self.simp = instance_create(0, 0, self.obj_simplecontroller)
        self.simp.damage = (global.monsterat[self.myself] * 5)
        self.simp.target = self.mytarget
        self.attacked = 1
        self.rr = floor(random(5))
        if (self.rr == 0)
            global.battlemsg[0] = scr_84_get_lang_string("obj_monster1_slash_Step_0_gml_53_0"@7421)
        if (self.rr == 1)
            global.battlemsg[0] = scr_84_get_lang_string("obj_monster1_slash_Step_0_gml_54_0"@7422)
        if (self.rr == 2)
            global.battlemsg[0] = scr_84_get_lang_string("obj_monster1_slash_Step_0_gml_55_0"@7423)
        if (self.rr == 3)
            global.battlemsg[0] = scr_84_get_lang_string("obj_monster1_slash_Step_0_gml_56_0"@7424)
        if (self.rr == 4)
            global.battlemsg[0] = scr_84_get_lang_string("obj_monster1_slash_Step_0_gml_57_0"@7425)
    }
}
if (global.myfight == 3)
{
    self.xx = __view_get(e__VW.XView, 0)
    self.yy = __view_get(e__VW.YView, 0)
    if (self.acting == 1)
        _temp_local_var_6 = (self.actcon == 0)
    else
        _temp_local_var_6 = 0
    if _temp_local_var_6
    {
        self.actcon = 1
        global.msg[0] = scr_84_get_lang_string("obj_monster1_slash_Step_0_gml_75_0"@7426)
        global.typer = global.battletyper
        self.battlewriter = instance_create((self.xx + 30), (self.yy + 376), obj_writer)
        if (global.fc != 0)
            self.myface = instance_create((self.xx + 26), (self.yy + 380), obj_face)
        if (self.acting == 1)
            global.mercymod[self.myself] = (global.mercymod[self.myself] + 120)
        if (global.mercymod[self.myself] >= global.mercymax[self.myself])
            global.msg[0] = scr_84_get_lang_string("obj_monster1_slash_Step_0_gml_82_0"@7427)
    }
    if (self.acting == 2)
    {
        if (self.acttimer == 0)
        {
            global.msg[0] = scr_84_get_lang_string("obj_monster1_slash_Step_0_gml_91_0"@7428)
            global.typer = global.battletyper
            self.battlewriter = instance_create((self.xx + 130), (self.yy + 376), obj_writer)
            if (global.fc != 0)
                self.myface = instance_create((self.xx + 26), (self.yy + 380), obj_face)
        }
        if (self.acttimer == 20)
        {
            global.chartarget[0] = self.myself
            global.chartarget[1] = self.myself
            global.charspecial[0] = 1
            global.charspecial[1] = 1
            with(global.charinstance[0])
            {
                self.state = 2
            }
            with(global.charinstance[1])
            {
                self.state = 2
            }
        }
        if (self.acttimer == 40)
            self.actcon = 1
        self.acttimer = (self.acttimer + 1)
    }
    if (self.actcon == 1)
        _temp_local_var_7 = (~ instance_exists(obj_writer))
    else
        _temp_local_var_7 = 0
    if _temp_local_var_7
    {
        self.actcon = 0
        scr_attackphase()
    }
}
if (self.x > (__view_get(e__VW.XView, 0) + 800))
    _temp_local_var_8 = (global.myfight != 3)
else
    _temp_local_var_8 = 0
if _temp_local_var_8
    instance_destroy()
