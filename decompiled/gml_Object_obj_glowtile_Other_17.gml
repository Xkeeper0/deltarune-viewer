if (self.active == 1)
{
    if (self.stepped == 0)
    {
        with(obj_glowtilepuzz)
        {
            self.stepnoise = 1
        }
        self.sprite_index = spr_glowtile_on
    }
    self.stepped = 1
    self.stepbuffer = 3
}
