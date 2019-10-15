self.curtotal = 0
self.funbuffer = (self.funbuffer - 1)
self.i = 0
while(true)
{
    if (self.i < self.tiletotal)
    {
        if (self.tileid[self.i].stepped == 1)
            self.curtotal = (self.curtotal + 1)
        self.i = (self.i + 1)
        continue
    }
    break
}
if (self.curtotal == self.funtotal)
    _temp_local_var_1 = (self.funbuffer < -1)
else
    _temp_local_var_1 = 0
if _temp_local_var_1
{
    if (self.room == room_field_puzzle1)
    {
        with(self.block[self.wonamt])
        {
            instance_destroy()
        }
        with(self.spike1[self.wonamt])
        {
            self.image_index = 1
        }
        with(self.spike2[self.wonamt])
        {
            self.image_index = 1
        }
    }
    self.wonamt = (self.wonamt + 1)
    snd_play(snd_break1)
    self.funbuffer = 7
    if (self.wonamt == self.wonmax)
    {
        if (self.room == room_field_puzzle2)
            self.shakecon = 1
        if (global.plot < self.plotamt)
            global.plot = self.plotamt
        self.active = 2
        self.sprite_index = spr_hourglass_switch_off
        self.funbuffer = -1
        with(obj_glowtile)
        {
            self.active = 0
            self.stepped = 0
            self.stepbuffer = -1
            self.sprite_index = spr_glowtile_off
        }
    }
}
if (self.funbuffer == 4)
{
    with(obj_glowtile)
    {
        self.active = 0
        self.stepped = 0
        self.stepbuffer = -1
        self.sprite_index = spr_glowtile_off
    }
}
if (self.funbuffer == 1)
    event_user(2)
if (self.stepnoise == 1)
{
    snd_play(snd_step1)
    self.stepnoise = 0
}
if (self.active == 1)
{
    self.failtimer = (self.failtimer + 1)
    self.image_index = (self.failtimer / (self.failmax / 8))
    if (self.failtimer >= self.failmax)
    {
        self.active = 0
        self.sprite_index = spr_hourglass_switch_off
        snd_play(snd_noise)
        self.failamt = (self.failamt + 1)
        if (self.failamt >= 3)
        {
            if (self.talked == 0)
            {
                if (global.interact == 0)
                {
                    if (obj_darkcontroller.atalk == 0)
                        _temp_local_var_2 = (self.room == room_field_puzzle1)
                    else
                        _temp_local_var_2 = 0
                }
                else
                    _temp_local_var_2 = 0
            }
            else
                _temp_local_var_2 = 0
        }
        else
            _temp_local_var_2 = 0
        if _temp_local_var_2
        {
            self.talked = 1
            global.interact = 1
            global.fc = 2
            global.typer = 31
            global.fe = 1
            global.msg[0] = scr_84_get_lang_string("obj_glowtilepuzz_slash_Step_0_gml_77_0"@7506)
            global.msg[1] = ((scr_84_get_lang_string("obj_glowtilepuzz_slash_Step_0_gml_78_0"@7507) + scr_get_input_name(5)) + scr_84_get_lang_string("obj_glowtilepuzz_slash_Step_0_gml_78_1"@7508))
            instance_create(0, 0, obj_dialoguer)
        }
        if (self.failamt >= 3)
        {
            if (self.talked == 0)
            {
                if (global.interact == 0)
                    _temp_local_var_3 = (self.room == room_field_puzzle2)
                else
                    _temp_local_var_3 = 0
            }
            else
                _temp_local_var_3 = 0
        }
        else
            _temp_local_var_3 = 0
        if _temp_local_var_3
        {
            self.talked = 1
            global.interact = 1
            global.fc = 2
            global.typer = 31
            global.fe = 1
            if (~ scr_havechar(2))
            {
                global.msg[0] = scr_84_get_lang_string("obj_glowtilepuzz_slash_Step_0_gml_91_0"@7509)
                global.msg[1] = scr_84_get_lang_string("obj_glowtilepuzz_slash_Step_0_gml_92_0"@7510)
            }
            if scr_havechar(2)
                _temp_local_var_4 = (obj_darkcontroller.atalk == 0)
            else
                _temp_local_var_4 = 0
            if _temp_local_var_4
            {
                global.msg[0] = scr_84_get_lang_string("obj_glowtilepuzz_slash_Step_0_gml_98_0"@7511)
                global.msg[1] = scr_84_get_lang_string("obj_glowtilepuzz_slash_Step_0_gml_99_0"@7512)
                scr_susface(2, 2)
                global.msg[3] = scr_84_get_lang_string("obj_glowtilepuzz_slash_Step_0_gml_101_0"@7513)
            }
            if scr_havechar(2)
                _temp_local_var_5 = (obj_darkcontroller.atalk == 1)
            else
                _temp_local_var_5 = 0
            if _temp_local_var_5
            {
                global.fc = 1
                global.fe = 0
                global.typer = 30
                global.msg[0] = scr_84_get_lang_string("obj_glowtilepuzz_slash_Step_0_gml_110_0"@7514)
                global.msg[1] = scr_84_get_lang_string("obj_glowtilepuzz_slash_Step_0_gml_111_0"@7515)
                scr_ralface(2, 8)
                global.msg[3] = ((scr_84_get_lang_string("obj_glowtilepuzz_slash_Step_0_gml_113_0"@7516) + scr_get_input_name(5)) + scr_84_get_lang_string("obj_glowtilepuzz_slash_Step_0_gml_113_1"@7517))
            }
            instance_create(0, 0, obj_dialoguer)
        }
        with(obj_glowtile)
        {
            self.active = 0
            self.stepped = 0
            self.stepbuffer = -1
            self.sprite_index = spr_glowtile_off
        }
    }
}
if (self.talked == 1)
    _temp_local_var_6 = (d_ex() == 0)
else
    _temp_local_var_6 = 0
if _temp_local_var_6
{
    self.talked = 2
    global.interact = 0
}
if (self.shakecon == 1)
    _temp_local_var_7 = (global.interact == 0)
else
    _temp_local_var_7 = 0
if _temp_local_var_7
{
    global.interact = 1
    snd_play(snd_locker)
    instance_create(0, 0, obj_shake)
    self.shakecon = 2
}
if (self.shakecon == 2)
    _temp_local_var_8 = (~ instance_exists(obj_shake))
else
    _temp_local_var_8 = 0
if _temp_local_var_8
{
    global.fc = 0
    global.typer = 6
    global.msg[0] = scr_84_get_lang_string("obj_glowtilepuzz_slash_Step_0_gml_148_0"@7518)
    instance_create(0, 0, obj_dialoguer)
    self.shakecon = 3
}
if (self.shakecon == 3)
    _temp_local_var_9 = (d_ex() == 0)
else
    _temp_local_var_9 = 0
if _temp_local_var_9
{
    global.interact = 0
    self.shakecon = 4
}
