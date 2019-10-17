scr_depth()
if (self.movecourse == 1)
{
    if (self.movedir == 1)
        self.x += 8
    if (self.movedir == 0)
        self.y += 8
    if (self.movedir == 2)
        self.y -= 8
    if (self.movedir == 3)
        self.x -= 8
    self.sprite_index = spr_npc_block
    self.movetimer += 1
    if (self.movetimer >= 5)
    {
        self.movetimer = 0
        global.interact = 0
        self.movecourse = 0
    }
}
if (self.myinteract == 3)
{
    if (instance_exists(self.mydialoguer) == 0)
    {
        global.interact = 0
        self.myinteract = 0
        with (obj_mainchara)
            self.onebuffer = 5
    }
}
