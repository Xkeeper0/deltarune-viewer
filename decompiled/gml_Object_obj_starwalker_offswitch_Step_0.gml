if (self.loc_check == 0)
{
    self.loc_check = 1
    if (self.room == room_forest_starwalker)
    {
        if (obj_mainchara.x >= (self.room_width / 2))
            self.x = 240
    }
}
if (self.myinteract == 3)
{
    self.myinteract = 0
    with(obj_mainchara)
    {
        self.onebuffer = 5
    }
}
if (self.bellcon == 1)
{
    self.belltimer = (self.belltimer + 1)
    if (self.belltimer >= 30)
    {
        self.belltimer = 0
        self.image_speed = 0
        self.bellcon = 0
        self.image_index = 0
    }
}
