if keyboard_check(vk_return)
{
    if (self.active == 1)
        _temp_local_var_1 = scr_debug()
    else
        _temp_local_var_1 = 0
}
else
    _temp_local_var_1 = 0
if _temp_local_var_1
{
    self.attackno = (self.attackno + 1)
    self.active = 0
    if (self.attackno <= 11)
        self.attack = self.attackno
    else
        self.attack = choose(7, 8, 9, 10, 11)
    if (self.attack == 1)
    {
        self.box = instance_create((self.xx + 340), (self.yy + 170), obj_growtangle)
        scr_moveheart()
        self.dd = instance_create(0, 0, obj_dbulletcontroller)
        self.dd.type = 21
        self.timeruse = 1
        self.faketimermax = 190
        self.faketimer = 0
    }
    if (self.attack == 2)
    {
        self.visible = 0
        self.chainking = instance_create(self.x, self.y, obj_chainking)
        self.chainking.type = 1
        self.chainking.subtype = 0
        self.box = instance_create((self.xx + 200), (self.yy + 175), obj_nonsolid_growtangle)
        self.box.sprite_index = spr_battlebg_wavechain
        scr_moveheart()
    }
    if (self.attack == 3)
    {
        self.box = instance_create((self.xx + 340), (self.yy + 170), obj_growtangle)
        scr_moveheart()
        self.dd = instance_create(0, 0, obj_dbulletcontroller)
        self.dd.type = 34
        self.timeruse = 1
        self.faketimermax = 200
        self.faketimer = 0
    }
    if (self.attack == 4)
    {
        self.box = instance_create((self.xx + 310), (self.yy + 165), obj_growtangle)
        self.box.sprite_index = spr_battlebg_2
        scr_moveheart()
        self.damagebox = instance_create(self.box.x, self.box.y, obj_growtangle_bouncer)
        self.damagebox.type = 0
    }
    if (self.attack == 5)
    {
        self.visible = 0
        self.chainking = instance_create(self.x, self.y, obj_chainking)
        self.chainking.type = 1
        self.chainking.subtype = 1
        self.box = instance_create((self.xx + 200), (self.yy + 175), obj_nonsolid_growtangle)
        self.box.sprite_index = spr_battlebg_wavechain
        scr_moveheart()
    }
    if (self.attack == 6)
    {
        self.visible = 0
        self.timeruse = 0
        self.chainking = instance_create(self.x, self.y, obj_chainking)
        self.chainking.type = 2
        self.chainking.subtype = 2
        self.box = instance_create((self.xx + 205), (self.yy + 170), obj_nonsolid_growtangle)
        self.box.sprite_index = spr_battlebg_1
        scr_moveheart()
    }
    if (self.attack == 7)
    {
        self.box = instance_create((self.xx + 340), (self.yy + 170), obj_growtangle)
        scr_moveheart()
        self.dd = instance_create(0, 0, obj_dbulletcontroller)
        self.dd.type = 35
        self.timeruse = 1
        self.faketimermax = 220
        self.faketimer = 0
    }
    if (self.attack == 8)
    {
        self.box = instance_create((self.xx + 310), (self.yy + 165), obj_growtangle)
        self.box.sprite_index = spr_battlebg_2
        scr_moveheart()
        self.damagebox = instance_create(self.box.x, self.box.y, obj_growtangle_bouncer)
        self.damagebox.type = 3
    }
    if (self.attack == 9)
    {
        self.box = instance_create((self.xx + 340), (self.yy + 170), obj_growtangle)
        scr_moveheart()
        self.dd = instance_create(0, 0, obj_dbulletcontroller)
        self.dd.type = 23
        self.timeruse = 1
        self.faketimermax = 190
        self.faketimer = 0
    }
    if (self.attack == 10)
    {
        self.visible = 0
        self.chainking = instance_create(self.x, self.y, obj_chainking)
        self.chainking.type = 1
        self.chainking.subtype = 2
        self.box = instance_create((self.xx + 200), (self.yy + 175), obj_nonsolid_growtangle)
        self.box.sprite_index = spr_battlebg_wavechain
        scr_moveheart()
    }
    if (self.attack == 11)
    {
        self.visible = 0
        self.timeruse = 0
        self.chainking = instance_create(self.x, self.y, obj_chainking)
        self.chainking.type = 2
        self.chainking.subtype = 1
        self.box = instance_create((self.xx + 205), (self.yy + 170), obj_nonsolid_growtangle)
        self.box.sprite_index = spr_battlebg_1
        scr_moveheart()
    }
}
if (self.timeruse == 1)
{
    self.faketimer = (self.faketimer + 1)
    if (self.faketimer >= self.faketimermax)
    {
        with(obj_bulletparent)
        {
            instance_destroy()
        }
        with(obj_dbulletcontroller)
        {
            instance_destroy()
        }
        with(obj_growtangle)
        {
            self.growcon = 3
        }
        with(obj_heart)
        {
            instance_destroy()
        }
        self.active = 1
        self.timeruse = 0
        self.faketimer = 0
    }
}
if keyboard_check_pressed(' ')
    _temp_local_var_2 = scr_debug()
else
    _temp_local_var_2 = 0
if _temp_local_var_2
    self.attackno = (self.attackno + 1)
if keyboard_check_pressed(vk_shift)
    _temp_local_var_3 = scr_debug()
else
    _temp_local_var_3 = 0
if _temp_local_var_3
    self.attackno = (self.attackno - 1)
