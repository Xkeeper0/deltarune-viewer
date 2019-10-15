self.con = 0
if (global.plot >= 175)
{
    self.checkernpc = instance_create(self.x, self.y, obj_npc_room_animated)
    instance_destroy()
}
else
    self.con = 1
