self.con = 0
if (global.plot < 11)
{
    scr_losechar()
    with(obj_caterpillarchara)
    {
        instance_destroy()
    }
    self.con = 1
    global.interact = 1
    with(obj_mainchara)
    {
        self.visible = 0
    }
    self.k = scr_dark_marker(obj_mainchara.x, obj_mainchara.y, spr_kris_fell)
    self.waketimer = -50
}
else
    instance_destroy()
