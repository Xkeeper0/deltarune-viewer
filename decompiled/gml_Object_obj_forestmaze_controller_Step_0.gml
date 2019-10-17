if (self.lancercon == 1)
{
    if (obj_mainchara.y <= 480)
    {
        self.vspeed = -10
        self.lancercon = 2
        if (self.susie_side >= 0)
        {
            with (self.susie)
            {
                self.vspeed = -10
                self.sprite_index = spr_susieu_dark
                self.image_speed = 0.2
            }
        }
    }
}
if (self.battlemoder == 1)
{
    if (self.room == room_forest_maze1)
    {
        if (obj_mainchara.y <= 480)
            obj_mainchara.battlemode = 1
    }
    if (self.room == room_forest_maze2)
    {
        if (obj_mainchara.y <= 640)
            obj_mainchara.battlemode = 1
    }
}
if (self.gen == 1)
{
    with (obj_scissordancer)
    {
        if (self.x <= -100)
            self.x += 740
    }
}
if (self.gen == 2)
{
    if ((obj_mainchara.y <= 60) || (obj_mainchara.y >= 720))
    {
        self.battlemode = 0
        with (obj_overworldbulletparent)
            instance_destroy()
    }
}
