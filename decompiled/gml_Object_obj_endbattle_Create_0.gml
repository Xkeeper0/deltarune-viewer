self.alarm[0] = 15
self.con = 0
with (obj_battleback)
    self.destroy = 1
self.count = 0
global.tension = 0
if ((global.specialbattle == 0) || (global.specialbattle == 3))
{
    self.c[0] = scr_dark_marker(global.heromakex[0], global.heromakey[0], spr_krisr_dark)
    if instance_exists(global.cinstance[0])
    {
        self.count += 1
        self.c[1] = scr_dark_marker(global.heromakex[1], global.heromakey[1], global.cinstance[0].rsprite)
    }
    if instance_exists(global.cinstance[1])
    {
        self.count += 1
        self.c[2] = scr_dark_marker(global.heromakex[2], global.heromakey[2], global.cinstance[1].rsprite)
    }
    for (self.i = 0; self.i < (self.count + 1); self.i += 1)
    {
        if (self.i == 0)
        {
            self.c[self.i].direction = point_direction(self.c[self.i].x, self.c[self.i].y, obj_mainchara.x, obj_mainchara.y)
            self.c[self.i].speed = (point_distance(self.c[self.i].x, self.c[self.i].y, obj_mainchara.x, obj_mainchara.y) / 10)
            self.c[self.i].depth = (200 - (self.i * 20))
        }
        if ((self.i == 1) || (self.i == 2))
        {
            self.c[self.i].direction = point_direction(self.c[self.i].x, self.c[self.i].y, global.cinstance[(self.i - 1)].x, global.cinstance[(self.i - 1)].y)
            self.c[self.i].speed = (point_distance(self.c[self.i].x, self.c[self.i].y, global.cinstance[(self.i - 1)].x, global.cinstance[(self.i - 1)].y) / 10)
            self.c[self.i].depth = (200 - (self.i * 20))
        }
    }
    self.alarm[0] = 10
}
if (global.flag[9] == 1)
    snd_volume(global.batmusic[1], 0, self.alarm[0])
