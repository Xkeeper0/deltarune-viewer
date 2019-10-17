self.con = 1
self.image_speed = 0
self.image_index = 0
self.image_xscale = 2
self.image_yscale = 2
self.treestump = scr_dark_marker(1120, 752, spr_donation_hole_and_tree)
with (self.treestump)
    self.depth = 950000
if (global.plot >= 70)
{
    self.con = 999
    instance_destroy()
}
else
    self.s = scr_dark_marker((self.x + 80), (self.y - 16), spr_susier_dark)
