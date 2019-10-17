if instance_exists(obj_mainchara)
{
    if (self.loc_check == 0)
    {
        if (self.room == room_forest_starwalker)
        {
            if (obj_mainchara.x >= (self.room_width / 2))
                self.x = 2200
        }
        self.loc_check = 1
    }
    for (self.i = 5; self.i > 0; self.i -= 1)
    {
        self.char_xcheck[self.i] = self.char_xcheck[(self.i - 1)]
        self.char_ycheck[self.i] = self.char_ycheck[(self.i - 1)]
    }
    self.char_xcheck[0] = obj_mainchara.x
    self.char_ycheck[0] = obj_mainchara.y
    self.xcheck_average = ((((obj_mainchara.x - self.char_xcheck[1]) + (obj_mainchara.x - self.char_xcheck[2])) + (obj_mainchara.x - self.char_xcheck[3])) / 3)
    if ((self.xcheck_average >= 2) && (self.x >= obj_mainchara.x))
        self.xcheck_average = 0
    if ((self.xcheck_average <= -2) && (self.x <= obj_mainchara.x))
        self.xcheck_average = 0
    self.ycheck_average = ((((obj_mainchara.y - self.char_ycheck[1]) + (obj_mainchara.y - self.char_ycheck[2])) + (obj_mainchara.y - self.char_ycheck[3])) / 3)
}
if (keyboard_check_pressed(vk_backspace) && ((self.beatcon == 89898) && scr_debug()))
{
    self.visible = 0
    self.beatcon = 1
    self.beattimer = 0
    with (obj_mainchara)
        self.battlemode = 0
    self.dead = instance_create((self.x - 92), (self.y - 74), obj_starwalker_battle)
    with (self.dead)
    {
        self.walkcon = 1
        self.walktimer = 0
    }
    with (self.shadow)
        instance_destroy()
}
self.targetx = (obj_mainchara.x + (obj_mainchara.sprite_width / 2))
self.targety = (obj_mainchara.y + (obj_mainchara.sprite_height / 2))
if (self.mazemode == 0)
{
    if ((abs((self.targetx - self.x)) <= 200) && (self.introcon == 0))
    {
        self.introcon = 1
        with (obj_mainchara)
            self.battlemode = 1
    }
    if (self.introcon == 1)
    {
        self.attackcon = 0
        self.vspeed = -2
        self.introcon = 2
    }
    if (self.introcon == 2)
    {
        self.attacktimer = 0
        self.introtimer += 1
        if (self.introtimer >= 20)
        {
            self.introcon = 3
            self.vspeed = 0
        }
    }
    if (self.introcon == 3)
    {
        self.friction = 0.5
        if (self.targetx < self.x)
        {
            if (self.x <= (self.targetx + 150))
                self.hspeed += 1
            if (self.x >= (self.targetx + 250))
                self.hspeed -= 1
        }
        if (self.targetx > self.x)
        {
            if (self.x >= (self.targetx - 150))
                self.hspeed -= 1
            if (self.x <= (self.targetx - 250))
                self.hspeed += 1
        }
    }
}
if (self.mazemode == 1)
{
    if ((self.targety <= self.y) && (self.introcon == 0))
    {
        self.introcon = 1
        with (obj_mainchara)
            self.battlemode = 1
    }
    if (self.introcon == 1)
    {
        self.attackcon = 0
        self.vspeed = -8
        self.introcon = 2
    }
    if (self.introcon == 2)
    {
        self.attacktimer = 0
        self.introtimer += 1
        if (self.introtimer >= 5)
        {
            self.introcon = 3
            self.vspeed = 0
            self.attacktimer = 36
        }
    }
    if (self.introcon == 3)
    {
        self.friction = 0.7
        if (self.targety < (self.y - 20))
            self.vspeed -= 1.5
        if (self.targety > (self.y + 20))
            self.vspeed += 1.5
    }
}
if (self.beatcon == 0)
{
    if (self.attackcon >= 0)
    {
        if (obj_mainchara.battlemode == 1)
            self.attacktimer += 1
    }
    if (self.attackcon == 0)
    {
        self.wingtimer += 1
        if (self.wingtimer >= 0)
        {
            snd_play(snd_wing)
            self.wingtimer = -16
        }
    }
    if ((self.attacktimer >= 42) && (self.attackcon == 0))
    {
        self.wingtimer = 0
        self.shakefactor = 6
        self.attackcon = 1
        if (self.shot == 1)
        {
            for (self.i = 0; self.i < 3; self.i += 1)
            {
                with (self.starbullet[self.i])
                    instance_destroy()
            }
        }
    }
    if ((self.attacktimer >= 60) && (self.attackcon == 1))
    {
        snd_play(snd_crow)
        self.attackcon = 2
        self.shot = 1
        for (self.i = 0; self.i < 3; self.i += 1)
        {
            self.starbullet[self.i] = instance_create((self.x + (17 * self.xmake)), (self.y + 42), obj_overworldbulletparent)
            self.starbullet[self.i].sprite_index = spr_starbullet_test
            self.starbullet[self.i].image_xscale = 2
            self.starbullet[self.i].image_yscale = 2
            self.starbullet[self.i].damage = 15
            self.starbullet[self.i].active = 1
            self.starbullet[self.i].target = 3
            self.starbullet[self.i].speed = 10
            self.starbullet[self.i].friction = -0.2
            self.starbullet[self.i].direction = ((point_direction((self.x + (17 * self.xmake)), (self.y + 42), ((obj_mainchara.x + (self.xcheck_average * 10)) + (obj_mainchara.sprite_width / 2)), (obj_mainchara.y + (obj_mainchara.sprite_height / 2))) - 17) + (17 * self.i))
            self.starbullet[self.i].depth = 1000
        }
    }
    if (self.attacktimer >= 80)
    {
        self.siner = 0
        self.wing_index = 0
        self.attackcon = 0
        self.attacktimer = 0
        if (self.mazemode == 1)
            self.attacktimer = 38
    }
}
if instance_exists(self.shadow)
{
    if (self.attackcon == -1)
        self.shadow.visible = 0
    else
        self.shadow.visible = 1
    if (self.mazemode == 1)
        self.shadow.visible = 0
    self.shadow.x = self.x
    self.shadow.y = self.shadowy
    self.shadow.sprite_index = spr_starwalker_wings
    self.shadow.image_index = self.wing_index
    if (self.attackcon == 1)
    {
        self.shadow.sprite_index = spr_starwalker_attack
        self.shadow.image_index = 0
        self.shadow.image_xscale = self.xmake
    }
    if (self.attackcon == 2)
    {
        self.shadow.sprite_index = spr_starwalker_attack
        self.shadow.image_index = 1
        self.shadow.image_xscale = self.xmake
    }
}
if (self.beatcon == 1)
{
    with (obj_mainchara)
        self.battlemode = 0
    if (global.interact == 0)
    {
        global.interact = 1
        self.beattimer = 0
        self.beatcon = 2
    }
}
if (self.beatcon == 2)
{
    self.beattimer += 1
    if ((self.dead.x >= (__view_get(0, 0) + __view_get(2, 0))) && (global.interact != 0))
    {
        with (self.dead)
            instance_destroy()
        global.interact = 0
        self.beatcon = 3
        instance_destroy()
    }
}
