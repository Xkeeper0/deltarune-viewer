if (self.myinteract == 3)
{
    if (instance_exists(self.mydialoguer) == 0)
    {
        if (self.egcon == 1)
            self.egcon = 2
        if (self.egcon == 2)
        {
            self.egtimer += 1
            self.sprite_index = spr_tem_eggput
            self.image_index = (self.egtimer / 10)
            if (self.egtimer >= 60)
            {
                self.sprite_index = spr_tem_sit
                self.egg = scr_marker((self.x + 29), (self.y + 3), spr_egg)
                self.egg.depth = self.depth
                self.egcon = 3
            }
        }
        if ((self.egcon == 3) || (self.egcon == 0))
        {
            global.interact = 0
            self.myinteract = 0
            with (obj_mainchara)
                self.onebuffer = 5
        }
    }
}
if (self.egcon != 2)
{
    if (self.myinteract == 0)
    {
        self.facing = self.dfacing
        self.image_speed = 0
    }
    scr_npcdir()
}
