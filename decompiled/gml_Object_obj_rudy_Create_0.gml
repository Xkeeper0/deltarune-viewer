self.con = 0
if (global.flag[255] == 0)
{
    global.interact = 1
    self.con = 1
    self.n = scr_marker(118, 88, spr_noelle_rt)
    self.n.depth = 100000
    self.sprite_index = spr_rudy_l
}
else
{
    instance_create(self.x, self.y, obj_npc_room)
    instance_destroy()
}
self.interact = 0
self.myinteract = 0
self.talked = 0
