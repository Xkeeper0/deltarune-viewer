self.door = scr_marker(236, 26, spr_classdoor)
with(self.door)
{
    scr_depth()
}
self.con = 0
global.facing = 0
if (global.plot < 2)
{
    global.facing = 0
    self.con = 1
    with(obj_mainchara)
    {
        self.x = 240
        self.y = 30
        scr_depth()
    }
    self.alphys = scr_marker(50, 50, spr_alphysd)
    with(self.alphys)
    {
        scr_depth()
    }
    global.interact = 1
}
if (global.plot >= 3)
{
    self.doorb = instance_create(242, 48, obj_doorB)
    with(self.door)
    {
        self.depth = 900000
    }
    with(obj_npc_facing)
    {
        instance_destroy()
    }
    with(obj_tem_school)
    {
        instance_destroy()
    }
    self.sunset = scr_marker(3, 0, spr_torielclass_sunsetoverlay)
    with(self.sunset)
    {
        self.image_alpha = 0.4
        self.depth = 2000
    }
    instance_destroy()
}
