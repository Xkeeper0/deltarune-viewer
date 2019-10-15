scr_depth()
self.wallcheck = 0
self.nowx = self.x
self.nowy = self.y
if (self.press_d == 0)
{
    if (self.press_l == 0)
    {
        if (self.press_u == 0)
            _temp_local_var_1 = (self.press_r == 0)
        else
            _temp_local_var_1 = 0
    }
    else
        _temp_local_var_1 = 0
}
else
    _temp_local_var_1 = 0
if _temp_local_var_1
    self.nopress = 1
self.press_l = 0
self.press_r = 0
self.press_d = 0
self.press_u = 0
self.bkx = 0
self.bky = 0
self.bkxy = 0
self.jelly = 2
if (global.interact == 0)
{
    if button3_p()
        _temp_local_var_2 = (self.threebuffer < 0)
    else
        _temp_local_var_2 = 0
    if _temp_local_var_2
    {
        if (global.flag[7] == 0)
            _temp_local_var_3 = (self.battlemode == 0)
        else
            _temp_local_var_3 = 0
        if _temp_local_var_3
        {
            with(obj_overworldc)
            {
                self.movenoise = 1
            }
            global.menuno = 0
            global.interact = 5
            self.threebuffer = 2
            self.twobuffer = 2
        }
    }
}
if (global.interact == 0)
{
    if (global.flag[11] == 1)
    {
        if button2_h()
            _temp_local_var_4 = (self.twobuffer < 0)
        else
            _temp_local_var_4 = 0
        if _temp_local_var_4
            self.run = 0
        else
            self.run = 1
    }
    else
    {
        if button2_h()
            _temp_local_var_81 = (self.twobuffer < 0)
        else
            _temp_local_var_81 = 0
        if _temp_local_var_81
            self.run = 1
        else
            self.run = 0
    }
    if (self.autorun > 0)
    {
        if (self.autorun == 1)
        {
            self.run = 1
            self.runtimer = 200
        }
        if (self.autorun == 2)
        {
            self.run = 1
            self.runtimer = 50
        }
    }
    if (self.run == 1)
    {
        if (self.darkmode == 0)
        {
            self.wspeed = (self.bwspeed + 1)
            if (self.runtimer > 10)
                self.wspeed = (self.bwspeed + 2)
            if (self.runtimer > 60)
                self.wspeed = (self.bwspeed + 3)
        }
        if (self.darkmode == 1)
        {
            self.wspeed = (self.bwspeed + 2)
            if (self.runtimer > 10)
                self.wspeed = (self.bwspeed + 4)
            if (self.runtimer > 60)
                self.wspeed = (self.bwspeed + 5)
        }
    }
    if (self.run == 0)
        self.wspeed = self.bwspeed
    if left_h()
        self.press_l = 1
    if right_h()
        self.press_r = 1
    if up_h()
        self.press_u = 1
    if down_h()
        self.press_d = 1
    self.px = 0
    self.py = 0
    self.pressdir = -1
    if (self.press_r == 1)
    {
        self.px = self.wspeed
        self.pressdir = 1
    }
    if (self.press_l == 1)
    {
        self.px = (variable)(- self.wspeed)
        self.pressdir = 3
    }
    if (self.press_d == 1)
    {
        self.py = self.wspeed
        self.pressdir = 0
    }
    if (self.press_u == 1)
    {
        self.py = (variable)(- self.wspeed)
        self.pressdir = 2
    }
    if (self.nopress == 1)
        _temp_local_var_5 = (self.pressdir != -1)
    else
        _temp_local_var_5 = 0
    if _temp_local_var_5
        global.facing = self.pressdir
    if (global.facing == 2)
    {
        if (self.press_d == 1)
            global.facing = 0
        if (self.press_u == 0)
            _temp_local_var_6 = (self.pressdir != -1)
        else
            _temp_local_var_6 = 0
        if _temp_local_var_6
            global.facing = self.pressdir
    }
    if (global.facing == 0)
    {
        if (self.press_u == 1)
            global.facing = 2
        if (self.press_d == 0)
            _temp_local_var_7 = (self.pressdir != -1)
        else
            _temp_local_var_7 = 0
        if _temp_local_var_7
            global.facing = self.pressdir
    }
    if (global.facing == 3)
    {
        if (self.press_r == 1)
            global.facing = 1
        if (self.press_l == 0)
            _temp_local_var_8 = (self.pressdir != -1)
        else
            _temp_local_var_8 = 0
        if _temp_local_var_8
            global.facing = self.pressdir
    }
    if (global.facing == 1)
    {
        if (self.press_l == 1)
            global.facing = 3
        if (self.press_r == 0)
            _temp_local_var_9 = (self.pressdir != -1)
        else
            _temp_local_var_9 = 0
        if _temp_local_var_9
            global.facing = self.pressdir
    }
    self.nopress = 0
    self.xmeet = 0
    self.ymeet = 0
    self.xymeet = 0
    if place_meeting((self.x + self.px), (self.y + self.py), obj_solidblock)
        self.xymeet = 1
    if place_meeting((self.x + self.px), self.y, obj_solidblock)
    {
        if place_meeting((self.x + self.px), self.y, obj_solidblock)
        {
            self.g = self.wspeed
            while(true)
            {
                if (self.g > 0)
                {
                    self.mvd = 0
                    if (self.press_d == 0)
                        _temp_local_var_10 = (~ place_meeting((self.x + self.px), (self.y - self.g), obj_solidblock))
                    else
                        _temp_local_var_10 = 0
                    if _temp_local_var_10
                        break
                    else
                    {
                        if (self.press_u == 0)
                        {
                            if (self.mvd == 0)
                                _temp_local_var_72 = (~ place_meeting((self.x + self.px), (self.y + self.g), obj_solidblock))
                            else
                                _temp_local_var_72 = 0
                        }
                        else
                            _temp_local_var_72 = 0
                        if _temp_local_var_72
                            break
                        else
                        {
                            self.g = (self.g - 1)
                            continue
                        }
                    }
                }
                break
            }
        }
        self.xmeet = 1
        self.bkx = 0
        if (self.px > 0)
        {
            self.i = self.px
            while(true)
            {
                if (self.i >= 0)
                {
                    if (~ place_meeting((self.x + self.i), self.y, obj_solidblock))
                        break
                    else
                    {
                        self.i = (self.i - 1)
                        continue
                    }
                }
                break
            }
        }
        if (self.px < 0)
        {
            self.i = self.px
            while(true)
            {
                if (self.i <= 0)
                {
                    if (~ place_meeting((self.x + self.i), self.y, obj_solidblock))
                        break
                    else
                    {
                        self.i = (self.i + 1)
                        continue
                    }
                }
                break
            }
        }
        if (self.bkx == 0)
            self.px = 0
    }
    if place_meeting(self.x, (self.y + self.py), obj_solidblock)
    {
        self.ymeet = 1
        self.bky = 0
        if place_meeting(self.x, (self.y + self.py), obj_solidblock)
        {
            self.g = self.wspeed
            while(true)
            {
                if (self.g > 0)
                {
                    self.mvd = 0
                    if (self.press_r == 0)
                        _temp_local_var_11 = (~ place_meeting((self.x - self.g), (self.y + self.py), obj_solidblock))
                    else
                        _temp_local_var_11 = 0
                    if _temp_local_var_11
                        break
                    else
                    {
                        if (self.mvd == 0)
                        {
                            if (self.press_l == 0)
                                _temp_local_var_69 = (~ place_meeting((self.x + self.g), (self.y + self.py), obj_solidblock))
                            else
                                _temp_local_var_69 = 0
                        }
                        else
                            _temp_local_var_69 = 0
                        if _temp_local_var_69
                            break
                        else
                        {
                            self.g = (self.g - 1)
                            continue
                        }
                    }
                }
                break
            }
        }
        if (self.py > 0)
        {
            self.i = self.py
            while(true)
            {
                if (self.i >= 0)
                {
                    if (~ place_meeting(self.x, (self.y + self.i), obj_solidblock))
                        break
                    else
                    {
                        self.i = (self.i - 1)
                        continue
                    }
                }
                break
            }
        }
        if (self.py < 0)
        {
            self.i = self.py
            while(true)
            {
                if (self.i <= 0)
                {
                    if (~ place_meeting(self.x, (self.y + self.i), obj_solidblock))
                        break
                    else
                    {
                        self.i = (self.i + 1)
                        continue
                    }
                }
                break
            }
        }
        if (self.bky == 0)
            self.py = 0
    }
    if place_meeting((self.x + self.px), (self.y + self.py), obj_solidblock)
    {
        self.xymeet = 1
        self.bkxy = 0
        self.i = self.px
        self.j = self.py
        while(true)
        {
            if (self.j != 0)
                _temp_local_var_12 = 1
            else
                _temp_local_var_12 = (self.i != 0)
            if _temp_local_var_12
            {
                if (~ place_meeting((self.x + self.i), (self.y + self.j), obj_solidblock))
                    break
                else
                {
                    if (abs(self.j) >= 1)
                    {
                        if (self.j > 0)
                            self.j = (self.j - 1)
                        if (self.j < 0)
                            self.j = (self.j + 1)
                    }
                    else
                        self.j = 0
                    if (abs(self.i) >= 1)
                    {
                        if (self.i > 0)
                            self.i = (self.i - 1)
                        if (self.i < 0)
                            self.i = (self.i + 1)
                    }
                    else
                        self.i = 0
                    continue
                }
            }
            break
        }
        if (self.bkxy == 0)
        {
            self.px = 0
            self.py = 0
        }
    }
    self.runmove = 0
    if (self.run == 1)
    {
        if (self.xmeet == 0)
        {
            if (self.ymeet == 0)
                _temp_local_var_13 = (self.xymeet == 0)
            else
                _temp_local_var_13 = 0
        }
        else
            _temp_local_var_13 = 0
    }
    else
        _temp_local_var_13 = 0
    if _temp_local_var_13
    {
        if (abs(self.px) > 0)
            _temp_local_var_14 = 1
        else
            _temp_local_var_14 = (abs(self.py) > 0)
        if _temp_local_var_14
        {
            self.runmove = 1
            self.runtimer = (self.runtimer + 1)
        }
        else
            self.runtimer = 0
    }
    else
        self.runtimer = 0
    self.x = (self.x + self.px)
    self.y = (self.y + self.py)
}
self.walk = 0
if (self.x != self.nowx)
    _temp_local_var_15 = (self.nopress == 0)
else
    _temp_local_var_15 = 0
if _temp_local_var_15
    self.walk = 1
if (self.y != self.nowy)
    _temp_local_var_16 = (self.nopress == 0)
else
    _temp_local_var_16 = 0
if _temp_local_var_16
    self.walk = 1
if (self.walk == 1)
    self.walkbuffer = 6
if (self.walkbuffer > 3)
    _temp_local_var_17 = (self.fun == 0)
else
    _temp_local_var_17 = 0
if _temp_local_var_17
{
    self.walktimer = (self.walktimer + 1.5)
    if (self.runmove == 1)
        self.walktimer = (self.walktimer + 1.5)
    if (self.walktimer >= 40)
        self.walktimer = (self.walktimer - 40)
    if (self.walktimer < 10)
        self.image_index = 0
    if (self.walktimer >= 10)
        self.image_index = 1
    if (self.walktimer >= 20)
        self.image_index = 2
    if (self.walktimer >= 30)
        self.image_index = 3
}
if (self.walkbuffer <= 0)
    _temp_local_var_18 = (self.fun == 0)
else
    _temp_local_var_18 = 0
if _temp_local_var_18
{
    if (self.walktimer < 10)
        self.walktimer = 9.5
    if (self.walktimer >= 10)
        _temp_local_var_19 = (self.walktimer < 20)
    else
        _temp_local_var_19 = 0
    if _temp_local_var_19
        self.walktimer = 19.5
    if (self.walktimer >= 20)
        _temp_local_var_20 = (self.walktimer < 30)
    else
        _temp_local_var_20 = 0
    if _temp_local_var_20
        self.walktimer = 29.5
    if (self.walktimer >= 30)
        self.walktimer = 39.5
    self.image_index = 0
}
self.walkbuffer = (self.walkbuffer - 0.75)
if (self.fun == 0)
{
    if (global.facing == 0)
        self.sprite_index = self.dsprite
    if (global.facing == 1)
        self.sprite_index = self.rsprite
    if (global.facing == 2)
        self.sprite_index = self.usprite
    if (global.facing == 3)
        self.sprite_index = self.lsprite
}
if (self.stepping == 1)
{
    if (self.image_index == 1)
        _temp_local_var_21 = (self.stepped == 0)
    else
        _temp_local_var_21 = 0
    if _temp_local_var_21
    {
        if (global.flag[31] == 0)
            snd_play(snd_step1)
        self.stepped = 1
    }
    if (self.image_index == 0)
        _temp_local_var_22 = 1
    else
        _temp_local_var_22 = (self.image_index == 2)
    if _temp_local_var_22
        self.stepped = 0
    if (self.image_index == 3)
        _temp_local_var_23 = (self.stepped == 0)
    else
        _temp_local_var_23 = 0
    if _temp_local_var_23
    {
        self.stepped = 1
        if (global.flag[31] == 0)
            snd_play(snd_step2)
    }
}
if (self.onebuffer < 0)
{
    if (global.interact == 0)
    {
        if button1_p()
        {
            self.thisinteract = 0
            self.d = (global.darkzone + 1)
            if (global.facing == 1)
            {
                if collision_rectangle((self.x + (self.sprite_width / 2)), ((self.y + (6 * self.d)) + (self.sprite_height / 2)), ((self.x + self.sprite_width) + (13 * self.d)), (self.y + self.sprite_height), obj_interactable, 0, 1)
                    self.thisinteract = 1
                if collision_rectangle((self.x + (self.sprite_width / 2)), ((self.y + (6 * self.d)) + (self.sprite_height / 2)), ((self.x + self.sprite_width) + (13 * self.d)), (self.y + self.sprite_height), obj_interactablesolid, 0, 1)
                    self.thisinteract = 2
            }
            if (self.thisinteract > 0)
            {
                if (self.thisinteract == 1)
                    self.interactedobject = collision_rectangle((self.x + (self.sprite_width / 2)), ((self.y + (6 * self.d)) + (self.sprite_height / 2)), ((self.x + self.sprite_width) + (13 * self.d)), (self.y + self.sprite_height), obj_interactable, 0, 1)
                if (self.thisinteract == 2)
                    self.interactedobject = collision_rectangle((self.x + (self.sprite_width / 2)), ((self.y + (6 * self.d)) + (self.sprite_height / 2)), ((self.x + self.sprite_width) + (13 * self.d)), (self.y + self.sprite_height), obj_interactablesolid, 0, 1)
                if (self.interactedobject != noone)
                {
                    with(self.interactedobject)
                    {
                        self.facing = 3
                    }
                    with(self.interactedobject)
                    {
                        scr_interact()
                    }
                }
            }
            self.thisinteract = 0
            if (global.facing == 3)
            {
                if collision_rectangle((self.x + (self.sprite_width / 2)), ((self.y + (6 * self.d)) + (self.sprite_height / 2)), (self.x - (13 * self.d)), (self.y + self.sprite_height), obj_interactable, 0, 1)
                    self.thisinteract = 1
                if collision_rectangle((self.x + (self.sprite_width / 2)), ((self.y + (6 * self.d)) + (self.sprite_height / 2)), (self.x - (13 * self.d)), (self.y + self.sprite_height), obj_interactablesolid, 0, 1)
                    self.thisinteract = 2
            }
            if (self.thisinteract > 0)
            {
                if (self.thisinteract == 1)
                    self.interactedobject = collision_rectangle((self.x + (self.sprite_width / 2)), ((self.y + (6 * self.d)) + (self.sprite_height / 2)), (self.x - (13 * self.d)), (self.y + self.sprite_height), obj_interactable, 0, 1)
                if (self.thisinteract == 2)
                    self.interactedobject = collision_rectangle((self.x + (self.sprite_width / 2)), ((self.y + (6 * self.d)) + (self.sprite_height / 2)), (self.x - (13 * self.d)), (self.y + self.sprite_height), obj_interactablesolid, 0, 1)
                if (self.interactedobject != noone)
                {
                    with(self.interactedobject)
                    {
                        self.facing = 1
                    }
                    with(self.interactedobject)
                    {
                        scr_interact()
                    }
                }
            }
            self.thisinteract = 0
            if (global.facing == 0)
            {
                if collision_rectangle((self.x + (4 * self.d)), (self.y + (28 * self.d)), ((self.x + self.sprite_width) - (4 * self.d)), ((self.y + self.sprite_height) + (15 * self.d)), obj_interactable, 0, 1)
                    self.thisinteract = 1
                if collision_rectangle((self.x + (4 * self.d)), (self.y + (28 * self.d)), ((self.x + self.sprite_width) - (4 * self.d)), ((self.y + self.sprite_height) + (15 * self.d)), obj_interactablesolid, 0, 1)
                    self.thisinteract = 2
            }
            if (self.thisinteract > 0)
            {
                if (self.thisinteract == 1)
                    self.interactedobject = collision_rectangle((self.x + (4 * self.d)), (self.y + (28 * self.d)), ((self.x + self.sprite_width) - (4 * self.d)), ((self.y + self.sprite_height) + (15 * self.d)), obj_interactable, 0, 1)
                if (self.thisinteract == 2)
                    self.interactedobject = collision_rectangle((self.x + (4 * self.d)), (self.y + (28 * self.d)), ((self.x + self.sprite_width) - (4 * self.d)), ((self.y + self.sprite_height) + (15 * self.d)), obj_interactablesolid, 0, 1)
                if (self.interactedobject != noone)
                {
                    with(self.interactedobject)
                    {
                        self.facing = 2
                    }
                    with(self.interactedobject)
                    {
                        scr_interact()
                    }
                }
            }
            self.thisinteract = 0
            if (global.facing == 2)
            {
                if collision_rectangle((self.x + 3), ((self.y + self.sprite_height) - (5 * self.d)), ((self.x + self.sprite_width) - (5 * self.d)), (self.y + (5 * self.d)), obj_interactable, 0, 1)
                    self.thisinteract = 1
                if collision_rectangle((self.x + 3), ((self.y + self.sprite_height) - (5 * self.d)), ((self.x + self.sprite_width) - (5 * self.d)), (self.y + (5 * self.d)), obj_interactablesolid, 0, 1)
                    self.thisinteract = 2
            }
            if (self.thisinteract > 0)
            {
                if (self.thisinteract == 1)
                    self.interactedobject = collision_rectangle((self.x + (3 * self.d)), ((self.y + self.sprite_height) - (5 * self.d)), ((self.x + self.sprite_width) - (5 * self.d)), (self.y + (5 * self.d)), obj_interactable, 0, 1)
                if (self.thisinteract == 2)
                    self.interactedobject = collision_rectangle((self.x + (3 * self.d)), ((self.y + self.sprite_height) - (5 * self.d)), ((self.x + self.sprite_width) - (5 * self.d)), (self.y + (5 * self.d)), obj_interactablesolid, 0, 1)
                if (self.interactedobject != noone)
                {
                    with(self.interactedobject)
                    {
                        self.facing = 0
                    }
                    with(self.interactedobject)
                    {
                        scr_interact()
                    }
                }
            }
        }
    }
}
self.onebuffer = (self.onebuffer - 1)
self.twobuffer = (self.twobuffer - 1)
self.threebuffer = (self.threebuffer - 1)
with(collision_rectangle(self.bbox_left, self.bbox_top, self.bbox_right, self.bbox_bottom, obj_doorparent, 0, 0))
{
    event_user(9)
}
if (self.battlemode == 1)
{
    global.inv = (global.inv - 1)
    if (global.inv < 0)
    {
        with(collision_rectangle((self.x + 12), (self.y + 40), (self.x + 27), (self.y + 49), obj_overworldbulletparent, 1, 0))
        {
            event_user(5)
        }
        with(collision_line((self.x + 12), (self.y + 49), (self.x + 19), (self.y + 57), obj_overworldbulletparent, 1, 0))
        {
            event_user(5)
        }
        with(collision_line((self.x + 26), (self.y + 49), (self.x + 19), (self.y + 57), obj_overworldbulletparent, 1, 0))
        {
            event_user(5)
        }
    }
}
if scr_debug()
{
    if keyboard_check_pressed('P')
        self.room_speed = 60
    if keyboard_check_pressed('O')
        self.room_speed = 3
    if keyboard_check('3')
        _temp_local_var_24 = keyboard_check('D')
    else
        _temp_local_var_24 = 0
    if _temp_local_var_24
    {
        global.char[0] = 1
        global.char[1] = 0
        global.char[2] = 0
        global.interact = 0
        global.darkzone = 1
        room_goto(room_dark1)
    }
    if keyboard_check('4')
        _temp_local_var_25 = keyboard_check('D')
    else
        _temp_local_var_25 = 0
    if _temp_local_var_25
    {
        global.char[0] = 1
        global.char[1] = 3
        global.char[2] = 2
        global.interact = 0
        global.darkzone = 1
        room_goto(room_field_checkers5)
    }
    if keyboard_check('5')
        _temp_local_var_26 = keyboard_check('D')
    else
        _temp_local_var_26 = 0
    if _temp_local_var_26
    {
        global.char[0] = 1
        global.char[1] = 0
        global.char[2] = 0
        global.interact = 0
        global.darkzone = 1
        room_goto(room_castle_tutorial)
    }
    if keyboard_check('6')
        _temp_local_var_27 = keyboard_check('D')
    else
        _temp_local_var_27 = 0
    if _temp_local_var_27
    {
        global.char[0] = 1
        global.char[1] = 3
        global.char[2] = 0
        global.interact = 0
        global.darkzone = 1
        room_goto(room_field1)
    }
    if keyboard_check('7')
        _temp_local_var_28 = keyboard_check('D')
    else
        _temp_local_var_28 = 0
    if _temp_local_var_28
    {
        global.char[0] = 1
        global.char[1] = 3
        global.char[2] = 0
        global.interact = 0
        global.darkzone = 1
        room_goto(room_forest_area3)
    }
    if keyboard_check('8')
        _temp_local_var_29 = keyboard_check('D')
    else
        _temp_local_var_29 = 0
    if _temp_local_var_29
    {
        global.char[0] = 1
        global.char[1] = 3
        global.char[2] = 0
        global.interact = 0
        global.darkzone = 1
        room_goto(room_forest_fightsusie)
    }
    if keyboard_check('9')
        _temp_local_var_30 = keyboard_check('D')
    else
        _temp_local_var_30 = 0
    if _temp_local_var_30
    {
        global.char[0] = 2
        global.char[1] = 0
        global.char[2] = 0
        global.interact = 0
        global.darkzone = 1
        global.plot = 154
        room_goto(room_cc_prison_cells)
    }
    if keyboard_check('6')
        _temp_local_var_31 = keyboard_check('J')
    else
        _temp_local_var_31 = 0
    if _temp_local_var_31
    {
        global.char[0] = 1
        global.char[1] = 3
        global.char[2] = 0
        global.interact = 0
        global.darkzone = 1
        global.charauto[2] = 0
        room_goto(room_battletest)
    }
    if keyboard_check('7')
        _temp_local_var_32 = keyboard_check('J')
    else
        _temp_local_var_32 = 0
    if _temp_local_var_32
    {
        global.char[0] = 1
        global.char[1] = 2
        global.char[2] = 3
        global.interact = 0
        global.darkzone = 1
        global.charauto[2] = 0
        room_goto(room_battletest)
    }
    if keyboard_check('8')
        _temp_local_var_33 = keyboard_check('J')
    else
        _temp_local_var_33 = 0
    if _temp_local_var_33
    {
        global.char[0] = 1
        global.char[1] = 2
        global.char[2] = 3
        global.interact = 0
        global.darkzone = 1
        global.charauto[2] = 0
        global.plot = 165
        scr_keyitemget(5)
        global.tempflag[4] = 1
        _temp_local_var_34 = 13
        if (13 <= 0)
        {
        }
        else
        {
            while(true)
            {
                scr_weaponget(5)
                _temp_local_var_34 = (_temp_local_var_34 - 1)
                if (_temp_local_var_34 - 1)
                    continue
                break
            }
        }
        room_goto(room_cc_prison_prejoker)
    }
    if keyboard_check('9')
        _temp_local_var_35 = keyboard_check('J')
    else
        _temp_local_var_35 = 0
    if _temp_local_var_35
    {
        global.char[0] = 1
        global.char[1] = 2
        global.char[2] = 3
        global.interact = 0
        global.darkzone = 1
        global.charauto[2] = 0
        global.flag[248] = 0
        room_goto(room_cc_kingbattle)
    }
    if keyboard_check('2')
        _temp_local_var_36 = keyboard_check('W')
    else
        _temp_local_var_36 = 0
    if _temp_local_var_36
    {
        global.interact = 0
        global.darkzone = 0
        room_goto(room_town_krisyard)
    }
    if keyboard_check('3')
        _temp_local_var_37 = keyboard_check('W')
    else
        _temp_local_var_37 = 0
    if _temp_local_var_37
    {
        global.interact = 0
        global.darkzone = 0
        room_goto(room_schooldoor)
    }
    if keyboard_check('4')
        _temp_local_var_38 = keyboard_check('W')
    else
        _temp_local_var_38 = 0
    if _temp_local_var_38
    {
        global.interact = 0
        global.darkzone = 0
        room_goto(room_school_unusedroom)
    }
    if keyboard_check('5')
        _temp_local_var_39 = keyboard_check('W')
    else
        _temp_local_var_39 = 0
    if _temp_local_var_39
    {
        global.interact = 0
        global.darkzone = 0
        global.plot = 251
        room_goto(room_town_school)
    }
    if keyboard_check('6')
        _temp_local_var_40 = keyboard_check('W')
    else
        _temp_local_var_40 = 0
    if _temp_local_var_40
    {
        global.interact = 0
        global.darkzone = 0
        global.plot = 251
        room_goto(room_town_north)
    }
    if keyboard_check_pressed('-')
        room_goto_next()
    if keyboard_check_pressed('.')
        room_goto_previous()
}
