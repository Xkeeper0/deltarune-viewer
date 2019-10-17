self.con = 1
self.npc = instance_create(self.x, self.y, obj_npc_room)
if ((global.plot >= 80) || (global.flag[238] == 1))
    self.con = 99
else
{
    self.s = scr_dark_marker((self.x + 20), (self.y + 60), spr_susied_dark)
    with (self.s)
        scr_depth()
    self.l = scr_dark_marker((self.x + 60), (self.y + 80), spr_lancer_dt)
    with (self.l)
        scr_depth()
}
