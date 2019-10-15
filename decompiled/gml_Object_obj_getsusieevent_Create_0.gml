self.rcon = 0
if (global.plot >= 38)
{
    self.doormarker = scr_dark_marker(400, 40, spr_drdoor)
    self.doormarker.depth = 600000
    self.doormarker.image_index = 1
    self.block = instance_create(400, 120, obj_soliddark)
    self.block = instance_create(480, 120, obj_soliddark)
    self.door = instance_create(440, 120, obj_doorA)
    self.door.image_yscale = 2
    self.door.image_yscale = 2
    instance_create(520, 260, obj_npc_sign)
    self.visible = 0
    if (global.plot == 38)
        self.rcon = 1
    if (global.plot < 40)
    {
        self.hathy = instance_create(250, 240, obj_chaseenemy)
        self.hathy.radius = 30
    }
}
else
{
    self.doormarker = scr_dark_marker(400, 40, spr_drdoor)
    self.doormarker.depth = 600000
    self.block = instance_create(400, 120, obj_soliddark)
    self.block.image_xscale = 3
}
self.con = 1
if (global.plot >= 37)
{
    self.visible = 0
    self.con = -1
}
self.walkcon = 0
self.image_speed = 0
