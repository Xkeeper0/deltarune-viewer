self.image_xscale = 2
self.image_yscale = 2
self.roomno = global.flag[291]
self.sidechoice = -1
self.lancer_side = -1
self.susie_side = -1
self.lancercon = 0
self.proper_choice = 0
self.battlemoder = 0
self.gencon = 0
self.gen = 0
self.gentimer = 0
if (global.plot < 90)
    global.plot = 90
if (self.roomno == 0)
{
    self.lancer_side = 1
    self.proper_choice = 0
}
if (self.roomno == 1)
{
    self.battlemoder = 1
    self.gen = 1
    for (self.i = 0; self.i < 4; self.i += 1)
    {
        self.scizz = instance_create((80 + (self.i * 180)), 300, obj_scissordancer)
        self.scizz.hspeed = -8
        self.scizz.vspeed = 0
    }
    self.lancer_side = 0
    self.proper_choice = 1
}
if (self.roomno == 2)
{
    self.lancer_side = 1
    self.proper_choice = 0
    self.chaseenemy = instance_create((self.x + 10), (self.y - 80), obj_chaseenemy)
}
if (self.roomno == 3)
{
    self.holesolid = instance_create(280, 280, obj_soliddark)
    with (self.holesolid)
    {
        self.image_xscale = 2
        self.image_yscale = 2
    }
    self.hole = scr_dark_marker(280, 280, spr_darkponman_hole)
    with (self.hole)
    {
        self.image_xscale = 2
        self.image_yscale = 2
        self.depth = 950000
    }
    self.battlemoder = 1
    self.lancer_side = 0
    self.proper_choice = 1
    self.darkponman = instance_create(((self.room_width / 2) - 28), 268, obj_darkponman_ow)
    with (obj_darkponman_ow)
    {
        self.boss = 0
        self.bmax = 8
    }
}
if (self.roomno == 5)
{
    self.battlemoder = 1
    self.proper_choice = 3
    self.lancer_side = 2
    self.susie_side = 4
    self.gen = 1
    for (self.i = 0; self.i < 5; self.i += 1)
    {
        self.scizz = instance_create((60 + (self.i * 140)), 300, obj_scissordancer)
        self.scizz.hspeed = -8
        self.scizz.vspeed = 0
        self.scizz = instance_create((100 + (self.i * 140)), 460, obj_scissordancer)
        self.scizz.hspeed = -8
        self.scizz.vspeed = 0
    }
}
if (self.roomno == 6)
{
    self.proper_choice = 4
    self.lancer_side = 3
    self.susie_side = 2
    self.chaseenemy = instance_create((self.x + 10), self.y, obj_chaseenemy)
}
if (self.roomno == 7)
{
    self.gen = 2
    self.proper_choice = 2
    self.lancer_side = 3
    self.susie_side = 4
    self.scizz = instance_create(60, 600, obj_starwalker_overworld)
    self.scizz.mazemode = 1
    self.scizz = instance_create(580, 600, obj_starwalker_overworld)
    self.scizz.mazemode = 1
}
if (self.roomno == 8)
{
    self.holesolid = instance_create(180, 380, obj_soliddark)
    with (self.holesolid)
    {
        self.image_xscale = 2
        self.image_yscale = 2
    }
    self.hole = scr_dark_marker(180, 380, spr_darkponman_hole)
    with (self.hole)
    {
        self.image_xscale = 2
        self.image_yscale = 2
        self.depth = 950000
    }
    self.holesolid = instance_create(380, 380, obj_soliddark)
    with (self.holesolid)
    {
        self.image_xscale = 2
        self.image_yscale = 2
    }
    self.hole = scr_dark_marker(380, 380, spr_darkponman_hole)
    with (self.hole)
    {
        self.image_xscale = 2
        self.image_yscale = 2
        self.depth = 950000
    }
    self.battlemoder = 1
    self.proper_choice = 3
    self.lancer_side = 2
    self.susie_side = 4
    self.darkponman = instance_create(((self.room_width / 2) - 126), 368, obj_darkponman_ow)
    with (obj_darkponman_ow)
    {
        self.boss = 0
        self.bmax = 8
        self.rot = 180
    }
    self.darkponman = instance_create(((self.room_width / 2) + 72), 368, obj_darkponman_ow)
    with (self.darkponman)
    {
        self.boss = 0
        self.bmax = 8
        self.rotspeed = -4
        self.rot = 0
    }
}
if (self.lancer_side >= 0)
{
    self.lancercon = 1
    self.y = 260
    self.sprite_index = spr_lancer_dt
    if (self.lancer_side == 0)
        self.x = 160
    if (self.lancer_side == 1)
        self.x = 400
    if (self.lancer_side == 2)
        self.x = 120
    if (self.lancer_side == 3)
        self.x = 280
    if (self.lancer_side == 4)
        self.x = 440
}
if (self.susie_side >= 0)
{
    self.lancercon = 1
    self.susie = scr_dark_marker(160, 245, spr_susied_dark)
    self.susie.depth = self.depth
    if (self.susie_side == 0)
        self.susie.x = 160
    if (self.susie_side == 1)
        self.susie.x = 400
    if (self.susie_side == 2)
        self.susie.x = 120
    if (self.susie_side == 3)
        self.susie.x = 280
    if (self.susie_side == 4)
        self.susie.x = 440
}
