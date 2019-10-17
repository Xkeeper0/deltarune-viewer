self.qualify = 0
if (self.type == 0)
{
    if ((obj_mainchara.y >= (self.y + 200)) && (self.last_touched != 1))
    {
        self.qualify = 1
        self.last_touched = 1
    }
    if ((obj_mainchara.y <= (self.y + 200)) && (self.last_touched != 0))
    {
        self.qualify = 1
        self.last_touched = 0
    }
}
if ((self.type == 1) && (self.last_touched != -1))
{
    if ((obj_mainchara.x >= (self.x + 200)) && (self.last_touched != 3))
    {
        self.qualify = 1
        self.last_touched = 3
    }
    if ((obj_mainchara.x <= (self.x + 200)) && (self.last_touched != 2))
    {
        self.qualify = 1
        self.last_touched = 2
    }
}
if (self.qualify == 1)
{
    with (self.object_index)
    {
        if (self.last_touched == -1)
            self.last_touched = 4
    }
    if (obj_darkponman_ow.max_battlealpha < 1.9)
    {
        snd_play(snd_wing)
        with (obj_darkponman_ow)
        {
            self.max_battlealpha += 0.12
            if (self.max_battlealpha > 1.9)
                self.max_battlealpha = 1.9
        }
    }
}
