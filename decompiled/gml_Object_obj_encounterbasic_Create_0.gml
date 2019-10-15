global.interact = 2
if (global.flag[9] == 1)
    snd_volume(global.currentsong[1], 0, 20)
scr_encountersetup(global.encounterno)
with(obj_mainchara)
{
    self.visible = 0
}
with(global.cinstance[0])
{
    self.visible = 0
}
with(global.cinstance[1])
{
    self.visible = 0
}
self.count = 0
self.c[0] = scr_dark_marker(obj_mainchara.x, obj_mainchara.y, spr_krisr_dark)
if instance_exists(global.cinstance[0])
{
    self.count = (self.count + 1)
    self.c[1] = scr_dark_marker(global.cinstance[0].x, global.cinstance[0].y, global.cinstance[0].rsprite)
    if (global.cinstance[0].rsprite == spr_susier_dark)
        self.c[1].sprite_index = spr_susier_wall
}
if instance_exists(global.cinstance[1])
{
    self.count = (self.count + 1)
    self.c[2] = scr_dark_marker(global.cinstance[1].x, global.cinstance[1].y, global.cinstance[1].rsprite)
    if (global.cinstance[1].rsprite == spr_susier_dark)
        self.c[2].sprite_index = spr_susier_wall
}
self.i = 0
while(true)
{
    if (self.i < (self.count + 1))
    {
        self.c[self.i].direction = point_direction(self.c[self.i].x, self.c[self.i].y, global.heromakex[self.i], global.heromakey[self.i])
        self.c[self.i].speed = (point_distance(self.c[self.i].x, self.c[self.i].y, global.heromakex[self.i], global.heromakey[self.i]) / 10)
        self.c[self.i].depth = (200 - (self.i * 20))
        self.i = (self.i + 1)
        continue
    }
    break
}
self.fightcon = 1
self.counttimer = 0
