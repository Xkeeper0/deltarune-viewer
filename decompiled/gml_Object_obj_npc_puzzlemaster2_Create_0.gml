self.myinteract = 0
self.talked = 0
self.image_speed = 0
self.image_xscale = 2
self.image_yscale = 2
self.con = 0
scr_depth()
self.image_speed = 0
self.type = 0
self.siner = 0
self.active = 0
self.emotion = 0
self.beanie[0] = 0
self.beanie[1] = 0
self.beanie[2] = 0
if (self.x < 350)
{
    self.beanie[1] = 0
    self.beanie[0] = 1
    self.type = 1
}
if (self.x < 250)
{
    self.beanie[0] = 1
    self.beanie[2] = 1
    self.type = 2
}
if (self.x < 150)
{
    self.beanie[0] = 1
    self.beanie[1] = 1
    self.beanie[2] = 1
    self.type = 3
    if (self.room == room_field_puzzletutorial)
    {
        self.hole = scr_dark_marker(270, 126, spr_donation_hole_and_tree)
        self.hole.image_index = 1
        self.hole.depth = 900000
    }
}
