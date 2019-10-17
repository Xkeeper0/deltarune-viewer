if (self.con == 0)
{
    if (global.interact == 0)
        self.frozen = 0
    if scr_outside_camera(200)
        self.frozen = 1
    else
        self.frozen = 0
    if (global.interact != 0)
        self.frozen = 1
    if (self.frozen == 1)
    {
        if (self.hadfrozen == 0)
        {
            self.remspeed = self.speed
            self.speed = 0
            self.hadfrozen = 1
        }
    }
    if (self.frozen == 0)
    {
        if (self.hadfrozen == 1)
        {
            if (self.speed == 0)
                self.speed = self.remspeed
            self.hadfrozen = 0
        }
    }
    if (self.frozen == 0)
    {
        self.fliptimer += 1
        if (self.fliptimer >= 30)
        {
            self.vspeed = (-self.vspeed)
            self.fliptimer = 0
        }
    }
}
if (self.con == 1)
{
    self.sprite_index = self.touchsprite
    self.hnka = snd_play(snd_tensionhorn)
    self.con = 2
    self.alarm[4] = 8
}
if (self.con == 3)
{
    self.hnkb = snd_play(snd_tensionhorn)
    snd_pitch(self.hnkb, 1.1)
    self.con = 4
    self.alarm[4] = 12
}
if (self.con == 5)
{
    self.depth = 5000
    instance_create(0, 0, obj_battleback)
    instance_create(0, 0, obj_encounterbasic)
    self.con = 6
    self.sprite_index = self.slidesprite
    self.direction = point_direction(self.x, self.y, global.monstermakex[0], global.monstermakey[0])
    self.speed = (point_distance(self.x, self.y, global.monstermakex[0], global.monstermakey[0]) / 10)
    self.copyhave = 0
    for (self.cc = 0; self.cc < 2; self.cc += 1)
    {
        if (global.monstertype[(self.cc + 1)] != 0)
        {
            self.copyhave += 1
            if (global.monstertype[(self.cc + 1)] == global.monstertype[0])
            {
                self.copy[self.cc] = scr_dark_marker(self.x, self.y, self.sprite_index)
                self.copy[self.cc].direction = point_direction(self.x, self.y, global.monstermakex[(self.cc + 1)], global.monstermakey[(self.cc + 1)])
                self.copy[self.cc].speed = (point_distance(self.x, self.y, global.monstermakex[(self.cc + 1)], global.monstermakey[(self.cc + 1)]) / 10)
                self.copy[self.cc].depth = ((self.depth - 1) - self.cc)
            }
            else
            {
                self.copy[self.cc] = scr_dark_marker((global.monstermakex[(self.cc + 1)] + 200), global.monstermakey[(self.cc + 1)], object_get_sprite(global.monsterinstancetype[(self.cc + 1)]))
                self.copy[self.cc].cc = self.cc
                self.copy[self.cc].depth = ((self.depth - 1) - self.cc)
                with (self.copy[self.cc])
                {
                    self.direction = point_direction(self.x, self.y, global.monstermakex[(self.cc + 1)], global.monstermakey[(self.cc + 1)])
                    self.speed = (point_distance(self.x, self.y, global.monstermakex[(self.cc + 1)], global.monstermakey[(self.cc + 1)]) / 10)
                }
            }
        }
    }
    self.alarm[4] = 10
}
if (self.con == 7)
{
    if (self.copyhave > 0)
    {
        for (self.c = 0; self.c < self.copyhave; self.c += 1)
        {
            with (self.copy[self.c])
                self.speed = 0
        }
    }
    self.speed = 0
    if instance_exists(obj_battlecontroller)
    {
        if (self.eraser == 1)
        {
            with (obj_chaseenemy)
                instance_destroy()
        }
        instance_destroy()
        if (self.copyhave > 0)
        {
            for (self.c = 0; self.c < self.copyhave; self.c += 1)
            {
                with (self.copy[self.c])
                    instance_destroy()
            }
        }
    }
}
