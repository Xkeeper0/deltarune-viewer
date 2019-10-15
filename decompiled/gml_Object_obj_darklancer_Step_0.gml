if (self.con == 0)
{
    if (self.room == room_dark2)
    {
        if (self.x < (__view_get(e__VW.XView, 0) + 630))
        {
            self.vspeed = -8
            self.image_speed = 0.2
            self.con = 1
            if (global.plot < 12)
                global.plot = 12
        }
    }
    if (self.room == room_dark3)
    {
        if (self.x < (__view_get(e__VW.XView, 0) + 610))
        {
            self.hspeed = 8
            self.image_speed = 0.2
            self.con = 1
            if (global.plot < 13)
                global.plot = 13
        }
    }
}
