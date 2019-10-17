self.siner = 0
self.con = 0
self.total = 0
if (global.flag[201] == 0)
{
    self.eye[0] = 0
    self.eye[1] = 0
    self.eye[2] = 0
    for (self.i = 0; self.i < 3; self.i += 1)
    {
        self.shine[self.i] = scr_dark_marker(((self.x + 30) + (self.i * 110)), (self.y + 110), spr_shine)
        self.shine[self.i].image_speed = 0.1
        self.shine[self.i].depth = 800000
    }
    self.block = instance_create(960, 320, obj_soliddark)
    self.block.image_yscale = 2
}
else
{
    self.con = 44
    self.eye[0] = 1
    self.eye[1] = 1
    self.eye[2] = 1
    for (self.i = 0; self.i < 3; self.i += 1)
    {
        self.glass = scr_dark_marker((960 + (self.i * 40)), 320, spr_magicalglass)
        self.glass.depth = 950000
        self.glass = scr_dark_marker((960 + (self.i * 40)), 360, spr_magicalglass)
        self.glass.depth = 950000
    }
    with (obj_darkeyepuzzle_switch)
        instance_destroy()
}
