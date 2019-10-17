if (self.con == 0)
{
    if ((obj_mainchara.x >= (self.x - 60)) && (obj_mainchara.x <= (self.x + 60)))
    {
        self.con = 1
        self.image_speed = 0.334
        self.alarm[4] = 15
    }
}
if (self.con == 2)
{
    self.image_index = 5
    self.image_speed = 0
    self.con = 3
    self.alarm[4] = 15
}
if (self.con == 4)
{
    self.eye_factor = 0
    self.draw_eye = 1
    self.maxy = (self.y + 100)
    self.sprite_index = spr_ponman_jump
    self.vspeed = -8
    self.gravity = 1.5
    self.con = 5
}
if (self.con == 5)
{
    if (self.eye_factor < 5)
        self.eye_factor += 1
    self.eye_angle = 270
    self.eye_radius = (((self.vspeed * self.eye_factor) / 5) * 0.7)
    if (self.y >= self.maxy)
    {
        self.sprite_index = spr_ponman_idle
        self.vspeed = 0
        self.gravity = 0
        self.con = 6
        self.alarm[4] = 5
        self.remspeed = 0
        self.stopped = 0
    }
}
if (self.con == 6)
    self.eye_radius *= 0.5
if (self.con == 7)
{
    if (global.interact == 0)
    {
        if (self.stopped == 1)
        {
            self.speed = self.remspeed
            self.stopped = 0
        }
        scr_depth()
        if (self.eye_radius < 8)
            self.eye_radius += 2
        self.eye_angle = point_direction((self.x + 32), (self.y + 28), (obj_mainchara.x + 20), (obj_mainchara.y + 20))
        self.image_speed = 0.25
        self.direction = self.eye_angle
        self.maxspeed = 13
        if (global.flag[502] == 1)
            self.maxspeed = 11
        if (global.flag[502] >= 2)
            self.maxspeed = 9
        if (self.room == room_field_checkers5)
            self.maxspeed = 9
        if (self.speed < self.maxspeed)
            self.speed += 2
        if collision_rectangle(self.bbox_left, self.bbox_top, self.bbox_right, self.bbox_bottom, obj_mainchara, 0, 1)
        {
            self.myencounter = 13
            if (global.flag[502] == 1)
                self.myencounter = 14
            if (global.flag[502] >= 2)
                self.myencounter = choose(13, 14)
            if (self.room == room_field_checkers5)
                self.myencounter = 14
            global.flag[502] += 1
            self.newme = instance_create(self.x, self.y, obj_testoverworldenemy)
            self.newme.sprite_index = spr_ponman_touched
            self.newme.touchsprite = 555
            self.newme.slidesprite = 555
            self.newme.image_index = 5
            self.newme.image_speed = 0
            with (self.newme)
            {
                event_user(0)
                scr_depth()
            }
            global.encounterno = self.myencounter
            with (obj_ponman_appear)
                self.fadecon = 1
            instance_destroy()
        }
    }
    if (global.interact != 0)
    {
        self.stopped = 1
        self.remspeed = self.speed
        self.speed = 0
        self.image_speed = 0
    }
}
if (self.fadecon == 1)
{
    if instance_exists(obj_battlecontroller)
        instance_destroy()
}
self.eyex = lengthdir_x(self.eye_radius, self.eye_angle)
self.eyey = lengthdir_y(self.eye_radius, self.eye_angle)
