scr_depth()
self.wallcheck = 0
self.nowx = self.x
self.nowy = self.y
if ((self.press_d == 0) && ((self.press_l == 0) && ((self.press_u == 0) && (self.press_r == 0))))
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
    if (button3_p() && (self.threebuffer < 0))
    {
        if ((global.flag[7] == 0) && (self.battlemode == 0))
        {
            with (obj_overworldc)
                self.movenoise = 1
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
        if (button2_h() && (self.twobuffer < 0))
            self.run = 0
        else
            self.run = 1
    }
    else if (button2_h() && (self.twobuffer < 0))
        self.run = 1
    else
        self.run = 0
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
        self.px = (-self.wspeed)
        self.pressdir = 3
    }
    if (self.press_d == 1)
    {
        self.py = self.wspeed
        self.pressdir = 0
    }
    if (self.press_u == 1)
    {
        self.py = (-self.wspeed)
        self.pressdir = 2
    }
    if ((self.nopress == 1) && (self.pressdir != -1))
        global.facing = self.pressdir
    if (global.facing == 2)
    {
        if (self.press_d == 1)
            global.facing = 0
        if ((self.press_u == 0) && (self.pressdir != -1))
            global.facing = self.pressdir
    }
    if (global.facing == 0)
    {
        if (self.press_u == 1)
            global.facing = 2
        if ((self.press_d == 0) && (self.pressdir != -1))
            global.facing = self.pressdir
    }
    if (global.facing == 3)
    {
        if (self.press_r == 1)
            global.facing = 1
        if ((self.press_l == 0) && (self.pressdir != -1))
            global.facing = self.pressdir
    }
    if (global.facing == 1)
    {
        if (self.press_l == 1)
            global.facing = 3
        if ((self.press_r == 0) && (self.pressdir != -1))
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
            while (self.g > 0)
            {
                self.mvd = 0
                if ((self.press_d == 0) && (!place_meeting((self.x + self.px), (self.y - self.g), obj_solidblock)))
                {
                    self.y -= self.g
                    self.py = 0
                    break
                }
                else if ((self.press_u == 0) && ((self.mvd == 0) && (!place_meeting((self.x + self.px), (self.y + self.g), obj_solidblock))))
                {
                    self.y += self.g
                    self.py = 0
                    break
                }
                else
                {
                    self.g -= 1
                    continue
                }
            }
        }
        self.xmeet = 1
        self.bkx = 0
        if (self.px > 0)
        {
            self.i = self.px
            while (self.i >= 0)
            {
                if (!place_meeting((self.x + self.i), self.y, obj_solidblock))
                {
                    self.px = self.i
                    self.bkx = 1
                    break
                }
                else
                {
                    self.i -= 1
                    continue
                }
            }
        }
        if (self.px < 0)
        {
            self.i = self.px
            while (self.i <= 0)
            {
                if (!place_meeting((self.x + self.i), self.y, obj_solidblock))
                {
                    self.px = self.i
                    self.bkx = 1
                    break
                }
                else
                {
                    self.i += 1
                    continue
                }
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
            while (self.g > 0)
            {
                self.mvd = 0
                if ((self.press_r == 0) && (!place_meeting((self.x - self.g), (self.y + self.py), obj_solidblock)))
                {
                    self.x -= self.g
                    self.px = 0
                    break
                }
                else if ((self.mvd == 0) && ((self.press_l == 0) && (!place_meeting((self.x + self.g), (self.y + self.py), obj_solidblock))))
                {
                    self.x += self.g
                    self.px = 0
                    break
                }
                else
                {
                    self.g -= 1
                    continue
                }
            }
        }
        if (self.py > 0)
        {
            self.i = self.py
            while (self.i >= 0)
            {
                if (!place_meeting(self.x, (self.y + self.i), obj_solidblock))
                {
                    self.py = self.i
                    self.bky = 1
                    break
                }
                else
                {
                    self.i -= 1
                    continue
                }
            }
        }
        if (self.py < 0)
        {
            self.i = self.py
            while (self.i <= 0)
            {
                if (!place_meeting(self.x, (self.y + self.i), obj_solidblock))
                {
                    self.py = self.i
                    self.bky = 1
                    break
                }
                else
                {
                    self.i += 1
                    continue
                }
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
        while ((self.j != 0) || (self.i != 0))
        {
            if (!place_meeting((self.x + self.i), (self.y + self.j), obj_solidblock))
            {
                self.px = self.i
                self.py = self.j
                self.bkxy = 1
				break
            }
            else
            {
                if (abs(self.j) >= 1)
                {
                    if (self.j > 0)
                        self.j -= 1
                    if (self.j < 0)
                        self.j += 1
                }
                else
                    self.j = 0
                if (abs(self.i) >= 1)
                {
                    if (self.i > 0)
                        self.i -= 1
                    if (self.i < 0)
                        self.i += 1
                }
                else
                    self.i = 0
                continue
            }
        }
        if (self.bkxy == 0)
        {
            self.px = 0
            self.py = 0
        }
    }
    self.runmove = 0
    if ((self.run == 1) && ((self.xmeet == 0) && ((self.ymeet == 0) && (self.xymeet == 0))))
    {
        if ((abs(self.px) > 0) || (abs(self.py) > 0))
        {
            self.runmove = 1
            self.runtimer += 1
        }
        else
            self.runtimer = 0
    }
    else
        self.runtimer = 0
    self.x += self.px
    self.y += self.py
}
self.walk = 0
if ((self.x != self.nowx) && (self.nopress == 0))
    self.walk = 1
if ((self.y != self.nowy) && (self.nopress == 0))
    self.walk = 1
if (self.walk == 1)
    self.walkbuffer = 6
if ((self.walkbuffer > 3) && (self.fun == 0))
{
    self.walktimer += 1.5
    if (self.runmove == 1)
        self.walktimer += 1.5
    if (self.walktimer >= 40)
        self.walktimer -= 40
    if (self.walktimer < 10)
        self.image_index = 0
    if (self.walktimer >= 10)
        self.image_index = 1
    if (self.walktimer >= 20)
        self.image_index = 2
    if (self.walktimer >= 30)
        self.image_index = 3
}
if ((self.walkbuffer <= 0) && (self.fun == 0))
{
    if (self.walktimer < 10)
        self.walktimer = 9.5
    if ((self.walktimer >= 10) && (self.walktimer < 20))
        self.walktimer = 19.5
    if ((self.walktimer >= 20) && (self.walktimer < 30))
        self.walktimer = 29.5
    if (self.walktimer >= 30)
        self.walktimer = 39.5
    self.image_index = 0
}
self.walkbuffer -= 0.75
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
    if ((self.image_index == 1) && (self.stepped == 0))
    {
        if (global.flag[31] == 0)
            snd_play(snd_step1)
        self.stepped = 1
    }
    if ((self.image_index == 0) || (self.image_index == 2))
        self.stepped = 0
    if ((self.image_index == 3) && (self.stepped == 0))
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
                    with (self.interactedobject)
                        self.facing = 3
                    with (self.interactedobject)
                        scr_interact()
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
                    with (self.interactedobject)
                        self.facing = 1
                    with (self.interactedobject)
                        scr_interact()
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
                    with (self.interactedobject)
                        self.facing = 2
                    with (self.interactedobject)
                        scr_interact()
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
                    with (self.interactedobject)
                        self.facing = 0
                    with (self.interactedobject)
                        scr_interact()
                }
            }
        }
    }
}
self.onebuffer -= 1
self.twobuffer -= 1
self.threebuffer -= 1
with (collision_rectangle(self.bbox_left, self.bbox_top, self.bbox_right, self.bbox_bottom, obj_doorparent, 0, 0))
    event_user(9)
if (self.battlemode == 1)
{
    global.inv -= 1
    if (global.inv < 0)
    {
        with (collision_rectangle((self.x + 12), (self.y + 40), (self.x + 27), (self.y + 49), obj_overworldbulletparent, 1, 0))
            event_user(5)
        with (collision_line((self.x + 12), (self.y + 49), (self.x + 19), (self.y + 57), obj_overworldbulletparent, 1, 0))
            event_user(5)
        with (collision_line((self.x + 26), (self.y + 49), (self.x + 19), (self.y + 57), obj_overworldbulletparent, 1, 0))
            event_user(5)
    }
}
if scr_debug()
{
    if keyboard_check_pressed(ord("P"))
        self.room_speed = 60
    if keyboard_check_pressed(ord("O"))
        self.room_speed = 3
    if (keyboard_check(ord("3")) && keyboard_check(ord("D")))
    {
        global.char[0] = 1
        global.char[1] = 0
        global.char[2] = 0
        global.interact = 0
        global.darkzone = 1
        room_goto(room_dark1)
    }
    if (keyboard_check(ord("4")) && keyboard_check(ord("D")))
    {
        global.char[0] = 1
        global.char[1] = 3
        global.char[2] = 2
        global.interact = 0
        global.darkzone = 1
        room_goto(room_field_checkers5)
    }
    if (keyboard_check(ord("5")) && keyboard_check(ord("D")))
    {
        global.char[0] = 1
        global.char[1] = 0
        global.char[2] = 0
        global.interact = 0
        global.darkzone = 1
        room_goto(room_castle_tutorial)
    }
    if (keyboard_check(ord("6")) && keyboard_check(ord("D")))
    {
        global.char[0] = 1
        global.char[1] = 3
        global.char[2] = 0
        global.interact = 0
        global.darkzone = 1
        room_goto(room_field1)
    }
    if (keyboard_check(ord("7")) && keyboard_check(ord("D")))
    {
        global.char[0] = 1
        global.char[1] = 3
        global.char[2] = 0
        global.interact = 0
        global.darkzone = 1
        room_goto(room_forest_area3)
    }
    if (keyboard_check(ord("8")) && keyboard_check(ord("D")))
    {
        global.char[0] = 1
        global.char[1] = 3
        global.char[2] = 0
        global.interact = 0
        global.darkzone = 1
        room_goto(room_forest_fightsusie)
    }
    if (keyboard_check(ord("9")) && keyboard_check(ord("D")))
    {
        global.char[0] = 2
        global.char[1] = 0
        global.char[2] = 0
        global.interact = 0
        global.darkzone = 1
        global.plot = 154
        room_goto(room_cc_prison_cells)
    }
    if (keyboard_check(ord("6")) && keyboard_check(ord("J")))
    {
        global.char[0] = 1
        global.char[1] = 3
        global.char[2] = 0
        global.interact = 0
        global.darkzone = 1
        global.charauto[2] = 0
        room_goto(room_battletest)
    }
    if (keyboard_check(ord("7")) && keyboard_check(ord("J")))
    {
        global.char[0] = 1
        global.char[1] = 2
        global.char[2] = 3
        global.interact = 0
        global.darkzone = 1
        global.charauto[2] = 0
        room_goto(room_battletest)
    }
    if (keyboard_check(ord("8")) && keyboard_check(ord("J")))
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
        repeat (13)
            scr_weaponget(5)
        room_goto(room_cc_prison_prejoker)
    }
    if (keyboard_check(ord("9")) && keyboard_check(ord("J")))
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
    if (keyboard_check(ord("2")) && keyboard_check(ord("W")))
    {
        global.interact = 0
        global.darkzone = 0
        room_goto(room_town_krisyard)
    }
    if (keyboard_check(ord("3")) && keyboard_check(ord("W")))
    {
        global.interact = 0
        global.darkzone = 0
        room_goto(room_schooldoor)
    }
    if (keyboard_check(ord("4")) && keyboard_check(ord("W")))
    {
        global.interact = 0
        global.darkzone = 0
        room_goto(room_school_unusedroom)
    }
    if (keyboard_check(ord("5")) && keyboard_check(ord("W")))
    {
        global.interact = 0
        global.darkzone = 0
        global.plot = 251
        room_goto(room_town_school)
    }
    if (keyboard_check(ord("6")) && keyboard_check(ord("W")))
    {
        global.interact = 0
        global.darkzone = 0
        global.plot = 251
        room_goto(room_town_north)
    }
    if keyboard_check_pressed(vk_insert)
        room_goto_next()
    if keyboard_check_pressed(vk_delete)
        room_goto_previous()
}
