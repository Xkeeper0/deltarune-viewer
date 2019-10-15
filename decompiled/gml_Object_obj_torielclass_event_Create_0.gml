global.facing = 0
self.obj[0] = scr_marker(126, 63, spr_torieldesk)
self.obj[1] = scr_marker(107, 116, spr_smalldesk)
self.obj[2] = scr_marker(158, 116, spr_smalldesk)
self.obj[3] = scr_marker(208, 116, spr_smalldesk)
self.obj[4] = scr_marker(107, 145, spr_smalldesk)
self.obj[5] = scr_marker(158, 145, spr_smalldesk)
self.obj[6] = scr_marker(208, 145, spr_smalldesk)
self.obj[7] = scr_marker(49, 179, spr_toyblock)
self.obj[8] = scr_marker(261, 183, spr_godthrone)
self.i = 0
while(true)
{
    if (self.i < 9)
    {
        with(self.obj[self.i])
        {
            scr_depth()
        }
        self.i = (self.i + 1)
        continue
    }
    break
}
self.sunset = scr_marker(0, 0, spr_torielclass_sunsetoverlay)
with(self.sunset)
{
    self.image_alpha = 0.4
    self.depth = 2000
}
