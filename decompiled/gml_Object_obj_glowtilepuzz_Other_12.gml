self.funbuffer = 0
snd_play(snd_noise)
with (obj_glowtile)
{
    self.active = 0
    self.stepped = 0
    self.stepbuffer = -1
    self.sprite_index = spr_glowtile_off
}
if (self.wonamt < self.wonmax)
{
    if (self.wonamt == 0)
    {
        self.choice1 = 2
        self.choice2 = 2
        self.funtotal = 1
    }
    if (self.wonamt == 1)
    {
        self.choice1 = 0
        self.choice2 = 1
        self.funtotal = 2
    }
    if (self.wonamt >= 2)
    {
        self.choice1 = 1
        self.choice2 = 2
        self.funtotal = 2
    }
    self.choice3 = self.choice1
    if (self.room == room_field_puzzle2)
    {
        if (self.wonamt == 0)
        {
            self.choice1 = 3
            self.choice2 = 3
            self.choice3 = 3
            self.funtotal = 1
        }
        if (self.wonamt == 1)
        {
            self.choice1 = 2
            self.choice2 = 2
            self.choice3 = 1
            self.funtotal = 2
        }
        if (self.wonamt == 2)
        {
            self.choice1 = 2
            self.choice2 = 3
            self.choice3 = 4
            self.funtotal = 3
        }
        if (self.wonamt >= 3)
        {
            self.choice1 = 1
            self.choice2 = 0
            self.choice3 = 4
            self.funtotal = 3
        }
    }
    with (self.tileid[self.choice1])
    {
        self.active = 1
        self.sprite_index = spr_glowtile_step
    }
    with (self.tileid[self.choice2])
    {
        self.active = 1
        self.sprite_index = spr_glowtile_step
    }
    with (self.tileid[self.choice3])
    {
        self.active = 1
        self.sprite_index = spr_glowtile_step
    }
}
